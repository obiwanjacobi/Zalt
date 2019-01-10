#include "Debug.h"
#include "MemoryFar.h"
#include "MemoryManager.h"
#include "Thread.h"
#include <stdint.h>
#include <stdio.h>

farptr_t ManuallySetFarMemData()
{
    uint8_t buffer[MemoryBank_size];
    MemoryBank *bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
    if (bank != NULL)
    {
        result_t r;
        MemoryPageIndex index = 8;
        MemoryBankId bankId = MemoryManager_Bank_Selected();
        bank->Pages[index] = 20;

        bankId = MemoryManager_Bank_Push(bank);
        if (bankId == 0)
        {
            r = Error_Get();
            printf("Push Bank failed: %s (%Xh)\n", Error_ToText(r), r);
            return NULL;
        }

        uint8_t *address = 0x8000;
        *address = 42;
        farptr_t fp = MemoryManager_FarPtr_Construct(address);

        r = MemoryManager_Bank_Pop(bankId);
        if (Failed(r))
        {
            printf("Pop Bank failed: %s (%Xh)\n", Error_ToText(r), r);
            return NULL;
        }

        return fp;
    }

    return NULL;
}

void main()
{
    Thread_Construct();
    MemoryManager_Init();

    farptr_t fp = ManuallySetFarMemData();
    if (fp != NULL)
    {
        uint8_t *address = fp;
        // read far memory
        uint8_t val = *address;
        printf("FarMem value %d (should be 42)\n", val);

        // write far memory
        *address = 122;
        val = *address;
        printf("FarMem value %d (should be 122)\n", val);
    }
}