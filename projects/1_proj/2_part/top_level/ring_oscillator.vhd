-- ring_oscillator.vhd

library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- https://stackoverflow.com/questions/37330329/vhdl-cant-determine-definition-of-operator
use ieee.numeric_std.all;

entity ring_oscillator is

	generic( -- needs to be first -- https://vhdlwhiz.com/using-procedure/
		ro_length : positive := 3;
		var_delay : time := 0.01 ns 
	);-- default values, altered on instantiation by ro_puf
	
	port(
		enable     : in     std_logic;
		ro_out	  : buffer std_logic;
		ro_counter : buffer natural; -- integer
		reset		  : in	  std_logic;
		pulse      : in	  std_logic
	);
	
end entity ring_oscillator;


architecture rtl of ring_oscillator is

	signal NAND_out : std_logic;
   signal inv : std_logic_vector(0 to ro_length) := (others => '0'); -- all items set to 0

	attribute keep : boolean;
	attribute keep of inv : signal is true;

	
	begin -- after is only used by simulation
	
		assert (NOT ((ro_length mod 2) = 0) )
			report "ro_length must be an odd number"
			severity failure;
	
		NAND_out <= pulse NAND inv(ro_length) after 0.01 ns; -- the output of the last inverter is applied as an input
		inv(0)   <= NOT NAND_out after var_delay;

		gen_inv: for i in 1 to ro_length -- make all of the inverters except inv(0) for NAND
		generate -- dont start at 0 cause its for NAND
			inv(i) <= not inv(i-1) after 0.01 ns;
		end generate;
				
		ro_out <= inv(ro_length); -- output is the last inverter
		
		process(reset, enable, ro_out)
		 begin
		 
			if reset = '0' then
				ro_counter <= 0;
			elsif enable = '1' then
				if rising_edge(ro_out) then
					ro_counter <= ro_counter + 1;
				end if;
			end if;
			
		end process;
		
end architecture;