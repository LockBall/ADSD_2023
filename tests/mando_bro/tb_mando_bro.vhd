library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

library floatfixlib;
use floatfixlib.fixed_pkg.all;

entity tb_mando_bro is
end entity tb_mando_bro;

architecture test_bench of tb_mando_bro is

	signal clock : std_logic := '0'    ;
    signal s_val : sfixed(3 downto -3) := "0101010" ;
    signal u_val : ufixed(3 downto -3) := "0011000" ;

begin

	UUT : entity work.mando_bro port map (
        
        s_test => s_val,
        u_test => u_val,
        clock  => clock
    );
    
    
    clock <= not clock after 10 ns; -- 50 MHz

end architecture test_bench;