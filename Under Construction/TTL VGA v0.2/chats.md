User: can you read kicad schematics from file?

GitHub Copilot: Yes, I can read them. Let me look at one: 

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/ZaltTtlVga.sch#1-1), lines 1 to 60

Yes — KiCad schematic files (`.sch`) are plain text in a custom format. I can read, parse, and reason about them just fine. The file above is EESchema format (KiCad v4/v5), which contains:

- **Sheet hierarchy** (`$Sheet` blocks) — sub-schematic references with port/pin definitions
- **Components** (`$Comp` blocks) — placed parts with reference designators, values, and footprints
- **Wires, labels, connections** — netlist topology
- **Text annotations**

Your workspace has a top-level sheet (ZaltTtlVga.sch) with sub-sheets like `LineCounters.sch`, `PixelOutput.sch`, etc.

What would you like me to do with them? For example:
- Extract a netlist or component list
- Describe the circuit topology
- Find specific signals or connections
- Cross-reference with the WinCUPL PLD files

User: I want to know what you think of the schematic.

GitHub Copilot: Let me read all the schematic files in parallel to get the full picture.   

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/ZaltTtlVga.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/PixelOutput.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/LineCounters.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/VideoAddressCounter.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/VideoModes.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/Memory.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/NewBusDecoder.sch)

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/PixelAddressCounter.sch#1-1), lines 1 to 200

Now let me also read the PLD files and remaining sheets quickly to get the full picture.   

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/WinCUPL/BlankMux/BlankMux.pld)

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/WinCUPL/HorizontalDecoder/HorizontalDecoder.pld#1-1), lines 1 to 80

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/BusInterface.sch#1-1), lines 1 to 100

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/WinCUPL/VideoModesMux/VideoModesMuxHi2.pld)

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/WinCUPL/VerticalDecoder/VerticalDecoder.pld#1-1), lines 1 to 100

Here's my overall assessment of the schematic:

---

**Architecture — What it is**

This is a TTL + PLD VGA controller for a Z80 ("Zalt") computer. Target resolution: 640×480@60Hz standard, but with an actual pixel window of **512×384 inside a border** — a smart choice since 512 is a power of two, greatly simplifying address arithmetic.

---

**Timing — Mathematically correct**

The horizontal and vertical decoders check out against the VGA spec:

| Horizontal | Count | |Vertical | Count |
|---|---|---|---|---|
| Window start | 64 | | Window start | 48 |
| Right border | 576 (64+512) | | Bottom border | 432 (48+384) |
| Front porch | 640 | | Front porch | 480 |
| H-sync start | 656 | | V-sync start | 490 |
| Back porch | 752 | | Back porch | 492 |
| End of line | 800 ✓ | | End of frame | 525 ✓ |

The S-R latch idiom inside the G22V10 PLDs for multi-cycle signals is the right approach.

---

**Signal pipeline**

1. **25.175MHz oscillator** (X1) → 74LS393 chains → H0–H9 / V0–V9 counters
2. **HorizontalDecoder / VerticalDecoder** (G22V10 PLDs) → Hblank, Vblank, AddressStrobe, Lstrobe
3. **Video memory address counter** (G22V10 PLDs, 18-bit) → UM61512A SRAM address
4. **VideoModesMux** (G22V10 PLDs) → translates pixel address → memory address based on bits-per-pixel mode
5. **PixelOutput**: 74LS251 mux selects the right bit → palette SRAM lookup → **BlankMux** (GAL16V8) gates output during blanking → 9-bit RGB (R2:0, G2:0, B2:0)

---

**Things done well**

- Exact 25.175MHz pixel clock — correct, not approximated.
- 512×384 window is elegant (power-of-2 simplifies all counters and address math).
- Horizontal and vertical timings are verified correct by the arithmetic.
- Multi-mode color depth (1/2/4/8bpp via VideoModesMux) is well conceived.
- Hardware scroll registers are planned.
- Bus bandwidth: UM61512A is 64K×8 async SRAM (55ns), fast enough at 25MHz pixel clock (40ns cycle) — though this is worth double-checking under worst-case access patterns.

---

**Observations / things to watch**

1. **UM61512A access time at 25.175MHz**: pixel clock period is ~39.7ns. The SRAM needs address-setup + access time to fit within that. The 55ns part is borderline; consider verifying the pipeline latency carefully or using the faster variant.

