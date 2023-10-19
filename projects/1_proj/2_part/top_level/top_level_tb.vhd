-- top_level_tb.vhd

library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

--use work.ro_ctr_ary.all;

entity top_level_tb is

	generic( -- needs to be first
		constant ro_count: positive range 3 to 37 := 15 -- how many, use ODD # here to get EVEN # of ring osc -- 21
		-- minimum of 3, max of 37
	);

end top_level_tb;

architecture test_fixture of top_level_tb is

	 signal tb_clock        : std_logic := '0' ; -- must be initialized to have toggleable
	 signal tb_reset_btn    : std_logic := '0' ; -- active low
    signal tb_enable       : std_logic ;
	 signal tb_chal_lft     : std_logic_vector(0 to 5) ;-- which two ro to compare
	 signal tb_chal_rit     : std_logic_vector(0 to 5) ;-- which two ro to compare	 
	 signal tb_pulse        : std_logic ;
	 signal tb_req_resp_out : std_logic ;
	 signal tb_done_LED     : std_logic ;
	 signal tb_response     : std_logic ;
	 
	 --signal tb_chal_lft_6 : integer range 0 to 32 := 0;
	 --signal tb_chal_rit_6 : integer range 0 to 32 := 0;
	 --signal probe_delay    : natural := 10; -- 100 ns
	 --signal tb_tl_test_count : natural := 0;


	 
	 --signal tb_ro_outs: std_logic_vector(0 to ro_count); -- outputs
	 --signal tb_ro_ctr_ary_out : t_ro_ctr_ary(0 to ro_count);

begin
    -- connecting top_level.vhd => testbench signals 
	UUT : entity work.top_level port map (
	
		tl_clock     => tb_clock,
		reset_btn    => tb_reset_btn,		
		tl_enable    => tb_enable,
		chal_lft     => tb_chal_lft,
		chal_rit     => tb_chal_rit,
		pulse        => tb_pulse,
		req_resp_out => tb_req_resp_out,
		done_LED     => tb_done_LED,
		response     => tb_response
		--ro_outs			=> tb_ro_outs,
		--ro_ctr_ary_out => tb_ro_ctr_ary_out,

		--chal_lft_6     => tb_chal_lft_6,
		--chal_rit_6     => tb_chal_rit_6,
		--done_in => tb_done_in,
		--tl_test_count => tb_tl_test_count
	);


		tb_clock <= not tb_clock after 10 ns;
	-- 50 Mhz = 50,000,000 cycles / sec
   -- 50 cycles / us (1000 ns)
	-- 1 cycle / 20 ns
	-- 2 states / cycle ∴ 10 ns !!!
	
	--process(tb_clock)
	-- begin
	 

	 
	--end process; -- tb_clock
	
		
	-- inputs
	 tb_reset_btn     <= '1', '0' after 20 ns, '1' after 60 ns ; -- low resets counter, high allows counts
	 --tb_enable      <= '0', '1' after 65 ns ;  -- high allows counts
	 --tb_pulse_in    <= '0', '0' after 20 ns, '1' after 70 ns, '1' after 90 ns, '0' after 100 ns, '0' after 150 ns ;
	 --tb_req_resp_in <= '0', '1' after probe_delay * 1 ns, '0' after (probe_delay + 20) * 1 ns;

	 --tb_challenge_lft <= "000011" ; -- 3
	 --tb_challenge_rit <= "001011"; -- 11
    -- 3 = 000011, 6 = 000110 : 000011000110
	 -- 6 = 001100, 3 = 000011 : 001100000011
	 -- 11 = 001011, 21 = 010101 : 001011010101
	 
	 
	 
end test_fixture ;