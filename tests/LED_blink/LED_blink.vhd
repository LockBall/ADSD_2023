-- 23 sep 2023
library ieee;
use ieee.std_logic_1164.all;

entity LED_blink is
	port(
    	clock   : in  std_logic ;      -- P11
		reset   : in  std_logic := '1'; -- B8 active low
        
    	led     : out std_logic       -- A8
	);
end entity LED_blink;

--  6250000		1/8 Hz
-- 12500000		1/4 Hz
-- 25000000		1/2 Hz
-- 50000000		1   Hz

architecture rtl of LED_blink is
    signal count     : natural range 0 to 50000000 ; -- current configuration is 1/4 Hz
    signal led_state : std_logic ;  -- must be initialized to have toggleable value
    
    
    component soc_system is
		port (
			clk_clk           : in  std_logic                    := 'X';             -- clk
			reset_reset_n     : in  std_logic                    := 'X';             -- reset_n
			button_pio_export : in  std_logic                    := 'X';             -- export
			switch_pio_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			led_pio_export    : out std_logic_vector(7 downto 0)                     -- export
		);
	end component soc_system;
    
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
		
		led <= led_state ;

	end process;
	
end architecture rtl;