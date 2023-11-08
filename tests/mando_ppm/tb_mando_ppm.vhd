library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

--use ieee.fixed_pkg.all; -- use for GHDL sim
--use ieee.float_pkg.all;
-- these two ARE mutually exclusive yah know !

library floatfixlib;  -- use for quartus / questa sim
use floatfixlib.fixed_pkg.all;
use floatfixlib.float_pkg.all;


entity tb_mando_ppm is
end entity tb_mando_ppm;

architecture test_bench of tb_mando_ppm is

	signal clock : std_logic := '0'    ;
    signal s_val : sfixed(3 downto -3) := "0101010" ;
    signal u_val : ufixed(3 downto -3) := "0011000" ;
    
    constant width_pix  : natural range 0 to 1920 := 80;
    constant height_pix : natural range 0 to 1080 := 60;
    constant ppm_colors : natural range 0 to 15   := 15;
    
    signal   x_coord    : float32 := to_float(-0.5); -- float32, same as "float (8 downto –23)" --(5 downto -7) ;
    signal   y_coord    : float32 := to_float(0.0);
    constant x_range    : natural range 4 to 5 := 4;
    constant y_range    : natural range 3 to 4 := 3;
    constant max_iters  : natural range 20 to 500 := 75;
    
    signal   min_x      : float32 := (x_coord - x_range / 2);
    signal   max_x      : float32 := (x_coord + x_range / 2);
    signal   min_y      : float32 := (y_coord - y_range / 2);
    signal   max_y      : float32 := (y_coord - y_range / 2);
    
    signal  old_x       : float32 ; -- x_coord
    signal  old_y       : float32 ; -- y_coord
    
    signal  a_comp      : float32 ;
    signal  b_comp      : float32 ;
    
    signal  distance    : float32 ;

  begin
    
	--UUT : entity work.mando_bro port map (
        
  --      s_test => s_val,
  --      u_test => u_val,
  --      clock  => clock
  --  );
    
    clock <= not clock after 10 ns; -- 50 MHz
    

    write_brot : process is
		file brot_out_file : text open write_mode is "brot.ppm";
		variable brot_out_line : line;
		variable brot_red, brot_grn, brot_blu: natural range 0 to 15;

	  begin
      
        -- ppm file header
		write(brot_out_file, "P3" & LF); -- magic number, , full color PPM, ASCII characters
		write(brot_out_file, "80 60" & LF); -- image width & height
		write(brot_out_file, "15" & LF); -- max colors
		
        -- generate colors
        for row in 0 to height_pix loop
            for col in 0 to width_pix loop
                x_coord <= min_x + col * x_range / width_pix ;
                y_coord <= max_y - row * y_range / height_pix ;
                old_x <= x_coord ;
                old_y <= y_coord ;
                
                for iters in 0 to (max_iters + 1) loop
                    a_comp <= x_coord * x_coord - y_coord * y_coord ; --real component of z^2
                    b_comp <= 2 * x_coord * y_coord ; --imaginary component of z^2
                    x_coord <= a_comp + old_x ; --real component of new z
                    y_coord <= b_comp + old_y ; --imaginary component of new z
                    
                    if x_coord * x_coord + y_coord * y_coord > 4 then
                        exit;
                    end if;
                    
                    if iters < max_iters then
                        distance <= (to_float(iters) + 1.0) / (to_float(max_iters) + 1.0) ;
                        
                       -- need to parse distance to RGB values
                       -- write(brot_out_line, distance); -- Write value to line
                       -- writeline(brot_out_file, brot_out_line); -- Write line to the file

                    else
                        -- red <= 0;
                        -- grn <= 0;
                        -- blu <= 0;
                        -- writleline
                    
                    end if;
                    
                
                end loop;
            end loop;
        end loop;

    
        wait;
    end process write_brot;
    

    write_ppm_test : process is
		file out_file : text open write_mode is "my_generated_file.ppm";
		variable out_line : line;
		variable red, grn, blu: natural range 0 to 15;
	  begin
        -- ppm file header
		write(out_file, "P3"    & LF); -- magic number, , full color PPM, ASCII characters
		write(out_file, "64 64" & LF); -- image width & height
		write(out_file, "15"    & LF); -- max colors

		-- generate colors
		for i in 0 to 15 loop -- 19
            red := i ;
			    for j in 0 to 15 loop -- 39
                    grn := j ;     
                    for k in 0 to 15 loop
                        blu := k ;
				
                            write(  
                                out_line, 
                                natural'image(red) & " " &
                                natural'image(grn) & " " &
                                natural'image(blu)
                            );
                                
                            writeline(out_file, out_line);
                    end loop;
			    end loop;
		end loop;

		wait;
	end process write_ppm_test;

end architecture test_bench;