#include "Debug.h"
#include "MemoryManager.h"
#include "Thread.h"
#include <stdint.h>
#include <stdio.h>

void main()
{
    Thread_Construct();

    uint8_t buffer[MemoryBank_size];
    MemoryBank *bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
    if (bank != NULL)
    {
        result_t r;
        MemoryPageIndex index = 8;
        MemoryBankId bankId = MemoryManager_Bank_Selected();

        printf("Bank: %d, Page at %d = %d\n", bankId, index, bank->Pages[index]);

        bank->Pages[index] = 20;
        bankId = MemoryManager_Bank_Push(bank);
        if (bankId == 0)
        {
            r = Error_Get();
            printf("Push Bank failed: %s (%Xh)\n", Error_ToText(r), r);
            return;
        }
        bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
        printf("New Bank: %d, Page at %d = %d\n", bankId, index, bank->Pages[index]);

        r = MemoryManager_Bank_Pop(bankId);
        if (Failed(r))
        {
            printf("Pop Bank failed: %s (%Xh)\n", Error_ToText(r), r);
            return;
        }

        bankId = MemoryManager_Bank_Selected();
        bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
        printf("old Bank: %d, Page at %d = %d\n", bankId, index, bank->Pages[index]);
    }
}
