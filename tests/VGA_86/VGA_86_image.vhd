-- street_image.vhd
--
-- generate a VGA-image
--
-- FPGA Vision Remote Lab http://h-brs.de/fpga-vision-lab
-- (c) Marco Winzker, Hochschule Bonn-Rhein-Sieg, 02.05.2019

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;

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
        
        r_out, g_out, b_out : out std_logic_vector(0 to 3) := "0111"
    );
    
end entity VGA_86_image;


architecture behave of VGA_86_image is

    signal clock : std_logic ;

    constant h_active  : natural := (h_pixels - (h_f_porch + h_pulse + h_b_porch) );
    constant v_active  : natural := (v_lines - (v_f_porch + v_pulse + v_b_porch) );

    signal   color_shift_count : natural := 0 ;

    signal   h_count     : natural range 0 to (h_pixels - 1) := 0; 
    signal   v_count     : natural range 0 to (v_lines - 1)  := 0;
    signal   frame_count : natural range 0 to 60 := 0;
    signal   new_frame   : std_logic := '0';
    
    signal square_pos_count : natural := 0;
    signal square_h_pos     : natural range 0 to h_active := 0;
    signal square_v_pos     : natural range 0 to v_active := 0;
    
    signal rgb_count : std_logic_vector(0 to 11) := "000000000000"; -- r, g, b


    -- signals for pipeline stages
    signal h_sync_1, v_sync_1, blank_1 : std_logic;
    signal h_sync_2, v_sync_2, blank_2 : std_logic;

    signal rgb_2     : std_logic_vector(0 to 11);


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
            
    end process; -- (clock) primary counters with reset
 
 
-- pipeline-stages for generation of image content and sync-signals
    process(clock) 
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
          else                                                
            blank_1 <= '1'; -- blanking on, rgb black
          end if;
          

------------------------ pipeline stage 2 ------------------------
            h_sync_2 <= h_sync_1 ;
            v_sync_2 <= v_sync_1 ;
            blank_2  <= blank_1  ;
            
            
            if (blank_2 = '1') then 
                rgb_2 <= "000000000000";
                
--            elsif 
--                h_count >= square_h_pos + 100 AND
--                h_count <= square_h_pos + 200 AND
--                v_count >= square_v_pos + 100 AND
--                v_count <= square_v_pos + 200 
--              then
--                rgb_2 <= NOT rgb_count ; --"001100110111" ; -- blurple
                

            else 
                rgb_2 <= rgb_count ;
                
                if color_shift_count = 20000000
                then -- 20000000
                   rgb_count <= rgb_count + "1";
                   
                   
                    color_shift_count <= 0 ;
                    
                    
                else
                    color_shift_count <= color_shift_count +  1;
                end if;
                
                
--                if square_pos_count = 500000 then
--                
--                    square_h_pos <= square_h_pos + 1 ;
--                    
--                    if square_h_pos = h_active then
--                        square_v_pos <= square_v_pos + 50 ;
--                    end if;
--                
--                    square_pos_count <= 0 ;
--
--                else
--                    square_pos_count <= square_pos_count + 1 ;
--                end if;

            end if;      
            
  
------------------------ pipeline stage 3 (out) ------------------------
            h_sync_out <= h_sync_2;
            v_sync_out <= v_sync_2;
            blank_out  <= blank_2;
            
            
            r_out <= rgb_2(0 to 3);
            g_out <= rgb_2(4 to 7);
            b_out <= rgb_2(8 to 11);
            
        end if; -- rising_edge(clock) pipeline stages
    end process;

end architecture behave;