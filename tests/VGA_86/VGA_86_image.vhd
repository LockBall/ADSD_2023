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
        clock_25   : in  std_logic;
        clock_40   : in  std_logic;
        reset      : in  std_logic;
        v_sync_out : out std_logic;
        h_sync_out : out std_logic;
        blank_out  : out std_logic; -- unused outside this file, included for testbench
        --r_out      : out std_logic_vector(7 downto 0);
        r_out      : out std_logic_vector(3 downto 0) := "1111";
        g_out      : out std_logic_vector(3 downto 0) := "0000";
        b_out      : out std_logic_vector(3 downto 0) := "1111"

        --g_out      : out std_logic_vector(7 downto 0);
       -- b_out      : out std_logic_vector(7 downto 0)
    );
    
end entity VGA_86_image;


architecture behave of VGA_86_image is

    signal clock : std_logic ;

    -- rgb values
    signal   rgb_sky   : std_logic_vector(23 downto 0) := x"A0D0F0" ;  -- 24 bit, A0D0F0
    constant rgb_grass : std_logic_vector(23 downto 0) := x"20C040" ;
    constant rgb_road  : std_logic_vector(23 downto 0) := x"808080" ;
    constant rgb_line  : std_logic_vector(23 downto 0) := x"FFFF80" ;
    
    constant h_active  : natural := (h_pixels - (h_f_porch + h_pulse + h_b_porch) );
    constant v_active  : natural := (v_lines - (v_f_porch + v_pulse + v_b_porch) );

    
    signal   color_shift_count : natural := 0 ;
    signal   rgb_vals          : std_logic_vector(11 downto 0) := "000000000000"; -- r, g, b
    signal   rgb_vals_count    : std_logic_vector(11 downto 0) := "000000000000"; -- r, g, b
    
    signal   r_vals          : std_logic_vector(3 downto 0) := "0000";
    signal   r_vals_count    : std_logic_vector(3 downto 0) := "0000";
    signal   g_vals          : std_logic_vector(3 downto 0) := "0000";
    signal   g_vals_count    : std_logic_vector(3 downto 0) := "0000";    
    signal   b_vals          : std_logic_vector(3 downto 0) := "0000";
    signal   b_vals_count    : std_logic_vector(3 downto 0) := "0000";
    
    signal   h_count     : natural range 0 to (h_pixels - 1) := 0; 
    signal   v_count     : natural range 0 to (v_lines - 1)  := 0;
    signal   frame_count : natural range 0 to 60 := 0;
    signal   new_frame   : std_logic := '0';
    
    
    signal square_h_pos : natural range 0 to h_active := 0;
    signal square_v_pos : natural range 0 to v_active := 0;


    -- signals for pipeline stages
    signal h_sync_1, v_sync_1, blank_1 : std_logic;
    signal h_sync_2, v_sync_2, blank_2 : std_logic;

    --signal rgb_2     : std_logic_vector(23 downto 0);
    signal r_0, r_1, r_2, g_0, g_1, g_2, b_0, b_1, b_2 : std_logic_vector(3 downto 0) := x"1" ;
    

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
               -- r_vals       <= "0000" ;
               -- r_vals_count <= "0000" ;
               -- g_vals       <= "0000" ;
               -- g_vals_count <= "0000" ;
               -- b_vals       <= "0000" ;
              --  b_vals_count <= "0000" ;                
                
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
            
            
    process(clock) -- pipeline-stages for generation of image content and sync-signals
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
            
           -- r_2 <= r_1;
           -- g_2 <= g_1;
            --b_2 <= b_1;
            
            if (blank_2 = '1') then 
                -- rgb_2 <= x"000000";
                --rgb_vals <= "000000000000" ;
                r_vals <= "0000";
                g_vals <= "0000";
                b_vals <= "0000";
                
            --elsif 
            --    h_count >= square_h_pos + 100 AND
            --    h_count <= square_h_pos + 200 AND
            --    v_count >= square_v_pos + 100 AND
            --    v_count <= square_v_pos + 200 
            --    then
            --    rgb_vals <= NOT rgb_vals_count ; --"001100110111" ; -- blurple
                

            else 
                --rgb_vals <= rgb_vals_count ;
                r_vals <= r_vals_count;
                g_vals <= g_vals_count;
                b_vals <= b_vals_count;
                
                if color_shift_count = 10000000 then
                   -- rgb_vals_count <= rgb_vals_count + "1";
                   
                   
                    if r_vals_count < "1111" then
                        r_vals_count <= r_vals_count + "1";
                    elsif r_vals_count = "1111" then
                    
                        if g_vals_count < "1111" then
                            g_vals_count <= g_vals_count + "1";
                        elsif g_vals_count = "1111" then
                        
                            if b_vals_count < "1111" then
                                b_vals_count <= b_vals_count + "1";
                            elsif b_vals_count = "1111" then
                               r_vals_count <= r_vals_count + "1";
                               g_vals_count <= g_vals_count + "1";
                               b_vals_count <= b_vals_count + "1";
                            end if;
                            
                        end if;
                        
                    end if;
                    
                                        
                    
                    
                  --  square_h_pos <= square_h_pos + 1 ;
                  --  square_v_pos <= square_v_pos + 1 ;
                    
                    color_shift_count <= 0 ;
                    --rgb_sky <= rgb_sky + "1" ;
                else
                    color_shift_count <= color_shift_count +  1;
                end if;

            end if;      
            
  
------------------------ pipeline stage 3 (out) ------------------------
            h_sync_out <= h_sync_2;
            v_sync_out <= v_sync_2;
            blank_out  <= blank_2;
            
            r_out <= r_vals;
            g_out <= g_vals;
            b_out <= b_vals;
            
        
        end if; -- rising_edge(clock) pipeline stages
    end process;

end architecture behave;