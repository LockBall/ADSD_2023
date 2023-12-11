library ieee;
use ieee.std_logic_1164.all;

entity sync_stage is
	generic (
		input_width: positive := 16
	);
	port (
		clk_a:	 in	 std_logic;
		clk_b:	 in	 std_logic;
		
		reset:	 in	 std_logic;
	
		bin_in:	 in	 std_logic_vector(input_width - 1 downto 0);
		bin_out:	 out	 std_logic_vector(input_width - 1 downto 0)
	);
end entity sync_stage;


architecture sync of sync_stage is	
	
	component binary_to_gray is
		generic(
			input_width: positive := 16
		);
		port(
			bin_in	: in  std_logic_vector(input_width - 1 downto 0);
			gray_out	: out std_logic_vector(input_width - 1 downto 0)
		);	
	end component binary_to_gray;
	
	
	component gray_to_binary is
		generic(
			input_width: positive := 16
		);
		port(
			gray_in: in  std_logic_vector(input_width - 1 downto 0);
			bin_out: out std_logic_vector(input_width - 1 downto 0)
		);	
	end component gray_to_binary;

  type datapath_type is array(0 to 5) of std_logic_vector(bin_in'range);
  signal datapath: datapath_type;
	
begin

	datapath(0) <= bin_in;
	bin_out <= datapath(5);


	b2g : binary_to_gray
		generic map(
			input_width	=> input_width
		)
		port map(
			bin_in 		=> datapath(0),
			gray_out 	=> datapath(1)
		);
		
	g2b :	gray_to_binary
		generic map(
			input_width	=> input_width
		)
		port map(
			gray_in		=> datapath(4),
			bin_out 		=> datapath(5)
		);
		
-- ******** 3 stage synch ********
	sync_stage_a: process(clk_a, reset) is
	begin
		if reset = '0' then
			datapath(2) <= (others => '0');
		elsif rising_edge(clk_a) then
			datapath(2) <= datapath(1);
		end if;
	end process sync_stage_a;
		
	sync_stage_b: process(clk_b, reset) is
	begin
		if reset = '0' then
			datapath(3) <= (others => '0');
			datapath(4) <= (others => '0');
		elsif rising_edge(clk_b) then
			datapath(3) <= datapath(2); -- 2 stages here
			datapath(4) <= datapath(3);
		end if;
	end process sync_stage_b;
-- ******** 3 stage synch ********

end architecture sync;
