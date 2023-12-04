
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library seven_seg_driver;
use seven_seg_driver.all;
use seven_seg_driver_pkg.all;



entity seven_seg_driver_tb is
  generic(
    NUM_SEGMENTS : natural := 4
  );
end seven_seg_driver_tb;

architecture tb of seven_seg_driver_tb is
  signal clk : std_logic := '0';
  signal rst : std_logic := '0';

  signal seg_0 : std_logic_vector(3 downto 0) := (others => '0');
  signal seg_1 : std_logic_vector(3 downto 0) := (others => '0');
  signal seg_2 : std_logic_vector(3 downto 0) := (others => '0');
  signal seg_3 : std_logic_vector(3 downto 0) := (others => '0');
  
  ------ UUT interface signals ------
  signal driver_input_tb : std_logic_vector ((NUM_SEGMENTS * 4)-1 downto 0) := (others => '0');
  signal input_valid_tb      : std_logic := '0';
  signal output_signals_tb   : seven_seg_driver_pkg.seven_seg_config_arr(NUM_SEGMENTS-1 downto 0) := (others => seven_seg_driver_pkg.lamps_off);

  ----- Constants -----
  constant CLK_FREQ_HZ  : real      := 1.0e9;
  constant CLK_PERIOD   : time      := 1.0 / CLK_FREQ_HZ * 1 sec;

begin
  clk <= not clk after CLK_PERIOD / 2;

  test_proc : process
    variable test_var : std_logic_vector((NUM_SEGMENTS*4)-1 downto 0);
  begin
    rst <= '1';
    wait for 150 us;

    seg_0 <= X"F";
    seg_1 <= X"A";
    seg_2 <= X"A";
    seg_3 <= X"1";
    test_var := seg_0 & seg_1 & seg_2 & seg_3; -- Not sure why this concatenation isn't working. Frustrating.
    test_var := X"FAA1";
    report "test_var: " & integer'image(to_integer(unsigned(test_var)));
    
    wait for 10 us;
    rst <= '0';
    wait for 10 us;
    rst <= '1';

    driver_input_tb  <= test_var;
    wait for 10 us;
    rst <= '0';
    wait for 10 us;
    rst <= '1';
    wait for 10 us;
    input_valid_tb   <= '1';
    wait for 10 us;
    rst <= '0';
    wait for 25 us;
    input_valid_tb   <= '0';
    rst <= '1';
    wait for 10 us;
    rst <= '0';
    wait for 10 us;
    input_valid_tb   <= '1';
    wait for 10 us;

  end process test_proc;



  UUT : entity seven_seg_driver.seven_seg_driver
    generic map(
      INPUT_BIT_WIDTH => NUM_SEGMENTS*4
    )
    port map(
      clk             => clk,
      rst             => rst,
      input_valid     => input_valid_tb,
      input           => driver_input_tb,
      output_signals  => output_signals_tb
    );
end tb;