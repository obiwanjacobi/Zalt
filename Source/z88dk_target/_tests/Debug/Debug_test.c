#include "Debug.h"
#include "Thread.h"
#include <stdint.h>
#include <stdio.h>

void main()
{
    Thread_Construct();

    printf("BreakPoint:");
    dBreakpoint();

    printf("The End.");
}
