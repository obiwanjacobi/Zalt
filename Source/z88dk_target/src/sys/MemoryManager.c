#include "MemoryManager.h"
#include "Debug.h"

MemoryBank *MemoryManager_Bank_Get(ptr_t memory, uint8_t capacity)
{
    MemoryBank *memBank = memory;
    int i;

    dGuardErrVal(memory == NULL, E_ARGNULLOREMPTY, NULL);
    dGuardErrVal(capacity < MemoryBank_size, E_ARGNOTINRANGE, NULL);

    // assign selected bank for io
    MemoryManager_Bank_SetId(MemoryManager_Bank_Selected());

    memBank->Pages[0] = 0; // bios
    for (i = BiosCpuMemoryPageCount; i < MaxCpuMemoryPageCount; i++)
    {
        memBank->Pages[i] = MemoryManager_PageAt(i);
    }

    return memBank;
}

MemoryBankId MemoryManager_Bank_Push(MemoryBank *bank)
{
    MemoryBankId bankId = MemoryManager_Bank_Selected();
    int i;

    dGuardErrVal(bank == NULL, E_NULLPTR, 0);

    ++bankId;
    MemoryManager_Bank_SetId(bankId);

    // we could optimize this and only set pages that actually changed
    // but for that we need to keep track of the originals...
    // ...and will the extra checking code be more expensive than the SetPageAt calls?
    for (i = BiosCpuMemoryPageCount; i < MaxCpuMemoryPageCount; i++)
    {
        MemoryManager_SetPageAt(i, bank->Pages[i]);
    }

    MemoryManager_Bank_Select(bankId);
    return bankId;
}

result_t MemoryManager_Bank_Pop(MemoryBankId bankId)
{
    dGuardVal(bankId == 0, E_ARGNOTINRANGE);
    dGuardVal(bankId != MemoryManager_Bank_Selected(), E_ARGNOTINRANGE);

    --bankId;
    MemoryManager_Bank_Select(bankId);
    return S_OK;
}
