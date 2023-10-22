library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use fixed_pkg.all;


--library ieee_proposed;
--use ieee_proposed.fixed_pkg.all;
--library floatfixlib;
--use floatfixlib.fixed_pkg.all;

library floatfixlib;
use floatfixlib.fixed_pkg.all;


entity tb_fixed is
end entity tb_fixed;

architecture test_bench of tb_fixed is

	signal clock : std_logic := '0'    ; -- must be initialized to have toggleable
    signal s_val : sfixed(3 downto -3) := "0000000" ;
    signal u_val : ufixed(3 downto -3) := "1111111" ;

begin

	UUT : entity work.fixed port map (
        
        s_test => s_val,
        u_test => u_val,
        clock  => clock
    );
    
    
    clock <= not clock after 10 ns; -- 50 MHz

    
    --test : process is
    --  begin
        
		-- test creation using signed
        --report "test 1" severity note;
		--value <= to_sfixed(to_signed(0, value'length));
		--wait for 1 ns;
        
    --    wait;
   -- end process test;
   
   	 --s_val <= "1111111" after 10 ns, "0000000" after 20 ns, "1111111" after 30 ns ;
   	 --u_val <= "1111111" after 10 ns, "0000000" after 20 ns, "1111111" after 30 ns ;

    
end architecture test_bench;