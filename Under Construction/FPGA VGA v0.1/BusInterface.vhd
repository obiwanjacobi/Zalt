library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity BusInterface is
    port(
        clk: std_logic;
        -- cpu bus
        busAddr: in std_logic_vector(19 downto 0);
        busData: in std_logic_vector (7 downto 0);
        n_busWrite: in std_logic;
        n_busMemReq: in std_logic;
        n_busIoReq: in std_logic;
        -- vram bus
        vramEn: in std_logic;
        vramAddr: out std_logic_vector(18 downto 0);
        vramData: out std_logic_vector (7 downto 0);
        n_vramWrite: out std_logic
    );
end entity;

architecture synth of BusInterface is
    
    signal vramAddrUpr: std_logic_vector(5 downto 0);
    signal vramAddrIo: std_logic;
    signal vramAddrMem: std_logic;
    
    constant c_AddrIo: std_logic_vector(7 downto 0) := x"E0";
    constant c_AddrMem: std_logic_vector(19 downto 0) := x"3FFFF";
begin

    vramAddrIo <= '1' 
        when busAddr(7 downto 0) = c_AddrIo and n_busIoReq = '0' and n_busWrite = '0'
        else '0';
    vramAddrMem <= '1'
        when busAddr = c_AddrMem and n_busMemReq = '0' and n_busWrite = '0'
        else '0';
    
    vramReg: entity work.g_register
        generic map (6)
        port map (
            d => busData,
            q => vramAddrUpr,
            clk => vramAddrIo
        );
    
    process(clk)
    begin
        if rising_edge(clk) and vramEn = '1' then
            vramAddr <= (others => 'Z');
            vramData <= (others => 'Z');
            n_vramWrite <= '1';
        else
            vramAddr <= (others => 'Z');
            vramData <= (others => 'Z');
            n_vramWrite <= '1';
        end if;
    end process;

end architecture;