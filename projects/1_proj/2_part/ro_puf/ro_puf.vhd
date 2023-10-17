-- ro_puf.vhd

--library ieee;
--library work;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all; -- https://stackoverflow.com/questions/37330329/vhdl-cant-determine-definition-of-operator
--use work.ro_ctr_ary.all;

--package ro_ctr_ary is 
--	type t_ro_ctr_ary is array (natural range <>) of integer range 0 to 64;
--end package;
------********************************************************

library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- https://stackoverflow.com/questions/37330329/vhdl-cant-determine-definition-of-operator
use IEEE.numeric_std.all;
--use work.ro_ctr_ary.all;

entity ro_puf is

	generic( -- needs to be first
		constant ro_num    : positive range 3 to 37 := 15; -- how many RO, use ODD # here to get EVEN # of ring osc
		constant ro_length : positive range 2 to 66 := 13; -- how long ea ro, use ODD # here to get EVEN # of inverters
		constant var_delay : time                   := 0.002 ns
	);

	port(
		enable         : in  	std_logic;
		--ro_ctr_ary_out : out 	t_ro_ctr_ary(0 to ro_num);	
		--ro_outs        : buffer std_logic_vector(0 to ro_num);
		reset		      : in	   std_logic;
		pulse_in	      : in		std_logic;
		challenge	   : in		std_logic_vector(0 to 11);
		--chal_lft_6     : buffer integer range 0 to 32; -- left 6 bits of challenge
		--chal_rit_6     : buffer integer range 0 to 32; -- right 6 bits of challenge
		req_resp_in	   : in		std_logic; -- request response
		response       : out	   std_logic
	);
	
end entity ro_puf;


architecture rtl of ro_puf is

	type t_ro_ctr_ary is array (natural range <>) of integer range 0 to 64; -- https://surf-vhdl.com/vhdl-array/
	signal ro_ctr_ary_sig : t_ro_ctr_ary(0 to ro_num);

	signal chal_lft_val : integer  range 0 to 32;
	signal chal_rit_val : integer  range 0 to 32;
	signal req_resp_sig : std_logic;
	
	signal chal_lft_6   : integer  range 0 to 32 := 0;
	signal chal_rit_6   : integer  range 0 to 32 := 0;
	
	signal ro_outs      : std_logic_vector(0 to ro_num);


  begin
  
	--ro_ctr_ary_out <= ro_ctr_ary_sig ;
	-- https://stackoverflow.com/questions/35102097/vhdl-type-conversion-found-4-possible-definitions
	chal_lft_6 <= to_integer(unsigned(challenge(0 to 5))); -- left 6 bits of challenge
	chal_rit_6 <= to_integer(unsigned(challenge(6 to 11))); -- right 6 bits of challenge
	
	chal_lft_val <= ro_ctr_ary_sig(chal_lft_6); -- value from counter array at challenge left location
	chal_rit_val <= ro_ctr_ary_sig(chal_rit_6); -- value from counter array at challenge right location
	
	req_resp_sig <= req_resp_in;
  
	gen_ro: for i in 0 to ro_num generate -- generate the ring oscillators
		ro_inst: entity work.ring_oscillator
		
			generic map ( -- https://vhdlwhiz.com/constants-generic-map/
				ro_length => ro_length,
				var_delay => i * var_delay
			) 
		
			port map( -- ro => ro_puf
				enable  	  => enable,
				ro_out 	  => ro_outs(i),
				ro_counter => ro_ctr_ary_sig(i), -- ro_counter is a buffer of std_logic_vectors
				reset	     => reset,
				pulse_in   => pulse_in
			);
			
	end generate;
	
	process(req_resp_sig) -- requires 13 mux
	 begin
		if chal_lft_val < chal_rit_val then
			response <= '1';
		 elsif chal_lft_val > chal_rit_val then
			response <= '0';
		 else response <= 'X';
		end if;
	end process;
	

end architecture;