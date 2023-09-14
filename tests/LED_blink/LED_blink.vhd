-- 23 sep 2023
library ieee;
use ieee.std_logic_1164.all;

entity LED_blink is
	port(
    	clock   : in  std_logic ;      -- P11
    	led_out : buffer std_logic ;   -- A8
		reset   : in  std_logic := '1' -- active low
	);
end entity LED_blink;

--  6250000		1/8 Hz
-- 12500000		1/4 Hz
-- 25000000		1/2 Hz
-- 50000000		1   Hz

architecture rtl of LED_blink is
    signal count     : natural range 0 to 50000000 ; -- current configuration is 1/4 Hz
    signal led_state : std_logic ;  -- must be initialized to have toggleable value
  begin
  
	process(clock, reset, led_state) is
	  begin

	 	if reset      = '0' then
			count     <=  0  ;
			led_state <= '0' ;
		elsif rising_edge(clock) then
			
			if count = (50000000 - 1) then
        	  	count     <= 0 ;
				led_state <= NOT led_state ;
			else
				count <= count + 1 ;
			end if;

    	end if; -- rising_edge(clock)
		
		led_out <= led_state ;

	end process;
	
end architecture rtl;
