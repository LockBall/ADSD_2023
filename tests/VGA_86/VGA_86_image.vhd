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

entity VGA_86_image is

    generic(
        h_pixels   : natural range 800 to 2200 := 800 ; -- total horiztonal width in pixels
        h_f_porch  : natural range  16 to 88   := 16  ; -- horiztonal front porch width in pixels
        h_pulse    : natural range  44 to 136  := 96  ; -- horiztonal sync pulse width in pixels
        h_b_porch  : natural range  48 to 160  := 48  ; -- vertical back porch in lines
        h_sync_pol : std_logic := '0' ;


        v_lines    : natural range 525 to 1125 := 525 ; -- total 'scanned' height in lines
        v_f_porch  : natural range   1 to 10   := 10  ; -- horiztonal front porch width in pixels
        v_pulse    : natural range   2 to 6    := 2   ; -- vertical sync pulse in lines
        v_b_porch  : natural range  23 to 36   := 33  ; -- vertical back porch in lines
        v_sync_pol : std_logic := '0'
    );

    
    port (
        clk_25     : in  std_logic;
        reset      : in  std_logic;
        v_sync_out : out std_logic;
        h_sync_out : out std_logic;
        blank_out  : out std_logic; -- unused outside this file, included for testbench
        r_out      : out std_logic_vector(7 downto 0);
        g_out      : out std_logic_vector(7 downto 0);
        b_out      : out std_logic_vector(7 downto 0)
    );
    
end entity VGA_86_image;


architecture behave of VGA_86_image is

    -- timing of VGA signal
    
    -- 640 x 480 60 Hz, 25 MHz pixel frequency
        -- horizontal timing
                -- sync: 0 - 95
                -- active: 144 - 783
                
        -- vertical timing:
                -- sync: 0 -  9
                -- active:  36 - 515

  
    -- rgb values
    signal   rgb_sky   : std_logic_vector(23 downto 0) := x"A0D0F0" ;  -- 24 bit, A0D0F0
    constant rgb_grass : std_logic_vector(23 downto 0) := x"20C040" ;
    constant rgb_road  : std_logic_vector(23 downto 0) := x"808080" ;
    constant rgb_line  : std_logic_vector(23 downto 0) := x"FFFF80" ;
    
    constant h_active  : natural := (h_pixels - (h_f_porch + h_pulse + h_b_porch) );
    constant v_active  : natural := (v_lines - (v_f_porch + v_pulse + v_b_porch) );

    
    signal   color_shift_count : natural := 0 ;
    
    signal h_count   : natural range 0 to (h_pixels - 1) := 0; 
    signal v_count   : natural range 0 to (v_lines - 1)  := 0;
    signal frame_num : natural range 0 to 1023 := 0;
    signal new_frame : std_logic := '0';

    signal center_pos : integer range 0 to (h_pixels - 1);

    -- signals for pipeline stages
    signal h_sync_1, v_sync_1, blank_1 : std_logic;
    signal h_sync_2, v_sync_2, blank_2 : std_logic;

    --signal h_pos_1   : integer range -200 to (h_pixels - 1);
    signal v_pos_1   : integer range -200 to (v_lines - 1) ;
    signal h_gap_1                          : integer range    0 to 1023;
    signal x_value_a, x_value_b, x_value_c  : integer range    0 to 1023;

    signal rgb_2     : std_logic_vector(23 downto 0);


    signal v_factor_a   : natural range 0 to 511;
    signal v_factor_b   : natural range 0 to 255;
    signal curve        : integer range -128 to 127;
    signal this_curve   : integer range -128 to 127;
    


  begin

    -- process for primary counters with reset
    process
      begin
        wait until rising_edge(clk_25);

        if (reset = '1') then
        
            h_count     <= 0;
            v_count     <= 0;
            new_frame   <= '0';
            frame_num   <= 500;
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
            
            
            if (new_frame = '1') then
            
                if (frame_num = 1023) then
                    frame_num <= 0;
                else
                    frame_num <= frame_num + 1;
                end if;
            end if;

        end if; -- reset
        
    end process;  
            
            
    -- process with pipeline-stages for generation of image content and sync-signals
    process
      begin
        wait until rising_edge(clk_25);
      
        -- make a parabolic curve, so we calculate
        --    curve is the bend for this frame
        --    factor_a is the vertical position
        --    factor_b is the square of the vertical position

        if (frame_num <= 400) then
          curve <= 0;
        elsif (frame_num > 400) and (frame_num <= 520) then
          curve <= - (frame_num-400);
        elsif    (frame_num > 620) and (frame_num <= 860) then
          curve <= - 120 + (frame_num-620);
        elsif    (frame_num > 903) then
          curve <= 120 - (frame_num-903);
        end if;


        if (v_pos_1 >= 160) and (v_pos_1 < v_active) then
            v_factor_a <= 520 - v_pos_1; -- maximum value is 360
        else 
            v_factor_a <= 0;
        end if;

        v_factor_b <= (v_factor_a * v_factor_a)/512; -- maximum value is 253
        -- combine factor_b (depending on the line) and curve (depending on the frame)
        this_curve <= (curve * v_factor_b)/256;
        -- lane is shifted from center of the image (320 pixel plus offset 144)
        center_pos <= 350 + this_curve;

        
