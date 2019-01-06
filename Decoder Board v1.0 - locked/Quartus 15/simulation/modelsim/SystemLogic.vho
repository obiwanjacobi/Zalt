-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "01/06/2019 08:27:44"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	SystemLogic IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic_vector(15 DOWNTO 0);
	ma : IN std_logic_vector(7 DOWNTO 0);
	n_wr : IN std_logic;
	n_rd : IN std_logic;
	n_memreq : IN std_logic;
	n_ioreq : IN std_logic;
	n_busreq : BUFFER std_logic;
	n_busack : IN std_logic;
	n_cpuhalt : IN std_logic;
	n_cpuwait : IN std_logic;
	n_cpum1 : IN std_logic;
	n_cpurefresh : IN std_logic;
	n_cpuint : IN std_logic;
	n_cpunmi : IN std_logic;
	n_reset : BUFFER std_logic;
	n_mbe : BUFFER std_logic_vector(3 DOWNTO 0);
	n_memmapen : BUFFER std_logic;
	n_memmapoe : BUFFER std_logic;
	n_memmapwe : BUFFER std_logic;
	n_maptabledata : BUFFER std_logic;
	memmapld : BUFFER std_logic;
	n_maptableoe : BUFFER std_logic;
	iomemmapld : BUFFER std_logic;
	n_iomaptableoe : BUFFER std_logic;
	memrdtablesel : BUFFER std_logic;
	sparetablesel : BUFFER std_logic;
	sysctrltablesel : BUFFER std_logic;
	ctrl : BUFFER std_logic_vector(1 DOWNTO 0);
	io : BUFFER std_logic_vector(7 DOWNTO 0);
	io_ex : BUFFER std_logic_vector(16 DOWNTO 0)
	);
END SystemLogic;

-- Design Ports Information
-- clk	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[0]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[1]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[2]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[3]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_rd	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_busack	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_cpuhalt	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_cpuwait	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_cpum1	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_cpurefresh	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_cpuint	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_cpunmi	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_mbe[0]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_mbe[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_mbe[2]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_mbe[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_memmapen	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_memmapoe	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_memmapwe	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_maptabledata	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- memmapld	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_maptableoe	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iomemmapld	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_iomaptableoe	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- memrdtablesel	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sparetablesel	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sysctrltablesel	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_busreq	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- n_reset	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ctrl[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ctrl[1]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[0]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[2]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[3]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[4]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[5]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[6]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io[7]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[0]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[1]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[3]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[4]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[6]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[8]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[9]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[10]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[11]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[12]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[13]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[14]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[15]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- io_ex[16]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ma[6]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[7]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_memreq	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[5]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ma[4]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_ioreq	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n_wr	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SystemLogic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ma : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n_wr : std_logic;
SIGNAL ww_n_rd : std_logic;
SIGNAL ww_n_memreq : std_logic;
SIGNAL ww_n_ioreq : std_logic;
SIGNAL ww_n_busreq : std_logic;
SIGNAL ww_n_busack : std_logic;
SIGNAL ww_n_cpuhalt : std_logic;
SIGNAL ww_n_cpuwait : std_logic;
SIGNAL ww_n_cpum1 : std_logic;
SIGNAL ww_n_cpurefresh : std_logic;
SIGNAL ww_n_cpuint : std_logic;
SIGNAL ww_n_cpunmi : std_logic;
SIGNAL ww_n_reset : std_logic;
SIGNAL ww_n_mbe : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n_memmapen : std_logic;
SIGNAL ww_n_memmapoe : std_logic;
SIGNAL ww_n_memmapwe : std_logic;
SIGNAL ww_n_maptabledata : std_logic;
SIGNAL ww_memmapld : std_logic;
SIGNAL ww_n_maptableoe : std_logic;
SIGNAL ww_iomemmapld : std_logic;
SIGNAL ww_n_iomaptableoe : std_logic;
SIGNAL ww_memrdtablesel : std_logic;
SIGNAL ww_sparetablesel : std_logic;
SIGNAL ww_sysctrltablesel : std_logic;
SIGNAL ww_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_io : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_io_ex : std_logic_vector(16 DOWNTO 0);
SIGNAL \n_memreq~combout\ : std_logic;
SIGNAL \memoryDecoder|nMBE~4_combout\ : std_logic;
SIGNAL \memoryDecoder|nMBE~5_combout\ : std_logic;
SIGNAL \memoryDecoder|nMBE[1]~6_combout\ : std_logic;
SIGNAL \memoryDecoder|nMBE[2]~7_combout\ : std_logic;
SIGNAL \memoryDecoder|nMBE[3]~8_combout\ : std_logic;
SIGNAL \n_wr~combout\ : std_logic;
SIGNAL \n_ioreq~combout\ : std_logic;
SIGNAL \memoryCtrl|memMapIo~2_combout\ : std_logic;
SIGNAL \memoryCtrl|memMapIo~1_combout\ : std_logic;
SIGNAL \memoryCtrl|memMapIo~0_combout\ : std_logic;
SIGNAL \memoryCtrl|memMapIo~3_combout\ : std_logic;
SIGNAL \memoryCtrl|nMemMapOE~1_combout\ : std_logic;
SIGNAL \memoryCtrl|memMapIoData~combout\ : std_logic;
SIGNAL \memoryCtrl|MemMapLd~1_combout\ : std_logic;
SIGNAL \memoryCtrl|IoMemMapLd~1_combout\ : std_logic;
SIGNAL \ma~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memoryCtrl|ALT_INV_memMapIoData~combout\ : std_logic;
SIGNAL \memoryCtrl|ALT_INV_nMemMapOE~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_a <= a;
ww_ma <= ma;
ww_n_wr <= n_wr;
ww_n_rd <= n_rd;
ww_n_memreq <= n_memreq;
ww_n_ioreq <= n_ioreq;
n_busreq <= ww_n_busreq;
ww_n_busack <= n_busack;
ww_n_cpuhalt <= n_cpuhalt;
ww_n_cpuwait <= n_cpuwait;
ww_n_cpum1 <= n_cpum1;
ww_n_cpurefresh <= n_cpurefresh;
ww_n_cpuint <= n_cpuint;
ww_n_cpunmi <= n_cpunmi;
n_reset <= ww_n_reset;
n_mbe <= ww_n_mbe;
n_memmapen <= ww_n_memmapen;
n_memmapoe <= ww_n_memmapoe;
n_memmapwe <= ww_n_memmapwe;
n_maptabledata <= ww_n_maptabledata;
memmapld <= ww_memmapld;
n_maptableoe <= ww_n_maptableoe;
iomemmapld <= ww_iomemmapld;
n_iomaptableoe <= ww_n_iomaptableoe;
memrdtablesel <= ww_memrdtablesel;
sparetablesel <= ww_sparetablesel;
sysctrltablesel <= ww_sysctrltablesel;
ctrl <= ww_ctrl;
io <= ww_io;
io_ex <= ww_io_ex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\memoryCtrl|ALT_INV_memMapIoData~combout\ <= NOT \memoryCtrl|memMapIoData~combout\;
\memoryCtrl|ALT_INV_nMemMapOE~1_combout\ <= NOT \memoryCtrl|nMemMapOE~1_combout\;

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(5),
	combout => \ma~combout\(5));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_memreq~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_memreq,
	combout => \n_memreq~combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(7),
	combout => \ma~combout\(7));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(6),
	combout => \ma~combout\(6));

