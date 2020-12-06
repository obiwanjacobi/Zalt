library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity g_register is
 generic(
    Width: integer := 8
 );
 port(
    clk: in std_logic;
    d: in std_logic_vector(Width - 1 downto 0);
    q: out std_logic_vector(Width -1 downto 0)
 );
end entity;

architecture synth of g_register is
    
begin

    process(clk)
    begin
        if rising_edge(clk) then
            q <= d;
        end if;
    end process;

end architecture;