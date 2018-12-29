# To-do list

## System Controller

* CPU-clock in fast mode does not work on divider 0 and 1. `cd-0` is now > 20 Mhz so we have to change that, but why does `cd-1` not work? Looks like (scope) the clock signal is corrupted (too much capacitance?) at these high settings. Test with PSoC removed from Zalt circuit.

* Add debug (hardware)logic to trap reading and writing to/from address 0. Check M1 to make sure code execution is ok.
* Check MemorayManager Table initialization. At startup/power on the `mm get` reports all pages mapped to 255?
* [Done] Monitor MMU IO addresses to intercept table changes and update the current selected mem bank etc.

## Virtual Devices

* File System Virtual Device

## System Logic (CPLD)

* Look at the MemoryDecoder. I am using hard 0's and 1's there. Think the 1's should be Z's! (5V tollerance)
    Amazing the chip is still working...
