-- adjust clock simulation
-- adjust reset

library ieee;
use ieee.std_logic_1164.all;

library seven_seg_driver;
use seven_seg_driver.all;
use seven_seg_driver_pkg.all;

entity seven_seg_driver_tb is

    generic(
        INPUT_BIT_WIDTH: natural := 32
    );

    port (
        clk: in std_logic -- should be driven by pins
    );

end entity seven_seg_driver_tb;

architecture behavior of seven_seg_driver_tb is

    component seven_seg_driver is
        generic(
            INPUT_BIT_WIDTH: natural := 0
        );
        port(
            clk             : in  std_logic;
            rst             : in  std_logic;
            input_valid     : in  std_logic;
            input           : in  std_logic_vector(INPUT_BIT_WIDTH-1 downto 0)                   := (others => '0');

            output_signals  : out seven_seg_config_arr(get_num_segs(INPUT_BIT_WIDTH)-1 downto 0) := (others => lamps_off)
        );
    end component;

    -- set to zero to make sure rst is off
    signal rst: std_logic := 0;

    -- pretend like the data we are sending it is valid
    signal input_valid: std_logic := 1;

    variable input: std_logic_vector (INPUT_BIT_WIDTH-1 to 0) := (others => '0');

begin

    -- provide 32 to the generic map to tell the ssd that you are sending it a 32 bit value
    ssd: seven_seg_driver generic map(INPUT_BIT_WIDTH => 32)
        port map (clk => clk, rst => rst, input_valid => input_valid, input => input);

end architecture behavior;