-- top_level.vhd
-- 19Oct2023

library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- https://stackoverflow.com/questions/37330329/vhdl-cant-determine-definition-of-operator
use IEEE.numeric_std.all;


entity top_level is

	generic( -- needs to be first
		constant ro_count  : positive range 3 to 37 := 15 -- how many RO, use ODD # here to get EVEN # of ring osc
	);

	port(
		clock     : in     std_logic; -- P11 50 MHZ
		reset_btn    : in     std_logic;
		tl_enable    : buffer std_logic := '0';
		pulse        : buffer std_logic := '0' ;
		req_resp_out : buffer std_logic; -- request response
		done_LED	    : out    std_logic := '0' ;
		response     : buffer    std_logic

	);

end entity top_level;


architecture RTL of top_level is

	type t_resp_ary is array (natural range <>) of std_logic ; -- https://surf-vhdl.com/vhdl-array/
		signal resp_ary : t_resp_ary(0 to 128);

	signal tl_count       : natural := 0 ; --counter for timing of inputs
	signal tl_count_reset : std_logic := '0';
	signal done           : std_logic := '0';
	signal initial_reset  : std_logic := '0';
	signal reset          : std_logic;
	signal resp_cnt       : natural := 0 ;
	signal chal_lft       : std_logic_vector(0 to 5) := "000000" ;
	signal chal_rit       : std_logic_vector(0 to 5) := "000001" ;


  begin
  
  
  	ro_puf : entity work.ro_puf port map ( -- ro_puf => top_level
		clock    => clock,
		reset => reset,
	   enable   => tl_enable,
		pulse => pulse,
		chal_lft => chal_lft,
		chal_rit => chal_rit,
		req_resp_in => req_resp_out,
		response => response
	);
  
  
	process(clock)
	  begin
	  
		if rising_edge(clock) then
		
			if (reset_btn = '0') then
				initial_reset <= '1' ;
				reset <= '0';
			end if;
		
			if (done = '0') AND (initial_reset = '1') then
			
				case tl_count is
					when 1 => -- @ __ ns
						reset <= '1'; -- active low, disable reset
					
					when 3 =>
						tl_enable <= '1'; -- enable count
						pulse <= '1'; -- ro's go fast !
					
					when 8 => -- this number functions as probe_delay
						req_resp_out <= '1'; -- initial challenge is 0 : 1
						
					when 10 =>
						resp_ary(resp_cnt) <= response;
						resp_cnt <= resp_cnt + 1;
					
					when 12 => -- no longer request response, disable coun
						req_resp_out <= '0';
						
					when 13 =>
						pulse <= '0'; -- pulse off
						tl_enable <= '0'; -- count disabled
						reset <= '0';

					when 15 =>
						tl_count_reset <= '1'; -- flag to reset the count
						
						if to_integer(unsigned(chal_lft)) = ro_count - 1 then
							done <= '1';
						elsif to_integer(unsigned(chal_rit)) = ro_count then
							chal_lft <= chal_lft + 1 ;
							chal_rit <= chal_lft + 2 ;
						else
							chal_rit <= chal_rit + 1 ;
						end if;
								
					when others =>
					
				end case;
				
				if tl_count_reset = '1' then
					tl_count <= 0;
					tl_count_reset <= '0';
				else
					tl_count <= tl_count + 1;
				end if;
					
			end if; -- done = '0'
			
			
			if done = '1' then
				done_LED <= '1';
			end if;
			
		end if;	-- rise clock		


	end process; -- clock

end architecture RTL;