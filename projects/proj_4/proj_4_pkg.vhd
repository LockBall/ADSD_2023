library ieee;
use ieee.std_logic_1164.all;

package proj_4_pkg is

	component sync_stage is
		generic (
			input_width: positive := 16
		);
		port (
			clk_1:	 in	 std_logic;
			clk_2:	 in	 std_logic;
			
			reset:	 in	 std_logic;
		
			bin_in:	 in	 std_logic_vector(input_width - 1 downto 0);
			bin_out:	 out	 std_logic_vector(input_width - 1 downto 0)
		);
	end component sync_stage;
	
	
	component producer is
		generic(
			DATA_WIDTH : natural := 8;
			ADDR_WIDTH : natural := 6 
		);
		port(
			-- Clocks
			clock_10:	in  std_logic; -- 10 Mhz
			clock_1:		out std_logic; -- 1 Mhz
			
			reset:		in	std_logic;

			-- RAM interactions
			write_enable:	out std_logic;
			data: out std_logic_vector(DATA_WIDTH-1 downto 0);

			-- bin to gray interactions
			head: out natural range 0 to 2**ADDR_WIDTH - 1;
			tail: in  natural range 0 to 2**ADDR_WIDTH - 1
		);
	end component producer;
	
	
	component TDPDC_RAM is
		generic(
        data_width : natural := 16;
        addr_width : natural := 4
		);
		port(
        clk_a   : in std_logic;
        clk_b   : in std_logic;
        
        addr_a  : in natural range 0 to 2**ADDR_WIDTH - 1;  -- natural range 0 to 2**ADDR_WIDTH - 1 := 0 ;
        addr_b  : in natural range 0 to 2**ADDR_WIDTH - 1;  -- natural range 0 to 2**ADDR_WIDTH - 1;
        
        data_a  : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        data_b  : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        
        we_a    : in std_logic := '0';
        we_b    : in std_logic := '0';
        
        q_a     : out std_logic_vector((DATA_WIDTH - 1) downto 0);
        q_b     : out std_logic_vector((DATA_WIDTH - 1) downto 0)
		);
	end component TDPDC_RAM;
	
	
end package proj_4_pkg;