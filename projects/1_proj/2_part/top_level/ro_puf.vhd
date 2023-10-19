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
		constant ro_count  : positive range 3 to 37 := 15; -- how many RO, use ODD # here to get EVEN # of ring osc
		constant ro_length : positive range 2 to 66 := 11; -- how long ea ro, use ODD # here to get EVEN # of inverters
		constant var_delay : time                   := 0.050 ns
	);

	port(
	
	   clock     : in std_logic ; -- P11 50 MHZ
		reset     : in std_logic;
		enable    : in std_logic;
		pulse	 : in std_logic;
		chal_lft  : in std_logic_vector(0 to 5);
		chal_rit  : in std_logic_vector(0 to 5);
		--ro_ctr_ary_out : out 	t_ro_ctr_ary(0 to ro_count);	
		--ro_outs        : buffer std_logic_vector(0 to ro_count);


		--chal_lft_6     : buffer integer range 0 to 32; -- left 6 bits of challenge
		--chal_rit_6     : buffer integer range 0 to 32; -- right 6 bits of challenge
		req_resp_in	   : in	std_logic; -- request response
		response       : out	std_logic

	);
	
end entity ro_puf;


architecture rtl of ro_puf is

	type t_ro_ctr_ary is array (natural range <>) of integer ; -- https://surf-vhdl.com/vhdl-array/
	signal ro_ctr_ary_sig : t_ro_ctr_ary(0 to ro_count);

	signal chal_lft_val : integer;--  range 0 to 32;
	signal chal_rit_val : integer;--  range 0 to 32;
	signal chal_lft_6   : integer := 0;--  range 0 to 32 := 0;
	signal chal_rit_6   : integer := 0;--  range 0 to 32 := 0;
	
	signal req_resp_sig : std_logic := '0';
	--signal count	     : natural := 0;
	signal ro_outs      : std_logic_vector(0 to ro_count) := (others => '0');


  begin
  
	assert (NOT ((ro_length mod 2) = 0) )
		report "ro_length must be an odd number"
		severity failure;
  
	--ro_ctr_ary_out <= ro_ctr_ary_sig ;
	-- https://stackoverflow.com/questions/35102097/vhdl-type-conversion-found-4-possible-definitions
	chal_lft_6 <= to_integer(unsigned(chal_lft));
	chal_rit_6 <= to_integer(unsigned(chal_rit));
	
	chal_lft_val <= ro_ctr_ary_sig(chal_lft_6); -- value from counter array at challenge left location
	chal_rit_val <= ro_ctr_ary_sig(chal_rit_6); -- value from counter array at challenge right location
	
	req_resp_sig <= req_resp_in;
  
	ro : for i in 0 to ro_count generate -- generate the ring oscillators
		ro_inst : entity work.ring_oscillator
		
			generic map ( -- https://vhdlwhiz.com/constants-generic-map/
				ro_length => ro_length,
				var_delay => i * var_delay
			) 
		
			port map( -- ro => ro_puf
				enable  	  => enable,
				ro_out 	  => ro_outs(i),
				ro_counter => ro_ctr_ary_sig(i), -- ro_counter is a buffer of std_logic_vectors
				reset	     => reset,
				pulse   => pulse
			);
	end generate;
	
	process(clock, req_resp_in)
	 begin
	 
		if rising_edge(clock) then
		
			if reset = '0' then
				response <= 'X';
			end if;
			
			if req_resp_sig = '1' then
				if chal_lft_val < chal_rit_val then -- compare
					response <= '1';
					
				elsif chal_lft_val > chal_rit_val then
					response <= '0';
				else response <= 'X';
				end if; -- compare
			end if;
		
		end if; --rising_edge(clock)
	end process;
	
end architecture;