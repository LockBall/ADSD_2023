-- street_image.vhd
--
-- generate an VGA-image of a street scene
--
-- FPGA Vision Remote Lab http://h-brs.de/fpga-vision-lab
-- (c) Marco Winzker, Hochschule Bonn-Rhein-Sieg, 02.05.2019

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity VGA_86_image is

    generic(
        h_pixels : integer := 800; -- total horiztonal display width in pixels
        v_lines : integer := 525   -- total vertical display height in lines
    );

    port (clk_25 : in  std_logic;
        reset    : in  std_logic;
        v_sync_out   : out std_logic;
        h_sync_out   : out std_logic;
        de_out   : out std_logic; -- unused outside this file, included for testbench
        r_out    : out std_logic_vector(7 downto 0);
        g_out    : out std_logic_vector(7 downto 0);
        b_out    : out std_logic_vector(7 downto 0)
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
 
 
    -- 800 x 600, 60 Hz, 40 MHz pixel frequency
        -- horizontal timing:
                -- sync: 0 - 127
                -- active: 144 - 783
                
        -- vertical timing:
                -- sync: 0 -  3
                -- active:  36 - 515

    
    -- rgb values
    constant rgb_sky  : std_logic_vector(23 downto 0) := x"A0D0F0";
    constant rgb_gras : std_logic_vector(23 downto 0) := x"20C040";
    constant rgb_road : std_logic_vector(23 downto 0) := x"808080";
    constant rgb_line : std_logic_vector(23 downto 0) := x"FFFF80";

    
    -- 640 x 480 # of pixels
    -- h_count 799 ∵ 800
    -- v_count 524 ∵ 525
    -- frame_num 1023
    
    -- 800 x 600 # of pixels
    -- h_count 1055 ∵ 1056
    -- v_count 627 ∵ 628
    -- frame_num   

    
    signal h_count   : integer range 0 to (h_pixels - 1) := 0; 
    signal v_count   : integer range 0 to (v_lines - 1)  := 0;
    signal frame_num : integer range 0 to 1023 := 0;
    signal new_frame : std_logic := '0';

    signal center_pos : integer range 0 to (h_pixels - 1);

    -- signals for pipeline stages
    signal h_sync_1, v_sync_1, disp_enable_1 : std_logic;
    signal h_sync_2, v_sync_2, disp_enable_2 : std_logic;

    signal h_pos_1   : integer range -200 to (h_pixels - 1);
    signal v_pos_1   : integer range -200 to (v_lines - 1) ;
    signal h_gap_1                          : integer range    0 to 1023;
    signal x_value_a, x_value_b, x_value_c  : integer range    0 to 1023;

    signal rgb_2     : std_logic_vector(23 downto 0);


    signal v_factor_a   : integer range 0 to 511;
    signal v_factor_b   : integer range 0 to 255;
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
          h_count <= 0;
          if ( v_count = (v_lines - 1)  ) then
            v_count     <= 0;
            new_frame   <= '1';                
          else
            v_count <= v_count + 1;
          end if; -- v_count
        else  
          h_count <= h_count + 1;
        end if; -- h_count
            
            
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


      if (v_pos_1 >= 160) and (v_pos_1 < 480) then
        v_factor_a <= 520 - v_pos_1; -- maximum value is 360
      else 
        v_factor_a <= 0;
      end if;
      
      v_factor_b <= (v_factor_a * v_factor_a)/512; -- maximum value is 253
      -- combine factor_b (depending on the line) and curve (depending on the frame)
      this_curve <= (curve * v_factor_b)/256;
      -- lane is shifted from center of the image (320 pixel plus offset 144)
      center_pos <= 464 + this_curve;
      
      ------------------------------------ pipeline stage 1
      if ( h_count < 96 ) then
        h_sync_1 <= '1';
      else
        h_sync_1 <= '0';
      end if;

      
      if ( v_count < 2 ) then
        v_sync_1 <= '1';
      else
        v_sync_1 <= '0';
      end if;

      -- enable signal, determines if image is active
        if ( h_count >= 144 ) and
            ( h_count <  784 ) and
            ( v_count >=  36 ) and
            ( v_count <  516 ) then
            disp_enable_1 <= '1';
        else
            disp_enable_1 <= '0';
        end if;
        
      h_pos_1 <= h_count - 144;
      v_pos_1 <= v_count -  36;
      
-- calculate distance of this position from center of the lane
        if (h_count > center_pos) then
            h_gap_1 <= h_count - center_pos;
        else
            h_gap_1 <= center_pos - h_count;
        end if;  

      
        x_value_a <= v_count/4 + 20;
        x_value_b <= v_count/4 + 25;
        x_value_c <= v_count/4 + 32;

------------------------------------ pipeline stage 2
        h_sync_2 <= h_sync_1;
        v_sync_2 <= v_sync_1;
        disp_enable_2 <= disp_enable_1;
          
        if (disp_enable_2 = '0') then
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
            rgb_2 <= rgb_gras;
        end if;  
          
------------------------------------ pipeline stage 3 (out)
        h_sync_out  <= h_sync_2;
        v_sync_out  <= v_sync_2;
        de_out  <= disp_enable_2; -- unused outside this file, included for testbench
        r_out   <= rgb_2(23 downto 16);
        g_out   <= rgb_2(15 downto  8);
        b_out   <= rgb_2( 7 downto  0);
          
    end process;

end architecture behave;
