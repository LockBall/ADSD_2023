library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.MATH_REAL.ALL;

 --these two ARE mutually exclusive yah know !
use ieee.fixed_pkg.all; -- use for GHDL sim
use ieee.float_pkg.all;

--library floatfixlib;  -- use for quartus / questa sim
--use floatfixlib.fixed_pkg.all;
--use floatfixlib.float_pkg.all;


entity tb_mando_ppm is
end entity tb_mando_ppm;

architecture test_bench of tb_mando_ppm is

	signal clock : std_logic := '0'    ;
    signal s_val : sfixed(3 downto -3) := "0101010" ;
    signal u_val : ufixed(3 downto -3) := "0011000" ;
    
    constant width_pix  : natural range 0 to 1920 := 160;  -- MUST ALSO CHANGE ppm file header 
    constant height_pix : natural range 0 to 1080 := 120;  -- width & height
    
    constant max_iters  : natural range 0 to 500  := 30;
    constant ppm_colors : natural range 0 to 15   := 15;
    
    constant x_range    : float32 := to_float(4.0);
    constant y_range    : float32 := to_float(3.0);


   
  begin
    
	--UUT : entity work.mando_bro port map (
        
  --      s_test => s_val,
  --      u_test => u_val,
  --      clock  => clock
  --  );
    
    clock <= not clock after 10 ns; -- 50 MHz


    write_brot : process is
    
        variable x_coord   : float32 := to_float(-0.5); -- float32, same as "float (8 downto –23)" --(5 downto -7) ;
        variable y_coord   : float32 := to_float(0.0);
        variable esc       : float32 ;
        --variable esc_cnt   : natural := 0 ;
        
        variable iters_cnt     : natural := 0 ;--range 0 to max_iters := 0 ;
        variable iters_cnt_slv : std_logic_vector(0 to 31) ;
    
        constant min_x     : float32 := x_coord - (x_range / 2.0 );
        constant max_y     : float32 := y_coord + (y_range / 2.0 );    
    
        variable old_x     : float32 ; -- related to x_coord
        variable old_y     : float32 ; -- related to y_coord
        variable a_comp    : float32 ;
        variable b_comp    : float32 ;
        variable distance  : float32 ;
        variable dist_int  : integer := 0 ;
        variable dist_slv  : std_logic_vector(0 to 31) ;
        
        variable dist_red, dist_grn, dist_blu : std_logic_vector(0 to 3) ;


        variable dist_str  : string(1 to 8) := "distress"; 

    
		file brot_out_file : text open write_mode is "brot.ppm";
        variable brot_out_line : line;

		variable brot_red  : natural range 0 to 15 := 6 ;
        variable brot_grn  : natural range 0 to 15 := 6 ;
        variable brot_blu  : natural range 0 to 15 := 6 ;


	  begin
        -- ppm file header
		write(brot_out_file, "P3" & LF); -- magic number, , full color PPM, ASCII characters
		write(brot_out_file, "160 120" & LF); -- image width & height
		write(brot_out_file, "15" & LF); -- max colors
        
--        write(brot_out_file, LF & "float_test" & LF);  -- -1.359375 correct
--        write(    
--            brot_out_line,
--            to_real(2.175 * 1.25 * x_coord)
--        );
--        writeline(brot_out_file, brot_out_line);
        
--        write(brot_out_file, LF & "ini_x_coord" & LF);
--        write(    
--            brot_out_line,
--            to_real(x_coord)
--        );
--        writeline(brot_out_file, brot_out_line);


        -- generate colors
        for row in 0 to (height_pix - 1) loop
--            write(brot_out_file, LF & "row" & LF);
--            write(    
--                brot_out_line,
--                natural'image(row) 
--            );
--            writeline(brot_out_file, brot_out_line); -- Write line to the file
            
            for col in 0 to (width_pix - 1) loop
--                write(brot_out_file,"    col" & LF);
--                write(    
--                    brot_out_line,
--                    natural'image(col) 
--                );
--                writeline(brot_out_file, brot_out_line);
                

--                write(brot_out_file, LF & "pre_x_coord" & LF);
--                write(    
--                    brot_out_line,
--                    to_real(x_coord)
--                );
--                writeline(brot_out_file, brot_out_line);
                
                
--                write(brot_out_file, LF & "min_x" & LF);  -- -2.5 checks out
--                write(    
--                    brot_out_line,
--                    to_real(min_x)
--                );
--                writeline(brot_out_file, brot_out_line);
                
                
--                write(brot_out_file, LF & "x_range" & LF);
--                write(    
--                    brot_out_line,
--                    to_real(x_range)
--                );
--                writeline(brot_out_file, brot_out_line);                
    

                x_coord := min_x + (col * x_range / width_pix) ;
                y_coord := max_y - (row * y_range / height_pix) ;
                
                old_x   := x_coord ;
                old_y   := y_coord ;
                
                --write(brot_out_file, LF & "old_x" & LF);
