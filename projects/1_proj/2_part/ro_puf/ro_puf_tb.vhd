-- ro_puf_tb.vhd

library ieee;
library work;
use ieee.std_logic_1164.all;
--use work.ro_ctr_ary.all;

entity ro_puf_tb is

	generic( -- needs to be first
		constant ro_count: positive range 3 to 37 := 15 -- how many, use ODD # here to get EVEN # of ring osc -- 21
		-- minimum of 3, max of 37
	);

end ro_puf_tb;

architecture test_fixture of ro_puf_tb is

	 signal tb_clock       : std_logic := '0' ; -- must be initialized to have toggleable

    signal tb_enable      : std_logic := '0' ;
	 signal tb_reset       : std_logic := '1' ;
	 signal tb_pulse_in    : std_logic := '0' ;
	 signal tb_challenge_lft   : std_logic_vector(0 to 5) := "000000" ;-- which two ro to compare
	 signal tb_challenge_rit   : std_logic_vector(0 to 5) := "000001" ;-- which two ro to compare
	 --signal tb_chal_lft_6 : integer range 0 to 32 := 0;
	 --signal tb_chal_rit_6 : integer range 0 to 32 := 0;
	 signal tb_response    : std_logic;
	 signal tb_req_resp_in : std_logic;
	 signal tb_count       : integer := 0; --counter for timing of inputs
	 --signal probe_delay    : natural := 10; -- 100 ns
	 signal tb_done : std_logic := '0';
	 signal tb_count_reset : std_logic := '0';


	 
	 --signal tb_ro_outs: std_logic_vector(0 to ro_count); -- outputs
	 --signal tb_ro_ctr_ary_out : t_ro_ctr_ary(0 to ro_count);

begin
    -- connecting testbench signals with ro_puf.vhd
	UUT : entity work.ro_puf port map (
	
		clock          => tb_clock,
		enable  			=> tb_enable,
		--ro_outs			=> tb_ro_outs,
		--ro_ctr_ary_out => tb_ro_ctr_ary_out,
		reset 			=> tb_reset,
		pulse_in			=> tb_pulse_in,
		challenge_lft  => tb_challenge_lft,
		challenge_rit  => tb_challenge_rit,
		--chal_lft_6     => tb_chal_lft_6,
		--chal_rit_6     => tb_chal_rit_6,
		response       => tb_response,
		req_resp_in		=> tb_req_resp_in
	);


		tb_clock <= not tb_clock after 10 ns;
	-- 50 Mhz = 50,000,000 cycles / sec
   -- 50 cycles / us (1000 ns)
	-- 1 cycle / 20 ns
	-- 2 states / cycle ∴ 10 ns !!!
	
	process(tb_clock)
	 begin
	 
		if rising_edge(tb_clock) OR falling_edge(tb_clock) then
			if tb_done = '0' then
			
				case tb_count is
					when 0 => -- @ 10 ns
						tb_reset <= '0';
						
					when 2 => -- @30 ns
						tb_reset <= '1';
					
					when 3 =>
						tb_enable <= '1';
					
					when 4 =>
						tb_pulse_in <= '1';
					
					when 6 =>
						tb_pulse_in <= '0';
						
					when 10 => -- this number functions as probe_delay
						tb_req_resp_in <= '1'; -- initial challenge is 0 : 1
					
					when 12 => -- no longer request response
						tb_req_resp_in <= '0';
						
					when 16 =>
						tb_count_reset <= '1';
						
					--	if tb_challenge_lft = (ro_count - 1) then
					--		tb_done <= '1';
							
				--		else
			--				tb_challenge_lft = tb_challenge_lft + '1';
			
		--				end if;
								
					when others =>
					
				end case;
				
				if tb_count_reset = '1' then
					tb_count <= 0;
					tb_count_reset <= '0';
				else
					tb_count <= tb_count + 1;
				end if;
					
			end if; -- tb_done = '0'
			
		end if;
	 
	end process;
	
		
	-- inputs
	 --tb_reset       <= '1', '0' after 45 ns, '1' after 90 ns ; -- low resets counter, high allows counts
	 --tb_enable      <= '0', '1' after 65 ns ;  -- high allows counts
	 --tb_pulse_in    <= '0', '0' after 20 ns, '1' after 70 ns, '1' after 90 ns, '0' after 100 ns, '0' after 150 ns ;
	 --tb_req_resp_in <= '0', '1' after probe_delay * 1 ns, '0' after (probe_delay + 20) * 1 ns;

	 --tb_challenge_lft <= "000011" ; -- 3
	 --tb_challenge_rit <= "001011"; -- 11
    -- 3 = 000011, 6 = 000110 : 000011000110
	 -- 6 = 001100, 3 = 000011 : 001100000011
	 -- 11 = 001011, 21 = 010101 : 001011010101
	 
	 
	 
end test_fixture ;