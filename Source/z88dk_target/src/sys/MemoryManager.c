#include "MemoryManager.h"
#include "Debug.h"
#include <stdio.h>

static MemoryPageFlags _pages[256];

void MemoryManager_Init()
{
    MemoryPageId thisPage = 2; // MemoryManager_PageId_FromAddress(MemoryManager_Init);
    MemoryPageIndex fixedPageIndex = 0x0A;
    uint8_t *testAddress = MemoryManager_Page_BasePtr(fixedPageIndex);
    MemoryBankId bankId = 0;
    MemoryManager_Bank_Select(bankId);
    MemoryManager_Bank_SetId(bankId);
    // printf("Test Bank %d - Page index %Xh - Address: %04Xh\n", bankId, fixedPageIndex, testAddress);

    MemoryPageId restoreThisPage = MemoryManager_Page_At(fixedPageIndex);

    for (MemoryPageId pageId = 0; pageId < 255; pageId++)
    {
        if (pageId <= thisPage)
        {
            _pages[pageId] = pageReserved;
        }
        else
        {
            MemoryManager_Page_SetAt(fixedPageIndex, pageId);

            *testAddress = pageId;      // write
            if (*testAddress == pageId) // read back
                _pages[pageId] = pageFound;
            else
                _pages[pageId] = pageNone;
        }
    }

    // put back what was at our test index
    MemoryManager_Page_SetAt(fixedPageIndex, restoreThisPage);
}

MemoryBank *MemoryManager_Bank_Get(ptr_t memory, uint8_t capacity)
{
    MemoryBank *memBank = memory;
    int i;

    dGuardErrVal(memory == NULL, E_ARGNULLOREMPTY, NULL);
    dGuardErrVal(capacity < MemoryBank_size, E_ARGNOTINRANGE, NULL);

    memBank->BankId = MemoryManager_Bank_Selected();

    // assign selected bank for io
    MemoryManager_Bank_SetId(memBank->BankId);

    memBank->Pages[0] = 0; // bios
    for (i = BiosCpuMemoryPageCount; i < MaxCpuMemoryPageCount; ++i)
    {
        memBank->Pages[i] = MemoryManager_Page_At(i);
    }

    return memBank;
}

MemoryBankId MemoryManager_Bank_Push(MemoryBank *bank)
{
    dGuardErrVal(bank == NULL, E_NULLPTR, 0);
    dGuardErrVal(bank->BankId == 255, E_ARGNOTINRANGE, 0);

    bank->BankId++;
    MemoryManager_Bank_SetId(bank->BankId);

    // we could optimize this and only set pages that actually changed
    // but for that we need to keep track of the originals...
    // ...and will the extra checking code be more expensive than the SetPageAt calls?
    for (int i = BiosCpuMemoryPageCount; i < MaxCpuMemoryPageCount; ++i)
    {
        // TODO: test for reserved/fixed pages
        MemoryManager_Page_SetAt(i, bank->Pages[i]);
    }

    MemoryManager_Bank_Select(bank->BankId);
    return bank->BankId;
}

result_t MemoryManager_Bank_Pop(MemoryBankId bankId)
{
    dGuardVal(bankId == 0, E_ARGNOTINRANGE);
    dGuardVal(bankId != MemoryManager_Bank_Selected(), E_ARGNOTINRANGE);

    --bankId;
    MemoryManager_Bank_Select(bankId);
    return S_OK;
}

MemoryPageIndex MemoryManager_Page_IndexFromAddress(ptr_t address)
{
    return ((uint16_t)address & 0xF000) >> 12;
}

MemoryPageId MemoryManager_Page_IdFromAddress(ptr_t address)
{
    return MemoryManager_Page_At(MemoryManager_Page_IndexFromAddress(address));
}

MemoryPageFlags MemoryManager_Page_Flags(MemoryPageId pageId)
{
    return _pages[pageId];
}

ptr_t MemoryManager_Page_BasePtr(MemoryPageIndex pageIndex)
{
    return (ptr_t)(pageIndex << 12);
}
