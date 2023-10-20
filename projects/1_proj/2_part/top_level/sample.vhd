library ieee;
use ieee.std_logic_1164.all;

entity sample is:
port ( sw  : in std_logic_vector(9 downto 0);
		 ledr : out std_logic_vector(9 downto 0)
		);
		
end sample;

architecture behavior of sample is
begin 
	ledr <= sw;
end behavior;