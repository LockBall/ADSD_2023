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

	 signal tb_clock      : std_logic := '0' ; -- must be initialized to have toggleable

    signal tb_enable     : std_logic;  -- inputs
	 signal tb_reset      : std_logic;
	 signal tb_pulse_in   : std_logic;
	 signal tb_challenge  : std_logic_vector(0 to 11);-- which two ro to compare
	 --signal tb_chal_lft_6 : integer range 0 to 32 := 0;
	 --signal tb_chal_rit_6 : integer range 0 to 32 := 0;
	 signal tb_response   : std_logic;
	 signal tb_req_resp_in	 : std_logic;

	 
	 --signal tb_ro_outs: std_logic_vector(0 to ro_count); -- outputs
	 --signal tb_ro_ctr_ary_out : t_ro_ctr_ary(0 to ro_count);

begin
    -- connecting testbench signals with ro_puf.vhd
	UUT : entity work.ro_puf port map (
	
		clock       => tb_clock,
	
		enable  			=> tb_enable,
		--ro_outs			=> tb_ro_outs,
		--ro_ctr_ary_out => tb_ro_ctr_ary_out,
		reset 			=> tb_reset,
		pulse_in			=> tb_pulse_in,
		challenge      => tb_challenge, -- 12 bits, 4095 max number
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
	
	
	-- inputs
	 tb_reset     <= '1', '0' after 45 ns, '1' after 90 ns ; -- low resets counter, high allows counts
    tb_enable    <= '0', '1' after 65 ns ;  -- high allows counts
	 tb_pulse_in  <= '0', '0' after 20 ns, '1' after 70 ns, '1' after 90 ns, '0' after 100 ns, '0' after 150 ns ;
	 tb_challenge <= "000011001011" ; -- 3, 11
	 -- 3 = 000011, 6 = 000110 : 000011000110
	 -- 6 = 001100, 3 = 000011 : 001100000011
	 -- 11 = 001011, 21 = 010101 : 001011010101
	 tb_req_resp_in <= '0', '1' after 200 ns, '0' after 220 ns ;
	
	 
end test_fixture ;