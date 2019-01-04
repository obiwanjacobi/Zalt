#include "Debug.h"
#include "MemoryManager.h"
#include "Thread.h"
#include <stdint.h>
#include <stdio.h>

void main()
{
    Thread_Construct();
    MemoryManager_Init();

    uint8_t rowCount = 0;
    for (MemoryPageId pageId = 0; pageId < 255; pageId++)
    {
        if (rowCount == 8) printf("   ");
        if (rowCount == 16)
        {
            printf("\n");
            rowCount = 0;
        }

        switch (MemoryManager_Page_Flags(pageId))
        {
        case pageNone:
            printf("- ");
            break;
        case pageReserved:
            printf("R ");
            break;
        case pageFound:
            printf("X ");
            break;
        }
        ++rowCount;
    }

    printf("\n");
}