--                write(    
--                    brot_out_line,
--                    to_real(old_y)
--                );
--                writeline(brot_out_file, brot_out_line);                 
                
                
                --write(brot_out_file, "        iters" & LF);
                for iters in 0 to max_iters loop  -- not including a "+ 1" equivs the - 1 from python
                    iters_cnt := iters;

                    a_comp  := (x_coord * x_coord) - (y_coord * y_coord) ; --real component of z^2
                    b_comp  := (2.0 * x_coord * y_coord) ; --imaginary component of z^2
                    x_coord := a_comp + old_x ; --real component of new z
                    y_coord := b_comp + old_y ; --imaginary component of new z
                    
                    --write(brot_out_file, "a_comp" & LF);
--                    write(    
--                        brot_out_line,
--                        to_real(y_coord)
--                    );
--                    writeline(brot_out_file, brot_out_line);                      
                    
                    
                    esc := (x_coord * x_coord) + (y_coord * y_coord);
--                    
                    --write(brot_out_file, LF & "esc" & LF);
--                    write(    
--                        brot_out_line,
--                        to_real(esc)
--                    );
--                    writeline(brot_out_file, brot_out_line);
                        
                --        
                --    write(brot_out_file, "for iters" & LF);
                --    write(    
                --        brot_out_line,
                 --       natural'image(iters) 
                 --   );
                 --   writeline(brot_out_file, brot_out_line);                    

                    
                    if esc > 4.0 then
                        --esc_cnt := esc_cnt + 1 ;
                       exit;
                    end if;

                end loop;  -- for iters in 0 to (max_iters + 1) loop

                                    
                if (iters_cnt < max_iters) then
                
                    distance := (to_float(iters_cnt) + 1.0) / (to_float(max_iters) + 1.0)  ;
                    dist_slv := to_slv(distance);
                    -- these will be needed for the VGA version
                    dist_red := dist_slv(12 to 15) ;
                    dist_grn := dist_slv(8 to 11) ;
                    dist_blu := dist_slv(4 to 7) ;

                   -- dist_int := to_integer(signed(to_slv(distance)));
                    
                    --iters_cnt_slv := std_logic_vector(to_signed(iters_cnt, iters_cnt_slv'length));

                  -- dist_str := to_string(to_real(distance));
                    
                   -- write(    
                  --      brot_out_line,
                      --  distance
                       --real'image(to_real(distance))
                       -- to_slv(distance)
                      --  dist_int
                        --dist_slv
                       --dist_b
                     -- to_string(to_real(distance), 6) -- 20, 9.090909361839294e-2
                      -- dist_str
                     -- iters_cnt_slv
                     --iters_cnt
                  --  );
                  --  writeline(brot_out_file, brot_out_line);
                    
--                    write(    
--                        brot_out_line,
--                        to_real(my_fixed)
--                    );
--                    writeline(brot_out_file, brot_out_line);

                   -- need to parse distance to RGB values
                    brot_red := to_integer(unsigned(dist_red)) ;
                    brot_grn := to_integer(unsigned(dist_blu)) ;
                    brot_blu := to_integer(unsigned(dist_grn)) ;                     
                   
                else
                    brot_red := 0 ;
                    brot_grn := 0 ;
                    brot_blu := 0 ;

                end if; -- (iters_cnt < max_iters) then
                
                write(
                    brot_out_line,
                    natural'image(brot_red) & " " &
                    natural'image(brot_grn) & " " &
                    natural'image(brot_blu)
                );
                writeline(brot_out_file, brot_out_line);
  
            end loop;  -- for col in 0 to width_pix loop
        end loop;  -- for row in 0 to height_pix loop

--        write(brot_out_file, "esc_cnt" & LF);
--        write(    
--            brot_out_line,
--            natural'image(esc_cnt) 
--        );
--        writeline(brot_out_file, brot_out_line);        

      wait;
    end process write_brot;
    
    
    
--    write_ppm_test : process is
--		file out_file : text open write_mode is "my_generated_file.ppm";
--		variable out_line : line;
--		variable red, grn, blu: natural range 0 to 15;
--	  begin
--
--        -- ppm file header
--		write(out_file, "P3"    & LF); -- magic number, , full color PPM, ASCII characters
--		write(out_file, "64 64" & LF); -- image width & height
--		write(out_file, "15"    & LF); -- max colors
--
--		-- generate colors
--		for i in 0 to 15 loop -- 19
--            red := i ;
--			    for j in 0 to 15 loop -- 39
--                    grn := j ;     
--                    for k in 0 to 15 loop
--                        blu := k ;
--				
--                            write(  
--                                out_line, 
--                                natural'image(red) & " " &
--                                natural'image(grn) & " " &
--                                natural'image(blu)
--                            );
--                            writeline(out_file, out_line);
--                    end loop;
--			    end loop;
--		end loop;
--
--		wait;
--	end process write_ppm_test;

end architecture test_bench;