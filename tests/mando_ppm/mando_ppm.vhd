library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;


library floatfixlib;
use floatfixlib.fixed_pkg.all;

entity mando_ppm is

    port (
        clock  : in     std_logic;
        u_test : in ufixed(3 downto -3);
        s_test : in sfixed(3 downto -3)

    ) ;
    

end mando_ppm;


architecture arch of mando_ppm is

-- signals

  begin
  
  

end arch ;