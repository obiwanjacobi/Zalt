library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity vram is
    port(
        -- write port
        addrIn: in std_logic_vector(19 downto 0);
        dataIn: in std_logic_vector(7 downto 0);
        n_write: in std_logic;
        -- read port
        addrOut: in std_logic_vector(18 downto 0);
        dataOut: out std_logic_vector(15 downto 0);
        n_read: in std_logic;
        -- external sram
        sramAddr: in std_logic_vector(18 downto 0);
        sramData: in std_logic_vector(15 downto 0);
        n_sramWrite: in std_logic;
        n_sramRead: in std_logic
    );
end entity;

architecture synth of vram is

begin


end architecture;