2. **BlankMux as a PLD**: The GAL16V8 is used as a pure combinational AND gate array. It works, but 8 separate `!Hblank & !Vblank & Dn` terms could equally be an `OR` gate + a 74LS244 with active-low OE — saves a PLD. Unless you plan to add palette logic there later.

3. **Incomplete sheets**: VideoModes.sch (Sheet 4), PixelAddressCounter.sch (Sheet 5), and especially NewBusDecoder.sch (Sheet 8) have missing title blocks, unassigned `U?` references, empty footprints, and explicit `TODO` notes about CPU→VRAM/palette access. These are clearly work in progress.

4. **Palette strobe spelling**: `PalleteRegStrobe` (two l's) appears in the bus decoder comment notes, while the port in PixelOutput is `PaletteRegStrobe` (one l). Worth checking those net names match.

5. **Mode 0 (text mode)** is listed as "reserved — disengages VRAM / CPU access" with no implementation yet. This is the most complex mode and the one that would require the most new logic.

6. **VideoModesMuxHi2 / Lo2 / Mid2** vs the older non-`2` versions both exist in the folder. Make sure the schematic references the correct (newer) JED files when programming.

---

**Overall**: It's a solid, well-reasoned design. The hardest parts (timing arithmetic, PLD state machines, multi-mode address mapping) are done correctly. The main gap is the CPU bus interface / bus decoder, which is marked TODO and is where the most work remains.

User: I was contemplating to replace the 74LS393 line counters with a GAL counter. I had made a prototype with the same 74LS393's but the timing seemed a bit unstable (fluttter?). Do you know of any common ICs that could replace the cascaded counters?

GitHub Copilot: The flutter is almost certainly **ripple carry propagation** in the 74LS393. It's an asynchronous counter — when a carry propagates through multiple stages, each bit transitions sequentially over ~20–30ns per stage. With a 3-stage cascade (12 bits) you can have 60–90ns of glitching on the outputs before they settle. At 25.175MHz (39.7ns period), that's potentially more than one full clock cycle of garbage on the address and decoder inputs.

---

**The standard fix: 74HC163 / 74LS163**

This is the classic synchronous 4-bit binary counter. All outputs change on the same rising clock edge — no ripple at all. Cascading is done by chaining the `RCO` (ripple carry out) into the next stage's `ENT`/`ENP`:

```
U_A (bits 0-3): ENP=1, ENT=1, RCO → U_B ENT
U_B (bits 4-7): ENP=1, ENT=U_A.RCO, RCO → U_C ENT
U_C (bits 8-11): ENP=1, ENT=U_B.RCO
```

Three chips per counter, same count as your current 393 cascade, fully synchronous. The `74HC163` is faster than LS and works well at 25MHz. The `74HCT163` is the TTL-compatible variant if you need to mix with LS logic.

Additional advantage: 163 has a **synchronous parallel load** pin, which lets you implement the modulo-800 / modulo-525 reset cleanly (load 0 on the terminal count) without relying on an async clear glitch.

---

**Other options**

| Part | Bits | Notes |
|---|---|---|
| **74HC163** | 4 (×3) | Best drop-in, synchronous, widely available |
| **74HC191** | 4 | Synchronous up/down, more complex cascade |
| **CD4040** | 12 | Async ripple — worse than 393, avoid |
| **GAL22V10** | up to 10 | Single chip, fully synchronous, see below |

---

**GAL22V10 counter — worth considering for your design**

Since you already have G22V10 PLDs in the design, a single 22V10 can implement a full 10-bit synchronous counter. In CUPL:

```
FIELD count = [Q9..Q0];
$DEFINE COUNT_MAX 'b'1100011111   /* 799 for horizontal */

[Q9..Q0].d = (count < COUNT_MAX) & ([Q9..Q0] + 1)
           # (count >= COUNT_MAX) & 'b'0000000000;
```

You get one chip instead of three, zero ripple, and you could optionally fold the `Hclr`/`Lstrobe` outputs into the same device since you have spare output pins. The tradeoff is that the 22V10 has a propagation delay of ~7–10ns (for a '4' speed grade), so you need to verify setup/hold at 25MHz — it's tight but workable.

---

**Recommendation**

For a straightforward fix: swap the 74LS393s for **74HC163s** with synchronous cascade. Same pin count, same board footprint (DIP-16), eliminates the flutter entirely, and is easy to source. If you want to reduce chip count and you're comfortable with CUPL, the 22V10 counter is an elegant single-chip solution that aligns with the rest of your architecture.

User: What is the propagation delay of a 74HC163 (compared to the 22V10)?

GitHub Copilot: **74HC163** (clock → Q output, at Vcc = 5V):
- Typical: ~7ns
- Maximum: **13ns** (TI/NXP datasheets)

**GAL22V10** depends on speed grade — the registered path (tco: CLK → output) is what matters for a counter:

| Speed grade | tpd (combinational) | tco (CLK→Q, registered) |
|---|---|---|
| -5 | 5ns | ~4ns |
| -7 | 7ns | ~5ns |
| **-10** | 10ns | **~7ns** |
| -15 | 15ns | ~10ns |

So at 25.175MHz (39.7ns period), both are **very comfortable** — the 22V10-10 at 7ns tco and the 74HC163 at 13ns max both settle well within the clock cycle.

The more important number for your use case is the **feedback path** in the 22V10 counter: the registered output feeds back through the AND-OR array before being re-clocked. The constraint is:

$$t_{co} + t_{pd(feedback)} + t_{su} \leq T_{clk}$$

For a -10 grade: ~7 + ~10 + ~5 = **~22ns**, still well within 39.7ns.

**Practical takeaway**: timing is not a concern for either choice at 25MHz. The 74HC163 wins on simplicity and sourcing; the 22V10 wins on chip count if you fold in decoder outputs. The flutter you saw with the 74LS393 was purely the async ripple, which both alternatives eliminate entirely.

User: excellent, thanks.
Another area of concern is contention on accessing the VRAM between the VGA adapter reading- and the Z80 than wants to write to it. I had an idea to make a poor-mans dual-ported RAM but perhaps you have new/good insights?

GitHub Copilot: This is the central challenge of any VGA controller that shares VRAM with the CPU. Let me cover the landscape and then apply it to your specific design.

---

**The core problem**

Your VGA reads VRAM on every pixel clock during the active window (~25.175MHz). The UM61512A at 55ns has essentially 100% bus occupancy during active display. The Z80 trying to write at the same time causes either corrupted pixels or corrupted data, depending on who wins the bus fight.

---

**Common approaches**

**1. Snow / no arbitration**
Just let them fight. The display glitches during writes ("snow"). Used in the original IBM CGA. Unacceptable in practice.

**2. Blanking-only access (simplest)**
Assert Z80's `/WAIT` whenever it accesses VRAM and the display is active. Release during hblank/vblank. The CPU waits up to ~500µs for vblank, or ~30µs for the next hblank. Fine for bulk updates but causes noticeable slowdown.

**3. Wait-state on active display, free during border/blanking**
This is the right fit for *your* design specifically — see below.

**4. Write buffer ("poor man's dual port")**  
CPU writes address+data to a set of latches instantly (no wait states). A small state machine flushes the latch to VRAM during the next free cycle. The CPU only stalls if it tries to write a second time before the first has flushed. Works very well combined with approach 3.

**5. True time-multiplexed interleave**  
Use a 2× oscillator (50.35MHz). VGA gets even half-cycles, CPU gets odd half-cycles. Requires fast SRAM (≤15ns). Elegant but adds complexity and a second oscillator.

**6. True dual-port SRAM**  
IDT71256, CY7C130 etc. — two fully independent ports, hardware arbitration. Solves the problem entirely. Harder to source, more expensive, but drop-in if you can find them.

---

**The insight specific to your design**

Looking at your PLD code, the video address counter only advances when **inside both borders** (not blanking, not border region). That means VRAM is actually idle during:

- Left border: 64 pixels
- Right border: 64 pixels  
- Hblank: 160 pixels
- All vertical border + vblank lines: 45 lines × 800 clocks

That works out to roughly **41% of total frame time** where no VRAM read is occurring. You already have all the signals to detect this:

```
VRAM_FREE = HborderL | HborderR | Hblank | VborderT | VborderB | Vblank
```

All six of those signals already exist as PLD outputs. You can OR them together (one gate, or a spare 22V10 output) to produce a `VRAM_FREE` signal.

The arbitration scheme then becomes:

```
CPU accesses VRAM address space → assert /WAIT
Wait until VRAM_FREE goes high → release /WAIT → CPU completes cycle
```

Worst case wait: the time from mid-active-line to right border — at most ~(512/2)/25.175MHz ≈ **10µs**. Average case far less. For a Z80 at 4–8MHz this is very tolerable.

---

**Combining with your write buffer idea**

A write buffer makes this even better. A single **74HCT574** (8-bit latch) captures the data, and a **74HCT373** (or second 574) captures the address, both clocked when the CPU first asserts the write. The CPU is released immediately. A simple FSM (fits in a spare 22V10) monitors `VRAM_FREE` and flushes latch → SRAM at the next opportunity.

```
CPU write → latch address + data → set PENDING flag → release CPU
VRAM_FREE & PENDING → write latch contents to SRAM → clear PENDING
```

The CPU never waits unless it tries to write again while `PENDING` is still set — unlikely at 4MHz with 41% free bandwidth available.

---

**Recommendation**

For your design the pragmatic path is:

1. Derive `VRAM_FREE` from the existing border/blank signals (one OR gate or a spare PLD output)
2. Use it to gate `/WAIT` on the Z80 for VRAM writes — this alone largely solves contention with minimal logic
3. Optionally add a 74HCT574 write buffer for the cases where you need the CPU released immediately (smooth scrolling routines etc.)

No new SRAM needed, no second oscillator, fits entirely within your existing PLD architecture.

User: My z80 runs at 20MHz ;-) Does your idea still stands?
Oh and my poor-mans dual-ported ram was a different idea - but yours is simpler.
My poor mans dual ported ram idea was to us multiple ram ICs of lower capacity. This means more ram chips but also that arbitration can be handled per chip. I had not fleshed out all the details but the general idea was that VGA and CPU can both access VRAM at the same time as long as they're not accessing the same chip. The smaller you pick the ram chips, the more granularity you get (and higher chip count). I never tried it in practice

