library ieee;
use ieee.std_logic_1164.all;

--    The MemoryController:
--    - Detects IO addresses to switch on/off mem-map registers and map data access


entity MemoryController is
port
(
        nIOREQ : in std_logic;
        nRD : in std_logic;
        nWR : in std_logic;
        A : in std_logic_vector(15 downto 0);
        
        nMemMapEn: out std_logic;               -- MemMapEn; chip enable memory map ram
        nMemMapOE: out std_logic;               -- MemMapOe; output enable memory map ram
        nMemMapWE: out std_logic;               -- MemMapWe; write enable memory map ram
        nMapTableData: out std_logic;           -- MapTableData; enable data lines to memory map ram (direction is hardwired)
        MemMapLd: out std_logic;                -- MemMapLd; load data into memory map table addressing
        nMapTableOE: out std_logic;             -- MapTableOE; output enable memory map table addressing
        IoMemMapLd: out std_logic;              -- IOMemMapLd; load data into io register of memory map table addressing
        nIoMapTableOE: out std_logic;           -- IOMapTableOE; output enable io reg of memory map table addressing
        MemRdTableSel: out std_logic            -- MemRdTableSel; switches between read and write mem-map tables (in normal operation this is !RD)

);

end entity MemoryController;


architecture MemoryController_rtl OF MemoryController is

    signal memMapIo: std_logic;             -- a mem-map io request is active on the correct address range
    signal memMapIoData: std_logic;         -- the mem-map-data io request is active
    signal memMapIoTable: std_logic;        -- the mem-map-table select io request is active
    signal memMapIoTableIo: std_logic;      -- the mem-map-io-table select io request is active
    constant openTrue: std_logic := 'Z';
    constant openFalse: std_logic := '0';
    
begin

        -- io address map: addresses 0CFF - FFFF are reserved for IO with mem-map.
        -- hi nibble is lower address lines on the mem map ram.
        -- low nibble IO address meaning:
        --    111x: mem-map data (rd/wr)    (use hi-nibble for indexing table)
        --        x => read/write tables (0=rd/1=wr)
        --    1100: mem-map table
        --    1101: mem-map io table

        -- there is an IOREQ on the mem-map address range
        memMapIo <= '1' 
            when nIOREQ = '0' and A(7 downto 0) = "11111111" and A(11 downto 10) = "11" 
            else '0';
        -- mem map io data address
        memMapIoData <= '1' 
            when memMapIo = '1' and A(9) = '1' 
            else '0';
        -- mem map table sel address
        memMapIoTable <= '1' 
            when memMapIo = '1' and A(9 downto 8) = "00" 
            else '0';
        -- mem map io table sel address
        memMapIoTableIo <= '1' 
            when memMapIo = '1' and A(9 downto 8) = "01" 
            else '0';
        
        -- rd table sel is tied to rd except on data IO then its 'x' in the above table
        -- MemRdTableSel <= nRD when memMapIoData = '0' else A(8);
        MemRdTableSel <= openTrue;    -- disable for now
        
        
        -- the mem-map-ram is always enabled
        nMemMapEn <= openFalse; 
        -- the output is always enabled except when we're writing data to the ram
        nMemMapOE <= openTrue 
            when memMapIoData = '1' and nWR = '0' 
            else openFalse;
        -- write data to the mem-map
        nMemMapWE <= openFalse 
            when memMapIoData = '1' and nWR = '0' 
            else openTrue;
    
        -- activate table data rd/wr
        nMapTableData <= openFalse 
            when memMapIoData = '1' 
            else openTrue;
    
        -- mem-map table loads register when IO is output
        MemMapLd <= openTrue 
            when memMapIoTable = '1' and nWR = '0' 
            else openFalse;
        -- mem-map table outputs except when IO register is in active use
        nMapTableOE <= openTrue 
            when memMapIoData = '1' 
            else openFalse;

        -- mem-map io table loads register when IO is output
        IoMemMapLd <= openTrue 
            when memMapIoTableIo = '1' and nWR = '0' 
            else openFalse;
        -- mem-map io table outputs when table data rd/wr is acitve
        nIoMapTableOE <= openFalse 
            when memMapIoData = '1' 
            else openTrue;


end architecture MemoryController_rtl;
