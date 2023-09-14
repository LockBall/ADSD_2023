library ieee;
use ieee.std_logic_1164.all;

entity LED_blink_TB is
end entity;

architecture sim of LED_blink_TB is

	signal clock_tb   : std_logic := '0' ; -- must be initialized to have toggleable value
	signal reset_tb   : std_logic ;
	signal led_tb : std_logic ;

  begin

	UUT : entity work.LED_blink port map(  -- connect main code to testbench
    	clock => clock_tb,
		reset => reset_tb,
		led_out   => led_tb
	);    
	 
		reset_tb <= '1', '0' after 25 ns, '1' after 35 ns ; -- low resets counter, high allows counts
	 
      clock_tb <= not clock_tb after 10 ns;
	-- 50 Mhz = 50,000,000 cycles / sec
   -- 50 cycles / us (1000 ns)
	-- 1 cycle / 20 ns
	-- 2 states / cycle ∴ 10 ns
end architecture sim;