------------------------ pipeline stage 1 ------------------------
        
      --h_pos_1 <= h_count - 144;
      v_pos_1 <= v_count -  36;

      --horizontal sync signal
      IF(h_count >= h_active + h_f_porch AND h_count <= h_pixels - h_b_porch) THEN
        h_sync_1 <= h_sync_pol;      -- assert horiztonal sync pulse
      ELSE
        h_sync_1 <= NOT h_sync_pol;  -- deassert horiztonal sync pulse
      END IF;
      
      --vertical sync signal
      IF(v_count < v_active + v_f_porch AND v_count <= v_lines - v_b_porch) THEN
        v_sync_1 <= v_sync_pol;      -- assert vertical sync pulse
      ELSE
        v_sync_1 <= NOT v_sync_pol;  -- deassert vertical sync pulse
      END IF;

      -- blanking time, required, blank when not active
      -- output needs to be blank between the end of the final visible line of a frame
      -- and the beginning of the first visible line of the next frame
      IF(h_count < h_active AND v_count < v_active) THEN
        blank_1 <= '0'; -- blanking off
      ELSE                                                
        blank_1 <= '1'; -- blanking on, rgb black
      END IF;    
            

-- calculate distance of this position from center of the lane
        if (h_count > center_pos) then
            h_gap_1 <= h_count - center_pos;
        else
            h_gap_1 <= center_pos - h_count;
        end if;  

      
        x_value_a <= v_count / 4 + 20;
        x_value_b <= v_count / 4 + 25;
        x_value_c <= v_count / 4 + 32;

        
------------------------ pipeline stage 2 ------------------------
        h_sync_2      <= h_sync_1 ;
        v_sync_2      <= v_sync_1 ;
        blank_2 <= blank_1 ; -- de2 unused outside this file
        
        if (blank_2 = '1') then 
            rgb_2 <= x"000000";
     
        elsif (v_pos_1 < 160) then
            rgb_2 <= rgb_sky;
            
        elsif (h_gap_1 < x_value_a) then
            rgb_2 <= rgb_road;
            
        elsif (h_gap_1 < x_value_b) then
            rgb_2 <= rgb_line;
            
        elsif (h_gap_1 < x_value_c) then
            rgb_2 <= rgb_road;
            
        else
            rgb_2 <= rgb_grass;
        end if;  
          
          
------------------------ pipeline stage 3 (out) ------------------------
        h_sync_out  <= h_sync_2;
        v_sync_out  <= v_sync_2;
        blank_out  <= blank_2; -- de2 unused outside this file
        r_out   <= rgb_2(23 downto 16);
        g_out   <= rgb_2(15 downto  8);
        b_out   <= rgb_2( 7 downto  0);
        
        color_shift_count <= color_shift_count +  1;
        if color_shift_count = 1000000 then
            color_shift_count <= 0 ;
            rgb_sky <= rgb_sky + "1" ;
        end if;
    end process;

end architecture behave;
