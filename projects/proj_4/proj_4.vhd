library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

use work.proj_4_pkg.all;
use work.seven_seg_driver_pkg.all;

entity proj_4 is
	generic (
		address_width: positive := 16
	);
	port(
    	clock_50	: in  std_logic ; -- pin_P11   MAX10_CLK1_50
		clock_10	: in std_logic ; 	--PLL, linked to ADC_CLK_10 pin_n5
		reset		: in  std_logic := '0';  -- pin_B8 active low
		
		digits	: out seven_seg_config_arr(2 downto 0)
	);

end entity proj_4;

architecture qq of proj_4 is


	-- clock domain A stuff (1 MHz)
	signal head_ptr_a, tail_ptr_a: natural range 0 to 2**address_width - 1;
	signal head_ptr_vect_a, tail_ptr_vect_a: std_logic_vector(address_width - 1 downto 0);
	signal clock_1: std_logic;
	signal write_enable: std_logic;
	signal data_a, data_b: std_logic_vector(11 downto 0);
	
	-- clock domain B stuff (50 MHz)
	signal head_ptr_b, tail_ptr_b: natural range 0 to 2**address_width - 1;
	signal head_ptr_vect_b, tail_ptr_vect_b: std_logic_vector(address_width - 1 downto 0);
	
	-- clock pll 10 MHz
	signal pll_clock_10 : std_logic;

	function get_digits_output (
			data_in: in std_logic_vector(11 downto 0)
		) return seven_seg_config_arr
	is
		variable ret: seven_seg_config_arr(digits'range);
		variable slice: std_logic_vector(3 downto 0);
	begin
		for i in ret'range loop
			slice := data_in(4*i + 3 downto 4*i);
			ret(i) := get_hex_digit(to_integer(unsigned(slice)));
		end loop;
		return ret;
	end function get_digits_output;
	
begin

	clock_10_inst : entity work.clock_10 PORT MAP (
		inclk0	=> clock_10,
		c0	 		=> pll_clock_10
	);


	digits <= get_digits_output(data_b);
	

	-- CLOCK DOMAIN A STUFF
	adc_control: producer
		generic map (
			DATA_WIDTH => 12,
			ADDR_WIDTH => address_width
		)
		port map (
			-- Clocks
			clock_10 => pll_clock_10, -- 10 Mhz
			clock_1  => clock_1, -- 1 Mhz
			
			reset =>		reset,

			-- RAM interactions
			write_enable		=> write_enable,-- write enable
			data	=> data_a,

			-- bin to gray interactions
			head	=> head_ptr_a,
			tail	=> tail_ptr_a
		);
		
		
		-- CLOCK DOMAIN B STUFF
		segs7_FSM: consumer
		generic map (
			DATA_WIDTH => 12,
			ADDR_WIDTH => address_width
		)
		port map (
			-- Clocks
			clock_50 => clock_50, -- 10 Mhz
			reset =>		reset,

			-- bin to gray interactions
			head	=> head_ptr_b,
			tail	=> tail_ptr_b
		);

	-- head ptr must go from 1 MHz clock to 50 MHz clock
	-- that is, head_ptr_a --> head_ptr_b
	head_ptr_vect_a <= std_logic_vector(to_unsigned(head_ptr_a, head_ptr_vect_a'length));
	head_ptr_b <= to_integer(unsigned(head_ptr_vect_b));
	
	a_to_b_sync: sync_stage
		generic map (
			input_width =>	address_width
		)
		port map (
			clk_1 =>		clock_1,
			clk_2 =>		clock_50,
			reset =>		reset,
			bin_in =>	head_ptr_vect_a,
			bin_out =>	head_ptr_vect_b
		);


	-- tail ptr must go from 50 MHz clock to 1 MHz clock
	-- that is, tail_ptr_a --> tail_ptr_b

	tail_ptr_vect_b <= std_logic_vector(to_unsigned(tail_ptr_b, tail_ptr_vect_b'length));
	tail_ptr_a		 <= to_integer(unsigned(tail_ptr_vect_a));
	
	b_to_a_sync: sync_stage
		generic map(
			input_width =>	address_width
		)
		port map(
			clk_1 =>		clock_50,
			clk_2 =>		clock_1,
			reset =>		reset,
			bin_in	=>	tail_ptr_vect_b,
			bin_out	=>	tail_ptr_vect_a
		);

	-- COMMON
	
	RAM: TDPDC_RAM
		generic map(
			data_width	=> 12,
			addr_width	=> address_width
		)
		port map(
			clk_a		=> clock_1,
			clk_b 	=> clock_50,
			addr_a 	=> head_ptr_a,
			addr_b 	=> tail_ptr_b,
			data_a	=> data_a,
			data_b	=> (others => '0'),
			we_a		=> write_enable,
			we_b		=> '0',
			q_a		=> open,
			q_b		=> data_b
		);
	

end architecture qq;

