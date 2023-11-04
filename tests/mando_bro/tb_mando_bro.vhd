library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-- these two ARE mutually exclusive yah know !
use ieee.fixed_pkg.all;
--library floatfixlib;
--use floatfixlib.fixed_pkg.all;

entity tb_mando_bro is
end entity tb_mando_bro;

architecture test_bench of tb_mando_bro is

	signal clock : std_logic := '0'    ;
    signal s_val : sfixed(3 downto -3) := "0101010" ;
    signal u_val : ufixed(3 downto -3) := "0011000" ;

begin

	--UUT : entity work.mando_bro port map (
        
  --      s_test => s_val,
  --      u_test => u_val,
  --      clock  => clock
  --  );
    
    clock <= not clock after 10 ns; -- 50 MHz


    write_file : process is
		file out_file : text open write_mode is "my_generated_file.ppm";
		variable out_line : line;
		variable red, grn, blu: natural range 0 to 15;
	begin
		write(out_file, "P3" & LF);
		write(out_file, "40 20" & LF);
		write(out_file, "15" & LF);

		for j in 0 to 19 loop -- 19
			for i in 0 to 39 loop -- 39

				-- generate colors
				red := i mod 16;
				grn := (i + j) mod 16;
				blu := (15 - j) mod 16;
				
				-- write them to a file
				write(out_line,
						integer'image(red) & " "
							& integer'image(grn) & " "
							& integer'image(blu));
				writeline(out_file, out_line);
			end loop;
		end loop;

		wait;
	end process write_file;

end architecture test_bench;