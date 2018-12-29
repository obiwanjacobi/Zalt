#include "../../src/sys/MemoryManager.h"
#include <stdint.h>
#include <stdio.h>

void main()
{
    uint8_t buffer[MemoryBank_size];
    MemoryBank *bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
    if (bank != NULL)
    {
        MemoryBankId newBankId;
        MemoryPageIndex index = 8;
        MemoryBankId bankId = MemoryManager_Bank_Selected();

        printf("Bank: %d, Page at %d = %X\n", bankId, index, bank->Pages[index]);

        bank->Pages[index] = bank->Pages[index] + 1;
        newBankId = MemoryManager_Bank_Push(bank);
        bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
        printf("New Bank: %d, Page at %d = %X\n", newBankId, index, bank->Pages[index]);

        MemoryManager_Bank_Pop(newBankId);
        bank = MemoryManager_Bank_Get(buffer, MemoryBank_size);
        bankId = MemoryManager_Bank_Selected();
        printf("old Bank: %d, Page at %d = %X\n", bankId, index, bank->Pages[index]);
    }
}