GitHub Copilot: **20MHz Z80 — does it still work?**

The real-time free bandwidth doesn't change — the VGA timing is fixed, so you still have ~6.84ms of free SRAM time per frame. The question is per-access latency. At 20MHz, worst-case 10µs wait = **200 Z80 clock cycles** of stalling. For a tight pixel-fill loop that's brutal. The write buffer therefore graduates from "nice to have" to **essentially required** at 20MHz. CPU fires-and-forgets into the latch (no stall), the arbitration logic handles the actual SRAM write asynchronously.

One more issue at 20MHz worth flagging: a 55ns UM61512A may need wait states for the Z80's own bus cycle timing *regardless* of VGA contention — the Z80 at 20MHz has a 50ns clock, and SRAM address-to-data and write pulse timings get very tight. Worth checking against the Z80 bus timing diagram.

---

**Your multi-chip idea — it's real and has a name**

What you're describing is **interleaved memory**. It's used in everything from 1980s DRAMs to modern DDR. The validity depends entirely on **how you interleave**.

The key insight: VGA accesses are **strictly sequential** — it walks through addresses linearly, one per pixel clock. The Z80 accesses are **pseudo-random** from the VGA's perspective.

**Bank interleaving by address bit:**
If you route address bit A0 to select chip A vs chip B (even/odd byte interleave), then VGA accesses them in strict alternation: A, B, A, B... Since VGA spends exactly one pixel clock per chip before switching, the CPU has a 39.7ns window to write to the "other" chip with zero contention — and VGA is never in the same chip for two consecutive clocks. This actually works very well.

