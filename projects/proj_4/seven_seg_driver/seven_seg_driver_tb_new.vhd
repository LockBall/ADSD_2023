-- adjust clock simulation
-- adjust reset

library ieee;
use ieee.std_logic_1164.all;

library seven_seg_driver;
use seven_seg_driver.all;
use seven_seg_driver_pkg.all;

entity seven_seg_driver_tb is

    generic(
        NUM_SEGMENTS : natural := 4
    );

end entity seven_seg_driver_tb;


architecture sim of seven_seg_driver_tb is

        
    signal clk         : std_logic;
    signal rst         : std_logic := '0' ;
    signal input_valid : std_logic;
    signal input       : std_logic_vector((NUM_SEGMENTS * 4)-1 downto 0) := (others => '0');

    signal output_signals   : seven_seg_driver_pkg.seven_seg_config_arr(NUM_SEGMENTS-1 downto 0) := (others => seven_seg_driver_pkg.lamps_off);
    
    
begin

    clk         <= not clk after 10 ns; -- 50 MHz
    rst         <= '1', '0' after 25 ns, '1' after 35 ns ; -- low resets counter, high allows counts
    input_valid <= '1' after 45 ns;

    
    UUT : entity seven_seg_driver.seven_seg_driver
    
        generic map(
          INPUT_BIT_WIDTH => NUM_SEGMENTS*4
        )
        
        port map(
            clk             => clk,
            rst             => rst,
            input_valid     => input_valid,
            input           => input,
            output_signals  => output_signals
        );
    -- end UUT

    -- provide 32 to the generic map to tell the ssd that you are sending it a 32 bit value
    --ssd: seven_seg_driver generic map(INPUT_BIT_WIDTH => 32)
    --    port map (clk => clk, rst => rst, input_valid => input_valid, input => input);

end architecture sim;