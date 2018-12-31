# sccz80 vs. sdcc

## calling convention (fast call, callee etc)

- both support: normal, fast, callee
- normal: push params, call fn (hl/ix+/-), pop params
- callee: push params, call fn (pop params), caller resumes
- fast: param in dehl, call fn (dehl), caller resumes

for sdcc it is postfix:
    `char* myfn() __z88dk_callee;`
    `uint8_t myfn2() __z88dk_fastcall;`

for sccz80 it is prefix (beware of return pointers!):
    `char __CALLEE__ * myfn();`     <= between ret-type and ptr '*'!!
    `uint8_t __FASTCALL__ myfn2();`

### Return Value

retval: dehl contains retval. (crt:Carry set when error)
retval can be in BCDEHL' (exx) for 48 bit floats (sccz80).

## parameter stack order

- sdcc: right to left
- sccz80: left to right

## symbol naming

C symbol/function names are prefixed with an '_'