```
Addr[0] = 0  →  Chip A        Addr[0] = 1  →  Chip B
VGA cycle:   A  B  A  B  A  B ...
CPU window:  B     A     B     ... (always free)
```

With 2 chips: 50% guaranteed free at any instant. With 4 chips (A1:A0): 75% guaranteed free. Diminishing returns after that.

**The problem with your specific design:**
The VideoModesMux PALs remap pixel addresses to memory addresses in a non-trivial way (your mode notes show A0–A2 selecting pixel data within a byte, with higher bits shifted). The interleave bit selection needs to be on the **post-mux memory address**, not the raw pixel address — otherwise the chip-select logic gets complicated. It's solvable but adds a signal path through the VideoModesMux, which is already close to full on product terms.

**Vs. your VRAM_FREE approach:**
Your multi-chip idea gives **lower and more predictable latency** (CPU rarely waits at all), at the cost of more chips and more routing complexity. The VRAM_FREE + write buffer gives slightly higher occasional latency but is structurally simpler and fits your existing architecture.

For 20MHz, if you want the cleanest solution: 2-chip interleave on the post-mux address LSB + write buffer = near-zero contention with minimal logic added. But VRAM_FREE + write buffer alone is probably sufficient and much simpler to implement.

User: I like the idea of hopping between chips - but I think (gut feeling) you're right that an async buffer/latch would be sufficient, at least for now. thanks

