C Limitations

- declare all vars at the top of the scope. can be nested.
- no struct by value as method parameter or return value.
- function pointers are untyped (void*). (not true for sdcc?)
- function pointer are always called using standard calling conventions (full stack usage).

If a C compiler error does not make sense, check the code just before the reported location.
This includes expanding include files and other pre-processor directives.



Naming:
-------
capacity, length, size and count:
    capacity: indicates the maximum allocated number of bytes for a buffer used when writing to that buffer.
    length: indicates the number of bytes that comprise the meaningful content of an array (strlen for instance).
    size: is the number of bytes that a data structure takes up in memory when allocated.
    count: is a number that indicates how many elements there are. Not used in memory related functions.

Example: An array can have a capacity of 10 bytes but a length of only 4.
    A data structure may have a size of 6 bytes and allocating a count of two of such structures would require
    memory with the size of 12 bytes.

Function names:
    [object]_[operation]([this], [params])
    Function names start with the name of the (logical) object that works with the 'this' pointer. 
        Note that multiple objects may work with the same (type of) this pointer 
        (StreamWriter and StreamReader both work with Stream).
    The name of the operation that is performed follows. 
    Then the 'this' pointer. Typically use pointers to structs. Exception is strings, use a char* ptr.
    Finally any parameters the operation may need. Always specify capacity or length when working with array
        so the operation may do boundary checking.

    Extended version: [component]_[object]_[operation]([this], [params])

const usage:
    Specify 'const' on all function parameters that are not changed by the execution of that function.
    For structs it means non of the struct-fields are altered. 
    
    Example: String_Compare(const char*, const char*, uint16_t) => compare only reads strings.
