library ieee;
use ieee.std_logic_1164.all;

-- Prefix 'n_' means active low (for instance 'n_rd')


-- root/top entity
entity SystemLogic is

	port (
		clk: in std_logic;								-- master clock (20MHz)
		
		--
		-- System Bus
		--
		a: in std_logic_vector(15 downto 0);		-- address bus
		ma: in std_logic_vector(7 downto 0);		-- memory address MA19-MA12 (extended memory address bus)
		
		n_wr: in std_logic;				-- !WR
		n_rd: in std_logic;				-- !RD
		n_memreq: in std_logic;			-- !MEMREQ
		n_ioreq: in std_logic;			-- !IOREQ
		n_busreq: inout std_logic := 'Z';		-- !BUSREQ
		n_busack: in std_logic;			-- !BUSACK
		n_cpuhalt: in std_logic;		-- !HALT
		n_cpuwait: in std_logic;		-- !WAIT
		n_cpum1: in std_logic;			-- !M1
		n_cpurefresh: in std_logic;	-- !REFRESH
		n_cpuint: in std_logic;			-- !INT
		n_cpunmi: in std_logic;			-- !NMI
		n_reset: inout std_logic  := 'Z';		-- !RESET
		
		--
		-- memory management logic
		--
		n_mbe: out std_logic_vector(3 downto 0) := "ZZZZ";		-- CPU memory bank (chip) enable lines (64k)
		n_memmapen: out std_logic := 'Z';				-- MemMapEn; chip enable memory map ram
		n_memmapoe: out std_logic  := 'Z';				-- MemMapOe; output enable memory map ram
		n_memmapwe: out std_logic := 'Z';				-- MemMapWe; write enable memory map ram
		n_maptabledata: out std_logic := 'Z';			-- MapTableData; enable data lines to memory map ram (direction is hardwired)
		memmapld: out std_logic := 'Z';					-- MemMapLd; load data into memory map table addressing
		n_maptableoe: out std_logic := 'Z';			-- MapTableOE; output enable memory map table addressing
		iomemmapld: out std_logic := 'Z';				-- IOMemMapLd; load data into io register of memory map table addressing
		n_iomaptableoe: out std_logic := 'Z';			-- IOMapTableOE; output enable io reg of memory map table addressing
		memrdtablesel: out std_logic := 'Z';			-- MemRdTableSel; switches between read and write mem-map tables (in normal operation this is !RD)
		sparetablesel: out std_logic := 'Z';			-- SpareTableSel; a spare table select (currently not used).
		sysctrltablesel: out std_logic := 'Z';		-- SysCtrlTableSel; master table select to allow alternate mem-map tables for DMA (SysCtrl).
		
		--
		-- reserved
		--
		ctrl: inout std_logic_vector(1 downto 0) := "ZZ";			-- ctrl lines on bushdr-a
		io: inout std_logic_vector(7 downto 0) := "ZZZZZZZZ";			-- general purpose io on bushdr-b
		io_ex: inout std_logic_vector(16 downto 0) := "ZZZZZZZZZZZZZZZZZ"		-- general purpose io on system-io hdr
		
	);

end entity SystemLogic;



architecture SystemLogic_rtl of SystemLogic is

begin

	-- direct instantiation of MemoryController entity
	memoryCtrl: entity work.MemoryController(MemoryController_rtl)
					port map (nIOREQ=>n_ioreq, nRD=>n_rd, nWR=>n_wr, A=>a, 
								 nMemMapEn=>n_memmapen, nMemMapOE=>n_memmapoe, nMemMapWE=>n_memmapwe,
								 nMapTableData=>n_maptabledata, MemMapLd=>memmapld, nMapTableOE=>n_maptableoe,
								 IoMemMapLd=>iomemmapld, nIoMapTableOE=>n_iomaptableoe, MemRdTableSel=>memrdtablesel);

								 
	-- direct instantiation of MemoryDecoder entity
	memoryDecoder: entity work.MemoryDecoder(MemoryDecoder_rtl)
						port map (nMEMREQ=>n_memreq, MA=>ma, nMBE=>n_mbe);
						
	-- direct instantiation of TestMemoryDecoder entity
--	memoryDecoder: entity work.TestMemoryDecoder(TestMemoryDecoder_rtl)
--						port map (nMEMREQ=>n_memreq, nMBE=>n_mbe);
	
	-- unused	
	sparetablesel <= '0';
	sysctrltablesel <= '0';
								 

end architecture SystemLogic_rtl;