C Limitations

- declare all vars at the top of the scope. can be nested.
- no struct by value as method parameter or return value.
- function pointers are untyped (void*). (not true for sdcc?)
- function pointer are always called using standard calling conventions (full stack usage).

If a C compiler error does not make sense, check the code just before the reported location.
This includes expanding include files and other pre-processor directives.

