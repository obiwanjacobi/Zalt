# To-do list

## System Controller

* CPU-clock in fast mode does not work on divider 0 and 1. `cd-0` is now > 20 Mhz so we have to change that, but why does `cd-1` not work? Looks like (scope) the clock signal is corrupted (too much capacitance?) at these high settings. Test with PSoC removed from Zalt circuit.

* Add debug (hardware)logic to trap reading and writing to/from address 0. Check M1 to make sure code execution is ok.

## Virtual Devices

* File System Virtual Device
