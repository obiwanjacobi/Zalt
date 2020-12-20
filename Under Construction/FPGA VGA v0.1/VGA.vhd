library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity VGA is
    port(
        n_reset: in std_logic;
        systemClk: in std_logic;    -- 50MHz
--        pixelClk: in std_logic;     -- 25.175MHz
        
        -- controller
--        syncHor: out std_logic := '0';
--        syncVer: out std_logic := '0';
--        r: out std_logic_vector(2 downto 0);
--        g: out std_logic_vector(2 downto 0);
--        b: out std_logic_vector(1 downto 0);
	 
        -- CpuBus
--        busAddr: in std_logic_vector(19 downto 0);
--        busData: in std_logic_vector(7 downto 0);
--        n_busIoReq: in std_logic;
--        n_busMemReq: in std_logic;
--        n_busRead: in std_logic;
--        n_busWrite: in std_logic;
	 
        -- VRAM
        memAddr: out std_logic_vector(18 downto 0);
        memData: inout std_logic_vector(15 downto 0);
        n_memEnable: out std_logic;
        n_memRead: out std_logic;
        n_memWrite: out std_logic;
        n_byteLoEn: out std_logic;
        n_byteHiEn: out std_logic
  );
end entity;

architecture synth of VGA is
    
--    signal addrStrb: std_logic;
--    signal addrEn: std_logic;

    signal clockDiv: std_logic_vector(1 downto 0) := (others => '0');
    signal slowClk: std_logic := '0';
    
    signal addr: std_logic_vector(15 downto 0) := (others => '0');
begin

    n_memEnable <= '0';
    n_memRead <= '1';

    process(systemClk)
    begin
        if rising_edge(systemClk) then
            clockDiv <= clockDiv + 1;
            
            if clockDiv = "00" then
                if slowClk = '0' then
                    slowClk <= '1';
                else
                    slowClk <= '0';
                end if;
                
                if slowClk = '1' then
                    addr <= addr + 1;
                    
                    memAddr <= addr;
                    memData <= addr;
                    n_memWrite <= '0';
                else
                    n_memWrite <= '1';
                end if;
            end if;
            
        end if;
    end process;

    -- controller
--    ctrlr: entity work.controller
--        port map(
--            pixelClk => pixelClk,
--            syncHor => syncHor,
--            syncVer => syncVer,
--            addrStrb => addrStrb,
--            addrEn => addrEn
--        );

  -- cpu bus interface
  -- external vram (SDRAM controller?)
  -- palette ram (dual port internal?)
  -- pixel RGB 
    -- (external?) DAC/R2R?
    -- pulse density modulation?
    -- DVI-D?
    -- Display port https://github.com/hamsternz/FPGA_DisplayPort
    -- HDMI? https://www.fpga4fun.com/HDMI.html
  
end architecture;


-- systemClk 50MHz => PLL? => pixelClk 25.175 MHZ 
-- =>  controller  => VGA sync => Pixel Strobe
--    Video Modes Matrix => Pixel Counter => VRAM
-- => VData 16 bit => Color Bit selection => Palette => DAC (RGB)
