# TODO Zalt Bios

* [Done] remove asm vars from page0. Page0 will be read-only.
    => Moved vars to separate file/section system_data.asm
* look at filling gaps between rst addresses
* MemmoryManager
    * Fill memory with $FF
    * Write bank data to read and write tables (see also system-logic)
    * Extend API to allow virtual allocs with flags (in prep of module loading)
    * Decide on an execution file format and module loader.

* Investigate the zx-next target: *The zx next target has its 2MB memory divided in two ways as 16k banks or 8k pages (so two naming systems for the same memory) and an independent memory space in 8k chunks that can only appear at address 0x2000. In this system, there are rules attached to the section names mapped to these memory regions. Some naming rules enforce 16k or 8k boundaries and another allows code or data to flow to succeeding banks or pages. Other naming rules allow you to create new section names that are inside the machine's banks. So you can define section names inside BANK 40, for example, and even an ORG so that the relative placement inside the 16K bank is specified. The linker will sequence stuff inside each bank appropriately. The target also has exe forms that can describe what's in memory arbitrarily so appmake automatically makes exes that can cover the full 2MB space. BTW for this target, it's found better to have the programmer decide which banks things should be placed in rather than the linker and I think that will turn out to be the case generally. There is an exe type where the operating system loads into available memory banks instead of absolute ones but the programmer still allocates to banks, though they are logical rather than physical bank numbers.*

* investigate zobjcopy and appmake utilities for making `exe` file formats
* [Done] fix DEBUG define in asm (also add -Cl-D option)
* [Done] remove bios_var_ram_top asm var - always at least 64k available.
* [Done] remove bios_var_ram_active_page - now managed by memorymanager
* z88dk target
    * [Done] Migratie to new target file layout
    * Move as much asm code as possible from m4 files into asm files. Then include the asm files into the m4 file(s)
    * How to work with variable clock speed (config_cpu.m4/__CPU_CLOCK)?
    * Have crt/startup in target library - not swappable
    * Strip out most of the c-runtime lib (what we're not using)
    * library function implementations into a single file. Linker uses the source file boundary to include/exclude code.

## Issues

Bigger issues:

* System Controller generated CPU clock is not max 20MHz but higher. Up to `cd=2` it works, above that the system becomes unstable.
    [Fixed] At `cd=2` MMU glitches

### Timing issue with U101 (possibly U102)
At fast clock `cd=3` the latching of the value into U101 is unreliable.
The 74HTC573 latches the data (D0-D7) when the LE/Load transisitions from HIGH to LOW.
This signal is produced by the SystemLogic (MaxII) using IOREQ, WR and the address decoding.
The Z80 timing for the Output instruction (P24/25 of Z80 User Manual) indicates that a problem could exist when the IOREQ and WR lines go HIGH (inactive) in the last part of the last cycle (of the out instruction). I think the data (at higher CPU clock speeds) is unstable at that time.

Seems that U101 LE is triggered during data writes into the MemBankRam. Putting a 10k pullup on U101-LE fixes it (fast clock `cd=2`).
But why?