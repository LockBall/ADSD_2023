library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity top_level is
    generic ( --needs to be first
        constant ro_count : positive range 3 to 37 := 15 --RO use ODD to get even # ring osc
    );
    port (
        clock        : in std_logic; --P11 50 MHZ
        reset_btn    : in std_logic;
        tl_enable    : buffer std_logic := '0';
        pulse        : buffer std_logic := '0';
        req_resp_out : buffer std_logic;
        done_LED     : out std_logic := '0';
        response     : buffer std_logic
    );
end entity top_level;

architecture RTL of top_level is
    type t_resp_ary is array (natural range <>) of std_logic;
    signal resp_ary : t_resp_ary(0 to 128);

    signal tl_count       : natural := 0;
    signal tl_count_reset : std_logic := '0';
    signal done           : std_logic := '0';
    signal initial_reset  : std_logic := '0';
    signal reset          : std_logic;
    signal resp_cnt       : natural := 0;
    signal chal_lft       : std_logic_vector(0 to 5) := "000000";
    signal chal_rit       : std_logic_vector(0 to 5) := "000001";

    -- RAM access variables
	 type ram_type is array (0 to 511) of std_logic; 
    signal challenge       : std_logic_vector(0 to 5);
    signal reset_active    : std_logic := '0';
    signal enable_active   : std_logic := '0';
    signal probe_delay     : time := 0.0 ms;  -- probe delay set to 0 for now
	 signal read_data       : std_logic_vector(7 downto 0); -- read_data function for output of RAM data
    signal store_result    : std_logic;

begin


    ro_puf : entity work.ro_puf port map ( --ro_puf 00 -> top level
        clock       => clock,
        reset       => reset_active,    -- reset signal
        enable      => enable_active,   -- enable signal
        pulse       => pulse,
        chal_lft    => chal_lft,
        chal_rit    => chal_rit,
        req_resp_in => req_resp_out,
        response    => response
    );
	 
	 
	 RAM_inst : RAM port map (
		data_in     => ram_data_in,
		address     => ram_address,
		we          => ram_we,
		data_out    => ram_data_out
	);
	 
    process(clock)
    begin
	 
        if rising_edge(clock) then
		  
            if (reset_btn = '0') then
				
                initial_reset <= '1';
                reset <= '0';
            end if;

            if (done = '0') AND (initial_reset = '1') then
				
                case tl_count is
					 
                    when 1 =>
                        reset_active <= '1';  -- T1: Assert reset to ro_puf => '1' active low
                        enable_active <= '0'; -- enable => '0' active signal 
                        pulse <= '0'; -- pulse deasserted
                        store_result <= '0';  -- store_result flag cleared
                        challenge <= chal_lft; -- challenge => ro_puf
                        tl_enable <= '0'; -- signal disabled

                
					 when 3 =>
                        reset_active <= '0';  -- T3: Deassert reset
                        enable_active <= '0'; -- T4: Assert enable i.e active signal 
                        tl_enable <= '1';
                        pulse <= '1';

                  
						when 8 =>
                        store_result <= '1';  -- T5: Set store_result flag
                        req_resp_out <= '1';  -- T2: Provide challenge

                  
						when 10 =>
                        resp_ary(resp_cnt) <= response; -- Store the result
                        resp_cnt <= resp_cnt + 1;
                        req_resp_out <= '0';  -- T6: Deassert req_resp_out

                   
						 when 15 =>
                        if to_integer(unsigned(chal_rit)) = ro_count - 1 then
								
                            done <= '1';
									 
                        elsif to_integer(unsigned(chal_rit)) = ro_count then
								
                            chal_lft <= chal_lft + 1;
                            chal_rit <= chal_lft + 2;
                     
							else
                            chal_rit <= chal_rit + 1;
                    
						  end if;

                    when others =>
                end case;

                if tl_count_reset = '1' then
					 
                    tl_count <= 0;
                    tl_count_reset <= '0';
						  
                else
                    tl_count <= tl_count + 1;
						  
              
				  end if;
            end if;

            if done = '1' then
				
                done_LED <= '1';
					 
            end if;

           if store_result = '1' then

    ram_data_in <= resp_ary(resp_cnt); --write data => RAM
    ram_address <= challenge;
    ram_we <= '1'; 
end if; 
    
    if ram_we = '0' then
	 
        ram_address <= challenge;  -- Provide the address for reading
        ram_data_in <= (others => '0');  -- input cleared
        ram_we <= '0';  -- read function enabled
        
        wait for probe_delay;
        
        -- Data read from RAM will be available in ram_data_out
        read_data <= ram_data_out;  
    end if;
end if;
    end process;
end architecture RTL;
