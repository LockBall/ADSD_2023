-- street_image.vhd
--
-- generate an VGA-image of a street scene
--
-- FPGA Vision Remote Lab http://h-brs.de/fpga-vision-lab
-- (c) Marco Winzker, Hochschule Bonn-Rhein-Sieg, 02.05.2019

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;

 --these two ARE mutually exclusive yah know !
--use ieee.fixed_pkg.all; -- use for GHDL sim
--use ieee.float_pkg.all;

library floatfixlib;  -- use for quartus / questa sim
use floatfixlib.fixed_pkg.all;
use floatfixlib.float_pkg.all;


entity VGA_86_image is

    generic(
        h_pixels   : natural range 800 to 2200 := 1056 ; -- total horiztonal width in pixels
        h_f_porch  : natural range  16 to 88   := 40  ; -- horiztonal front porch width in pixels
        h_pulse    : natural range  44 to 136  := 128  ; -- horiztonal sync pulse width in pixels
        h_b_porch  : natural range  48 to 160  := 88  ; -- vertical back porch in lines
        h_sync_pol : std_logic := '1' ;

        v_lines    : natural range 525 to 1125 := 628 ; -- total 'scanned' height in lines
        v_f_porch  : natural range   1 to 10   := 1  ; -- horiztonal front porch width in pixels
        v_pulse    : natural range   2 to 6    := 4   ; -- vertical sync pulse in lines
        v_b_porch  : natural range  23 to 36   := 23  ; -- vertical back porch in lines
        v_sync_pol : std_logic := '1'  
    );

    
    port (
        clock_25   : in  std_logic; -- pick a clock, after "begin"
        clock_40   : in  std_logic;
        reset      : in  std_logic;
        
        v_sync_out : out std_logic;
        h_sync_out : out std_logic;
        blank_out  : out std_logic;
        
        r_out, g_out, b_out : out std_logic_vector(0 to 3) := "0000"
    );
    
end entity VGA_86_image;


architecture behave of VGA_86_image is

    signal clock : std_logic ;

    constant h_active  : natural := (h_pixels - (h_f_porch + h_pulse + h_b_porch) );
    constant v_active  : natural := (v_lines - (v_f_porch + v_pulse + v_b_porch) );
    constant width_pix  : natural range 0 to 1920 := 800;  -- width & height, critically related to the generic settings
    constant height_pix : natural range 0 to 1080 := 600;
    constant max_iters  : natural range 0 to 500  := 10;


    signal   color_shift_count : natural := 0 ;

    signal   h_count     : natural range 0 to (h_pixels - 1) := 0; 
    signal   v_count     : natural range 0 to (v_lines - 1)  := 0;
    signal   frame_count : natural range 0 to 60 := 0;
    signal   new_frame   : std_logic := '0';
    
    signal square_pos_count : natural := 0;
    signal square_h_pos     : natural range 0 to h_active := 0;
    signal square_v_pos     : natural range 0 to v_active := 0;
    
    signal rgb_count                 : std_logic_vector(0 to 11) := "000000000000" ; -- r, g, b
    signal r_count, g_count, b_count : std_logic_vector(0 to 3)  := "0000" ; 
    signal which_color_count         : natural range 0 to 2  := 0 ;

    -- signals for pipeline stages
    signal h_sync_1, v_sync_1, blank_1 : std_logic;
    signal h_sync_2, v_sync_2, blank_2 : std_logic;

    signal rgb_2     : std_logic_vector(0 to 11);
    
    constant x_range    : float32 := to_float(4.0);
    constant y_range    : float32 := to_float(3.0);
    

  begin

    clock <= clock_40;
  
    
    process(clock) -- primary counters with reset
        


    
      begin
        if rising_edge(clock) then

            if (reset = '1') then
            
                h_count      <=     0  ;
                v_count      <=     0  ;
                new_frame    <=    '0' ;
                frame_count  <=     0  ;
             
                
            else
                new_frame  <= '0'; -- default

                if (h_count = (h_pixels - 1)) then
                    h_count <= 0; -- reset h_count for next line
                  
                    if ( v_count = (v_lines - 1)  ) then
                        v_count     <= 0;
                        new_frame   <= '1'; -- 1 frame / all lines                
                    else
                        v_count <= v_count + 1; -- increments on new line
                    end if;
                  
                else
                    h_count <= h_count + 1; -- 1 pixel / rising edge
                                        
                end if;
                
            end if;

        end if; -- rising_edge(clock)
            
    end process; -- primary counters with reset
 
 
