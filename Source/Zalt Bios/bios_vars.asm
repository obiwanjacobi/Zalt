;
; lists all addresses of system variables
;

; bios vars from $0040 till $0060

defc	bios_var_base		=	$0040
defc	bios_var_ram_top	=	bios_var_base	+	$00		; 2 bytes
defc	bios_var_ram_page	=	bios_var_base	+	$02		; 1 byte

