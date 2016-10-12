transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/marc/Documents/Projects/Personal/CannedBytes/Hardware/Z80 Computer/Source/SystemLogic/SystemLogic.vhd}

