library ieee;
use ieee.std_logic_1164.all;

entity proj_4 is

	port(
    	clock_50	: in  std_logic ; -- pin_P11   MAX10_CLK1_50
		clock_10	: in std_logic ; 	--PLL, linked to ADC_CLK_10 pin_n5
		reset		: in  std_logic := '0'  -- pin_B8 active low
	);

end entity proj_4;

architecture qq of proj_4 is

  begin

end architecture qq;

