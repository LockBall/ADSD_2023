library ieee;
use ieee.std_logic_1164.all;

entity tb_TDPDC_RAM is
end tb_TDPDC_RAM;

architecture tb of tb_TDPDC_RAM is

    component TDPDC_RAM

        generic(
            DATA_WIDTH : natural := 8;
            ADDR_WIDTH : natural := 6
        );
        
        port(
            clk_a   : in std_logic;
            clk_b   : in std_logic;
            addr_a  : in natural range 0 to 2**ADDR_WIDTH - 1;
            addr_b  : in natural range 0 to 2**ADDR_WIDTH - 1;
            data_a  : in std_logic_vector((DATA_WIDTH-1) downto 0);
            data_b  : in std_logic_vector((DATA_WIDTH-1) downto 0);
            we_a    : in std_logic := '1';
            we_b    : in std_logic := '1';
            q_a     : out std_logic_vector((DATA_WIDTH -1) downto 0);
            q_b     : out std_logic_vector((DATA_WIDTH -1) downto 0)
        );
    
    end component TDPDC_RAM;
    
    -- constants
    constant DATA_WIDTH : integer   := 8;
    constant ADDR_WIDTH : integer   := 6;
    
    -- signals
    signal clock_50     : std_logic := '0' ;
    
    
    -- inputs
    signal clk_a    : std_logic;
    signal clk_b    : std_logic;
    signal addr_a   : natural range 0 to 2**ADDR_WIDTH - 1;
    signal addr_b   : natural range 0 to 2**ADDR_WIDTH - 1;
    signal data_a   : std_logic_vector((DATA_WIDTH-1) downto 0);
    signal data_b   : std_logic_vector((DATA_WIDTH-1) downto 0);
    signal we_a     : std_logic := '1';
    signal we_b     : std_logic := '1';
    
    -- outputs
    signal q_a      : std_logic_vector((DATA_WIDTH -1) downto 0);
    signal q_b      : std_logic_vector((DATA_WIDTH -1) downto 0);

    
  begin
  
    clk_a <= clock_50 ;
    clk_b <= clock_50 ;
    
    clock_50 <= not clock_50 after 10 ns;
  
    
  
    UUT : TDPDC_RAM  -- entity work.
        port map(
            clk_a   => clk_a,
            clk_b   => clk_b,
            addr_a  => addr_a,
            addr_b  => addr_b,
            data_a  => data_a,
            data_b  => data_b,
            we_a    => we_a,
            we_b    => we_b,
            q_a     => q_a,
            q_b     => q_b
        );
  

end architecture tb;