-- Location: LC_X5_Y4_N5
\memoryDecoder|nMBE~4\ : maxii_lcell
-- Equation(s):
-- \memoryDecoder|nMBE~4_combout\ = (!\n_memreq~combout\ & (((!\ma~combout\(7) & !\ma~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \n_memreq~combout\,
	datac => \ma~combout\(7),
	datad => \ma~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryDecoder|nMBE~4_combout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(4),
	combout => \ma~combout\(4));

-- Location: LC_X5_Y4_N4
\memoryDecoder|nMBE~5\ : maxii_lcell
-- Equation(s):
-- \memoryDecoder|nMBE~5_combout\ = ((\ma~combout\(5)) # ((\ma~combout\(4)) # (!\memoryDecoder|nMBE~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ma~combout\(5),
	datac => \memoryDecoder|nMBE~4_combout\,
	datad => \ma~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryDecoder|nMBE~5_combout\);

-- Location: LC_X5_Y4_N2
\memoryDecoder|nMBE[1]~6\ : maxii_lcell
-- Equation(s):
-- \memoryDecoder|nMBE[1]~6_combout\ = ((\ma~combout\(5)) # ((!\ma~combout\(4)) # (!\memoryDecoder|nMBE~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ma~combout\(5),
	datac => \memoryDecoder|nMBE~4_combout\,
	datad => \ma~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryDecoder|nMBE[1]~6_combout\);

-- Location: LC_X5_Y4_N9
\memoryDecoder|nMBE[2]~7\ : maxii_lcell
-- Equation(s):
-- \memoryDecoder|nMBE[2]~7_combout\ = (((\ma~combout\(4)) # (!\memoryDecoder|nMBE~4_combout\)) # (!\ma~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ma~combout\(5),
	datac => \memoryDecoder|nMBE~4_combout\,
	datad => \ma~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryDecoder|nMBE[2]~7_combout\);

-- Location: LC_X5_Y4_N6
\memoryDecoder|nMBE[3]~8\ : maxii_lcell
-- Equation(s):
-- \memoryDecoder|nMBE[3]~8_combout\ = (((!\ma~combout\(4)) # (!\memoryDecoder|nMBE~4_combout\)) # (!\ma~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ma~combout\(5),
	datac => \memoryDecoder|nMBE~4_combout\,
	datad => \ma~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryDecoder|nMBE[3]~8_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_wr~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_wr,
	combout => \n_wr~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_ioreq~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_ioreq,
	combout => \n_ioreq~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LC_X5_Y4_N8
\memoryCtrl|memMapIo~2\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|memMapIo~2_combout\ = ((!\n_ioreq~combout\ & (\a~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \n_ioreq~combout\,
	datac => \a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|memMapIo~2_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LC_X4_Y4_N2
\memoryCtrl|memMapIo~1\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|memMapIo~1_combout\ = (\a~combout\(7) & (\a~combout\(6) & (\a~combout\(5) & \a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \a~combout\(6),
	datac => \a~combout\(5),
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|memMapIo~1_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X2_Y4_N2
\memoryCtrl|memMapIo~0\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|memMapIo~0_combout\ = (\a~combout\(1) & (\a~combout\(0) & (\a~combout\(2) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|memMapIo~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LC_X7_Y4_N6
\memoryCtrl|memMapIo~3\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|memMapIo~3_combout\ = (\memoryCtrl|memMapIo~2_combout\ & (\memoryCtrl|memMapIo~1_combout\ & (\memoryCtrl|memMapIo~0_combout\ & \a~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoryCtrl|memMapIo~2_combout\,
	datab => \memoryCtrl|memMapIo~1_combout\,
	datac => \memoryCtrl|memMapIo~0_combout\,
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|memMapIo~3_combout\);

-- Location: LC_X7_Y4_N8
\memoryCtrl|nMemMapOE~1\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|nMemMapOE~1_combout\ = ((\a~combout\(9) & (!\n_wr~combout\ & \memoryCtrl|memMapIo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(9),
	datac => \n_wr~combout\,
	datad => \memoryCtrl|memMapIo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|nMemMapOE~1_combout\);

-- Location: LC_X7_Y4_N5
\memoryCtrl|memMapIoData\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|memMapIoData~combout\ = ((\a~combout\(9) & ((\memoryCtrl|memMapIo~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(9),
	datad => \memoryCtrl|memMapIo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|memMapIoData~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LC_X7_Y4_N4
\memoryCtrl|MemMapLd~1\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|MemMapLd~1_combout\ = (!\a~combout\(8) & (!\a~combout\(9) & (!\n_wr~combout\ & \memoryCtrl|memMapIo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \a~combout\(9),
	datac => \n_wr~combout\,
	datad => \memoryCtrl|memMapIo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|MemMapLd~1_combout\);

-- Location: LC_X7_Y4_N7
\memoryCtrl|IoMemMapLd~1\ : maxii_lcell
-- Equation(s):
-- \memoryCtrl|IoMemMapLd~1_combout\ = (\a~combout\(8) & (!\a~combout\(9) & (!\n_wr~combout\ & \memoryCtrl|memMapIo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \a~combout\(9),
	datac => \n_wr~combout\,
	datad => \memoryCtrl|memMapIo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memoryCtrl|IoMemMapLd~1_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(0));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(2));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ma[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ma(3));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_rd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_rd);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_busack~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_busack);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_cpuhalt~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_cpuhalt);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_cpuwait~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_cpuwait);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_cpum1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_cpum1);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_cpurefresh~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_cpurefresh);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_cpuint~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_cpuint);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n_cpunmi~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_n_cpunmi);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_mbe[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryDecoder|nMBE~5_combout\,
	oe => VCC,
	padio => ww_n_mbe(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_mbe[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryDecoder|nMBE[1]~6_combout\,
	oe => VCC,
	padio => ww_n_mbe(1));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_mbe[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryDecoder|nMBE[2]~7_combout\,
	oe => VCC,
	padio => ww_n_mbe(2));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_mbe[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryDecoder|nMBE[3]~8_combout\,
	oe => VCC,
	padio => ww_n_mbe(3));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_memmapen~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_n_memmapen);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_memmapoe~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|nMemMapOE~1_combout\,
	oe => VCC,
	padio => ww_n_memmapoe);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_memmapwe~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|ALT_INV_nMemMapOE~1_combout\,
	oe => VCC,
	padio => ww_n_memmapwe);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_maptabledata~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|ALT_INV_memMapIoData~combout\,
	oe => VCC,
	padio => ww_n_maptabledata);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\memmapld~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|MemMapLd~1_combout\,
	oe => VCC,
	padio => ww_memmapld);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_maptableoe~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|memMapIoData~combout\,
	oe => VCC,
	padio => ww_n_maptableoe);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\iomemmapld~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|IoMemMapLd~1_combout\,
	oe => VCC,
	padio => ww_iomemmapld);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_iomaptableoe~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \memoryCtrl|ALT_INV_memMapIoData~combout\,
	oe => VCC,
	padio => ww_n_iomaptableoe);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\memrdtablesel~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_memrdtablesel);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sparetablesel~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_sparetablesel);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sysctrltablesel~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_sysctrltablesel);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_busreq~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_n_busreq);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n_reset~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_n_reset);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ctrl[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_ctrl(0));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ctrl[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_ctrl(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(4));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(5));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(6));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io(7));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(4));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(7));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(8));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(9));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(10));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(11));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(12));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(13));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(14));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(15));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\io_ex[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_io_ex(16));
END structure;


