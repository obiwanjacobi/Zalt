library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Controller is
  port(
    pixelClk: in std_logic;
    syncHor: out std_logic := '0';
    syncVer: out std_logic := '0';
    addrStrb: out std_logic := '0';
    addrEn: out std_logic := '0'
  );
end entity;

architecture synth of Controller is

  signal countH: std_logic_vector(9 downto 0) := (others => '0');
  signal countV: std_logic_vector(9 downto 0) := (others => '0');

  signal enableAddrStrb: std_logic := '0';
  
-- line (horizontal)
  constant c_borderL: std_logic_vector(9 downto 0) := "0000000000";
  constant c_windowH: std_logic_vector(9 downto 0) := "0001000000";
  constant c_borderR: std_logic_vector(9 downto 0) := "1001000000";
  constant c_frontPH: std_logic_vector(9 downto 0) := "1010000000";
  constant c_syncH  : std_logic_vector(9 downto 0) := "1010010000";
  constant c_backPH : std_logic_vector(9 downto 0) := "1011110000";
  constant c_line   : std_logic_vector(9 downto 0) := "1100100000";
-- frame (vertical)
  constant c_borderT: std_logic_vector(9 downto 0) := "0000000000";
  constant c_windowV: std_logic_vector(9 downto 0) := "0000110000";
  constant c_borderB: std_logic_vector(9 downto 0) := "0110110000";
  constant c_frontPV: std_logic_vector(9 downto 0) := "0111100000";
  constant c_syncV  : std_logic_vector(9 downto 0) := "0111101010";
  constant c_backPV : std_logic_vector(9 downto 0) := "0111101100";
  constant c_frame  : std_logic_vector(9 downto 0) := "1000001101";
begin
  
  process(pixelClk)
  begin
    if rising_edge(pixelClk) then
      countH <= countH + 1;

      if countH = c_line then
        countH <= c_borderL;
        countV <= countV + 1;
      end if;
      if countV = c_frame then
        countV <= c_borderT;
      end if;
      
      if countH = c_syncH then
        syncHor <= '1';
      elsif countH = c_backPH then
        syncHor <= '0';
      end if;

      if countH = c_windowH then
        enableAddrStrb <= '1';
      elsif countH = c_borderR then
        enableAddrStrb <= '0';
      end if;

      if countV = c_syncV then
        syncVer <= '1';
      elsif countV = c_backPV then
        syncVer <= '0';
      end if;

      if countV = c_windowV then
        addrEn <= '1';
      elsif countV = c_borderB then
        addrEn <= '0';
      end if;
    end if;

  end process;

  addrStrb <= pixelClk and enableAddrStrb;
end architecture;