-- pipeline-stages for generation of image content and sync-signals
    process(clock)
    
        variable x_coord   : float32 := to_float(-0.5); -- float32, same as "float (8 downto –23)" --(5 downto -7) ;
        variable y_coord   : float32 := to_float(0.0);    
        variable esc       : float32 ;
        
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

		variable brot_red  : natural range 0 to 15 := 6 ;
        variable brot_grn  : natural range 0 to 15 := 6 ;
        variable brot_blu  : natural range 0 to 15 := 6 ;
        

      begin
        if rising_edge(clock) then
      
        
------------------------ pipeline stage 1 ------------------------
            

          --horizontal sync signal
          if(h_count >= h_active + h_f_porch AND h_count <= h_pixels - h_b_porch) then
            h_sync_1 <= h_sync_pol;      -- assert horiztonal sync pulse
          else
            h_sync_1 <= NOT h_sync_pol;  -- deassert horiztonal sync pulse
          end if;
          
          --vertical sync signal
          if(v_count < v_active + v_f_porch AND v_count <= v_lines - v_b_porch) then
            v_sync_1 <= v_sync_pol;      -- assert vertical sync pulse
          else
            v_sync_1 <= NOT v_sync_pol;  -- deassert vertical sync pulse
          end if;

   
          if(h_count < h_active AND v_count < v_active) then -- blanking time, required, blank when not active
            blank_1 <= '0'; -- blanking off
            
           -- old_x := h_count ; -- natural
            --old_y := v_count ;
           -- x_coord := min_x + to_float(old_x);--+ (col * x_range / width_pix) ;

            

          else                                                
            blank_1 <= '1'; -- blanking on, rgb black
          end if;
          

------------------------ pipeline stage 2 ------------------------
            h_sync_2 <= h_sync_1 ;
            v_sync_2 <= v_sync_1 ;
            blank_2  <= blank_1  ;
            
            
            if blank_2 = '0' then -- not blanking

               -- old_y   := to_float(v_count) ;

            
                rgb_2 <= rgb_count ;
                
                
              --  for row in 0 to (height_pix - 1) loop

                 --   for col in 0 to (width_pix - 1) loop


                      --  a_comp    := (x_coord * x_coord); -- - (y_coord * y_coord) ;
                        
                        for iters in 0 to max_iters loop  -- not including a "+ 1" equivs the - 1 from python
                            iters_cnt := iters;
                           -- a_comp    :=  x_coord * x_coord ; -- (x_coord * x_coord) - (y_coord * y_coord) ; --real component of z^2
                        end loop;  -- iters
                        
                        
                        
                 --   end loop;  -- col
               -- end loop;  -- row
                
--              if 
--                h_count >= square_h_pos + 100 AND
--                h_count <= square_h_pos + 200 AND
--                v_count >= square_v_pos + 100 AND
--                v_count <= square_v_pos + 200 
--              then
--                rgb_2 <= NOT rgb_count ; --"001100110111" ; -- blurple
--              
--              else
--                rgb_2 <= rgb_count ;
--                
--              end if;

                
                if color_shift_count = 20000000 then  -- 20000000 
                    
                   rgb_count <= rgb_count + "1";
                   
                    color_shift_count <= 0 ;
                    
                else
                    color_shift_count <= color_shift_count +  1;
                    
                end if;
                
                
                if square_pos_count = 500000 then
                
                    square_h_pos <= square_h_pos + 1 ;
                    
                    if square_h_pos = h_active then
                        square_v_pos <= square_v_pos + 50 ;
                    end if;
                
                    square_pos_count <= 0 ;

                else
                    square_pos_count <= square_pos_count + 1 ;
                end if;

            end if;      
            
  
------------------------ pipeline stage 3 (out) ------------------------
            h_sync_out <= h_sync_2 ;
            v_sync_out <= v_sync_2 ;
            blank_out  <= blank_2  ;
            
            if blank_2 = '1' then
                r_out <= "0000";
                g_out <= "0000";
                b_out <= "0000";
            
            else
                r_out <= rgb_2(0 to 3);
                g_out <= rgb_2(4 to 7);
                b_out <= rgb_2(8 to 11);            
                
            end if;


            
        end if; -- rising_edge(clock) pipeline stages
    end process;

end architecture behave;