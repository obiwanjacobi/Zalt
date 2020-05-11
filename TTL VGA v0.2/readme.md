# Zalt TTL VGA

A hybrid TTL/GAL design for making a VGA adapter for the Zalt computer.

- Lower bits per pixel to 4 bits / 16 colors
- Use A0 of VRAM counter to select nibbles (hi/lo 4-bits).
- Display lines twice by not using A7 of the VRAM address counter.
- Fix timing issues in picture. Transitions are skewed and garbage at end. Memory address and VGA pixel position out of sync.
- Design palette RAM and DAC
- Interface Palette RAM to CPU
- Scroll registers for VRAM address counters (addressClr => addressLoad on Vertical Decoder)
- Add an off-switch (register) to turn (disengage) of VGA VRAM reading and let CPU have access.
- Look into Video Modes: Graphic modes, taking less colors more pixels. Character mode: 80 col with extensive char-ROM(s)
- Vertical Blank Interrupt with IM2 vector register (dipswitch).
