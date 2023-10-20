library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
    Port (
        data_in   : in  std_logic_vector(7 downto 0);
        address   : in  std_logic_vector(7 downto 0);
        we        : in  std_logic;
        data_out  : out std_logic_vector(7 downto 0)
    );
end RAM;

architecture Behavioral of RAM is
    type ram_type is array (0 to 255) of std_logic_vector(7 downto 0);
    signal ram : ram_type := (others => "00000000");
begin
    process (address, data_in, we)
        variable addr : integer;
    begin
        addr := to_integer(unsigned(address));

        if we = '1' then
            ram(addr) <= data_in;
        end if;

        data_out <= ram(addr);
    end process;
end Behavioral;
