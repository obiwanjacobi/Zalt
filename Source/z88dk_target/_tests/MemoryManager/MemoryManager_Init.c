#include "Debug.h"
#include "Memory.h"
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

        MemoryPageFlags flags = MemoryManager_Page_Flags(pageId);
        switch (flags)
        {
        case 0:
            printf("- ");
            break;
        case -1:
            printf("E ");
            break;
        default:
            switch (MemoryPageFlags_Usage(flags))
            {
            case MemoryUsage_System:
                printf("B ");
                break;
            case MemoryUsage_Stack:
                printf("S ");
                break;
            default:
                printf("X ");
                break;
            }
            break;
        }
        ++rowCount;
    }

    printf("\n");
}
