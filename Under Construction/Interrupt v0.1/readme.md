# Z80 Interrupt Provider

For cases where an IO device does support interrupts and you want to tie into either IM0 or IM2 of the Z80.

The Interrupt Register (74xx574) can be written to for storing an RST instruction (IM0) or an interrupt vector (IM2) using an OUT instruction with the address used in the decoder (GAL) logic. When the IO device triggers its INTerrupt line the Z80 /INT is activated (open collector). When the Z80 acknowledges the interrupt (/IOREQ & /M1) and our device INTerrupt signal is still active (we're the source of the interrupt), the contents of the Register is put on the Z80 data bus. That should cause the Z80 to either execute the RST instruction (IM0) or the interrupt function pointed to by the interrupt vector (IM2).

Note that the GAL can be easily replaced with command 7400 series gates.

The diode is there to be able to isolate our IO device's interrupt from other system interrupts that may be occurring. Alternatively, when the device's interrupt signal is not active-low or needs extra processing (in the GAL - for example honor the Enable signal) the /INT_ALT can be used to activate the Z80 /Int line - using a transistor to make it open collector.

The Enable jumper allows the interrupt processing for this IO device to be enabled or disabled.

## Future enhancements

There is a theoretical change of two devices interrupting at the same time and possibly corrupting the RST/vector data on the data bus. If this becomes a problem then some way of reading back the state of the 'interrupt bit' might be a solution. That would probably require a bigger GAL (22V10).