GitHub Copilot: Good call — build the simpler thing first, measure real contention under actual workload, and only add chip-interleaving if the write buffer proves insufficient. A 20MHz Z80 doing full-screen pixel fills is the stress test that would expose it; typical application code will rarely saturate the buffer.

Good luck with the build — it's a nice piece of hardware engineering.

---

User: I would like to know more on the details of implementing a write buffer for vram access (contention with VGA reads). There is also access needed to the palette ram but I guess in principle that would work the same way.
The chat talks about 2 latches, one for data and one for address. But there are more than 8 address lines, so I guess we'll need 3 address latches. 

GitHub Copilot: Let me read the relevant files to understand the address width and current signals before answering.   

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/NewBusDecoder.sch)

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/BusInterface.sch#1-1), lines 1 to 200

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/Memory.sch#1-1), lines 1 to 300

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/Memory.sch#300-300), lines 300 to 600

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/BusInterface.sch#200-200), lines 200 to 500

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/PixelAddressCounter.sch#1-1), lines 1 to 200

Let me also check the PixelOutput sheet for the palette RAM setup:  

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/WinCUPL/VideoBitMux/VideoBitMux.pld)

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/PixelOutput.sch#1-1), lines 1 to 350

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/PixelOutput.sch#350-350), lines 350 to 600

