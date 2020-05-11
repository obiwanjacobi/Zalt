#include "Debug.h"
#include "Memory.h"
#include "MemoryManager.h"
#include "Thread.h"
#include <stdint.h>

static MemoryPageFlags _my_page_flags[256];

#define TestPageId 0
#define TestPageLength 255
#define IsActive(pageId) (pageId >= TestPageId && pageId < (TestPageId + TestPageLength))

wait()
{
    int i;
    for(i = 0; i < 0; i++)
    {
        int x= 3.14*3.14;
    }
}

void MyMemoryManager_Null()
{
    for (MemoryPageIndex pageIndex = 0; pageIndex < 16; pageIndex++)
    {
        MemoryManager_Page_SetAt(pageIndex, pageIndex);
    }
}

void My_MemoryManager_AllNull()
{
    MemoryManager_Bank_Select(0);

    for (MemoryPageId bankId = 0; bankId < 255; bankId++)
    {
        MemoryManager_Bank_SetId(bankId);
        MyMemoryManager_Null();
    }
}

void My_MemoryManager_Init()
{
    MemoryPageId thisPage = 3; // MemoryManager_PageId_FromAddress(MemoryManager_Init);
    MemoryPageIndex fixedPageIndex = 0x0A;
    uint8_t *testAddress = 0xA000;
    MemoryBankId bankId = 0;
    MemoryManager_Bank_Select(bankId);
    MemoryManager_Bank_SetId(bankId);

    //MemoryPageId restoreThisPage = MemoryManager_Page_At(fixedPageIndex);

    for (MemoryPageId pageId = 0; pageId < 255; pageId++)
    {
        if (pageId <= thisPage)
        {
            _my_page_flags[pageId] = MakePageFlags(MemoryAccess_Execute, MemoryUsage_System, MemoryStatus_Fixed);
        }
        else if (pageId == 15) // hard-coded for now
        {
            _my_page_flags[pageId] = MakePageFlags(MemoryAccess_ReadWrite, MemoryUsage_Stack, MemoryStatus_Fixed);
        }
        else if (IsActive(pageId))
        {
            MemoryManager_Page_SetAt(fixedPageIndex, pageId);
            //wait();

            *testAddress = pageId; // write
            if (*testAddress == pageId) // read back
                _my_page_flags[pageId] = MakePageFlags(MemoryAccess_ReadWrite, MemoryUsage_None, MemoryStatus_Active);
            else
                _my_page_flags[pageId] = 0; //MakePageFlags(MemoryAccess_None, MemoryUsage_None, MemoryStatus_None);
        }
    }

    // put back what was at our test index
    //MemoryManager_Page_SetAt(fixedPageIndex, restoreThisPage);
}

void DisplayMemoryFlags()
{
    //MemoryBankId bank = MemoryManager_Bank_Selected();
    //printf("Current Bank: %d\n", bank);

    uint8_t colCount = 0;
    for (MemoryPageId pageId = 0; pageId < 255; pageId++)
    {
        if (colCount == 8) dLog("   ");
        if (colCount == 16)
        {
            dLog("\r\n");
            colCount = 0;
        }

        if (!IsActive(pageId))
        {
            dLog(". ");
            ++colCount;
            continue;
        }

        MemoryPageFlags flags = _my_page_flags[pageId];
        switch (flags)
        {
        case 0:
            dLog("- ");
            break;
        case InvalidMemoryPageFlags:
            dLog("E ");
            break;
        default:
            switch (MemoryPageFlags_Usage(flags))
            {
            case MemoryUsage_None:
                if (MemoryPageFlags_Status(flags) == MemoryStatus_None)
                {
                    dLog("- ");
                    break;
                }
                dLog("F ");
                break;
            case MemoryUsage_System:
                dLog("B ");
                break;
            case MemoryUsage_Stack:
                dLog("S ");
                break;
            default:
                dLog("? ");
                break;
            }
            break;
        }
        ++colCount;
    }

    dLog("\r\n");
}

void IterateAllBanks()
{
    uint8_t bankId;

    for(bankId = 0; bankId < 255; bankId++)
    {
        MemoryManager_Bank_Select(bankId);
        wait();
    }
    dLog("\r\n");
}

void main()
{
    Thread_Construct();
    
    //My_MemoryManager_AllNull();

    My_MemoryManager_Init();
    DisplayMemoryFlags();
    
    //IterateAllBanks();
}