Read [](file:///c%3A/My/MyProjects/Zalt/Under%20Construction/TTL%20VGA%20v0.2/Kicad/PixelOutput.sch#600-600), lines 600 to 728

Now I have the full picture. Here's a detailed write buffer design tailored to your specific hardware:

---

## VRAM Write Buffer — Full Design

### Address bus sizing

From the schematics, the VRAM address is 18 bits (A0–A17):

| Source | Bits | Where it comes from |
|---|---|---|
| Z80 address bus | A0–A11 | 4KB page mapping (MA0–MA11 in BusInterface.sch) |
| Bank register | A12–A17 | CPU I/O write, already latched in a register |
| Total | 18 bits | — |

You noticed the 3-latch question correctly. Here you have a choice:

**Option A — Latch only A0–A11 (2 address latches):**
Since A12–A17 live in a register that only changes via a dedicated I/O instruction (never mid-write-sequence), the bank is always stable when a flush occurs. You can simply read A12–A17 directly from that register at flush time, same as VGA does.
- 2 × 74HCT574: A0–A7 and A8–A11 (4 inputs unused, tied low)
- 1 × 74HCT574: D0–D7

**Option B — Latch all 18 bits (3 address latches):**
Captures a snapshot of the complete address, making the flush fully independent of the bank register. Latching mixes inputs from two buses (Z80 address bus for A0–A11, bank register for A12–A17) but all are stable during the Z80 write cycle, so one simultaneous clock edge captures everything correctly.
- 3 × 74HCT574: A0–A7, A8–A15 (A8–A11 from Z80, A12–A15 from bank reg), A16–A17 (6 inputs unused)
- 1 × 74HCT574: D0–D7

Option A is simpler and pragmatically correct. Option B saves you from a subtle bug if code ever updates the bank register before the previous flush completes (possible in theory with tight I/O loops at 20MHz). Both are valid.

---

### The address MUX problem

This is the step that's easy to overlook. During a flush cycle you need the write-buffer latch addresses — not the VGA counter addresses — on the SRAM address bus. The video address counter PLDs (22V10 in PixelAddressCounter.sch) currently drive A0–A17 directly as push-pull outputs.

The cleanest solution uses the **tri-state output enable** on the 22V10:

In your existing `BinaryCounterHi.pld` / `BinaryCounterLo.pld`, add a `FLUSH` input and gate every counter output:

```cupl
PIN 1  = CLK;
PIN 2  = FLUSH;        /* new input: FSM asserts this during flush */
...
[Q9..Q0].oe = !FLUSH;  /* tri-state counter outputs during flush */
```

This is a one-line CUPL change per counter PLD and costs nothing in chip count. During flush, the counter outputs float, and the 74HCT574 latches (which already have active-low /OE pins) drive the SRAM address bus instead. No new MUX chips needed.

If you'd rather not retool the counter PLDs, add 3 × 74HCT244 between the counter outputs and the SRAM address inputs. The FSM controls the /OE.

---

### Data bus path

The data latch (1 × 74HCT574 capturing D0–D7) needs to drive the SRAM data pins during flush. Looking at BusInterface.sch, there are already 74LS245 transceivers on the VRAM data bus. You can repurpose the direction/OE control on those: during a flush, the FSM asserts the direction toward SRAM and enables the transceiver, placing the latched data on the SRAM's DQ pins.

---

### FSM — fits in a single GAL16V8

Six state bits / signals to generate; a GAL16V8 is sufficient:

```cupl
Name     VramWriteBuffer_FSM;
Device   G16V8;

PIN 1  = CLK;           /* 25.175MHz VGA clock */
PIN 2  = VRAM_FREE;     /* from existing PLD: Hblank | Vblank | borders */
PIN 3  = CPU_VRAM_WR;   /* bus decoder: CPU is writing to VRAM address space */

PIN 19 = PENDING;       /* registered: write is buffered, not yet flushed */
PIN 18 = /WAIT_CPU;     /* to Z80 /WAIT pin (active high = stall) */
PIN 17 = LATCH_OE;      /* connects to LATCH /OE: enable during flush */
PIN 16 = VGA_ADDR_EN;   /* connects to counter PLD FLUSH input */
PIN 15 = SRAM_WE;       /* generates the SRAM /WE pulse */
PIN 14 = FLUSH_DONE;    /* internal: single-cycle pulse to close flush */

PENDING.d  = (CPU_VRAM_WR & !PENDING)  /* set on CPU write  */
           # (PENDING & !FLUSH_DONE);  /* hold until flushed */

FLUSH_DONE = PENDING & VRAM_FREE;      /* pulse: one VGA clock, flush happens */

WAIT_CPU   = PENDING & CPU_VRAM_WR;   /* only wait if buffer still full */

LATCH_OE   = PENDING & VRAM_FREE;     /* enable latch outputs during flush */
VGA_ADDR_EN = !LATCH_OE;             /* counter drives bus at all other times */

SRAM_WE    = PENDING & VRAM_FREE;     /* /WE pulse toward SRAM */
```

The latch clock on all 74HCT574s is `CPU_VRAM_WR` (the CPU write strobe, qualified by VRAM chip-select from the bus decoder). Data is captured on the rising edge of that signal — one clean edge at the start of the CPU write.

---

### Timing at 20MHz

At 20MHz the Z80 write cycle is ~200ns (4 clocks). VGA free time starts at the right border (~40ns × 64 pixels = 2.5µs after the active window ends). The flush takes 2–3 VGA clock cycles (~80–120ns). So:

$$t_{wait,worst} \approx \frac{512}{2} \times 39.7\,\text{ns} \approx 10\,\mu\text{s}$$
$$t_{flush} \approx 3 \times 39.7\,\text{ns} \approx 120\,\text{ns}$$

The buffer drains ~83× faster than the worst-case fill rate. `/WAIT` is only ever asserted if the CPU fires two consecutive VRAM writes faster than ~10µs apart — which in a tight pixel-fill inner loop is possible, but in that case the stall is just a single inter-write gap, not cumulative.

---

### Palette RAM

From PixelOutput.sch, the palette SRAM (UM61512A) uses:

| Bits | Source |
|---|---|
| PalA0–PalA3 | VideoBitMux 22V10 output (pixel value from VRAM) |
| PalA4–PalA11 | Existing 74HCT574 register (CPU selects active palette page) |
| PD0–PD7 | 8-bit color data (R3G3B2) |

The principle is identical to VRAM. The CPU writes palette entries (color values to PD0–PD7), and the VGA reads those same locations every pixel clock. The contention window is the same.

A small practical difference: palette writes are infrequent (scene setup, not per-frame rendering), so even the simpler `/WAIT until VRAM_FREE` without a full write buffer may be acceptable for the palette. If you want parity, the same FSM structure works with a 2 × 74HCT574 address latch (PalA0–PalA7, PalA8–PalA11) and shared or replicated FSM.

You could share one GAL16V8 FSM for both by adding a `TARGET_SEL` bit that distinguishes VRAM vs. palette flush destinations, if SRAM /WE and bus control for both are separate signals.

---

### Component summary

| Qty | Part | Function |
|---|---|---|
| 2–3 | 74HCT574 | Address latch (2 for A0–A11 only, 3 for full A0–A17) |
| 1 | 74HCT574 | Data latch D0–D7 |
| 1 | GAL16V8 | PENDING FSM, /WAIT, flush sequencer |
| — | CUPL change | Add `FLUSH` pin to counter PLDs for tri-state (no new chips) |

The existing 74LS245 transceivers in BusInterface.sch handle the data bus direction — no new bus chips needed if their OE/DIR is wired into the FSM outputs.