#include "MemoryCommands.h"
#include "BusController.h"
#include "MemoryController.h"

#include <stdlib.h>

typedef struct  // extended Memory struct
{
    // Memory
    uint16_t Address;
    uint8_t* Buffer;
    uint16_t Length;
    // extension
    uint16_t SpinCountTimeout;
    
} WriteMemory;

//
// DMA Commands
//

uint16_t DmaParseCommandParameters(RingBuffer* buffer, TerminalCommand* command)
{
    uint16_t bytesRead = 0;
    command->Address = 0;
    command->Length = 0;
    command->Param3 = 0;
    
    if (!RingBuffer_IsEmpty(buffer))
    {
        char* endPtr = NULL;
        uint8_t temp[10];
    
        bytesRead += CommandParser_Read(buffer, temp, 9);
        command->Address = strtoul((const char*)temp, &endPtr, 16);
        
        if (!RingBuffer_IsEmpty(buffer))
        {
            bytesRead += CommandParser_Read(buffer, temp, 9);
            command->Length = strtoul((const char*)temp, &endPtr, 16);
            
            if (!RingBuffer_IsEmpty(buffer))
            {
                bytesRead += CommandParser_Read(buffer, temp, 9);
                command->Param3 = strtoul((const char*)temp, &endPtr, 16);
            }
        }
    }
        
    return bytesRead;
}


uint8_t MemoryWrite_WriteByte(void* ctx, uint8_t data)
{
    WriteMemory* mem = (WriteMemory*)ctx;
    
    if (mem->Length == 0 && mem->SpinCountTimeout != 0)
    {
        MemoryController_WriteByte((Memory*)mem, data);
        mem->Length = 0;
        return 1;
    }
    else
    {
        MemoryController_WriteByte((Memory*)mem, data);
    
        return mem->Length > 0;
    }
}

uint16_t MemoryRead_CopyToTerminal(uint16_t address, uint16_t length)
{
    const uint8_t BufferSize = 0xFF;
    uint8_t buffer[BufferSize];
    uint8_t l;
    uint16_t bytesRead = 0;
    Memory mem;
    mem.Buffer = buffer;
    
    while(length > 0)
    {
        l = length > BufferSize ? BufferSize : length;
                
        mem.Address = address + bytesRead;
        mem.Length = l;
        
        MemoryController_Read(&mem);
        SysTerminal_PutArray(mem.Buffer, mem.Length);
        
        length -= l;
        bytesRead += l;
    }
    
    return bytesRead;
}

//
// Memory Write
//
// => 'mw' <Address> <Length>
// <= "ACK"
// => blob
// <= bytes
uint16_t MemoryWrite_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    WriteMemory mem;
    mem.Address = command->Address;
    mem.Buffer = NULL;
    mem.Length = command->Length;
    mem.SpinCountTimeout = mem.Length == 0 ? 0x2FF : 0;
    
    // signal ready to receive file
    SerialTerminal_WriteLine(ACK);
    BusState busState;
    BusController_Open(&busState);
    
    uint16_t bytesRead = 0;
    BusController_EnableDataBusOutput(1);
    
    // block until all bytes have been read
    while(mem.Length > 0 || mem.SpinCountTimeout > 0)
    {
        bytesRead += SerialTerminal_ReceiveBlob(&mem, MemoryWrite_WriteByte);
        
        if (bytesRead > 0 && mem.Length == 0 && mem.SpinCountTimeout > 0)
        {
            CyDelay(1);
            mem.SpinCountTimeout--;
        }
    }
    
    BusController_EnableDataBusOutput(0);
    
    MemoryRead_CopyToTerminal(command->Address, bytesRead);
    
    BusController_Close(&busState);
    
    SerialTerminal_WriteLine(NULL);
    SerialTerminal_WriteLine(OK);
    
    return 0;
}



//
// Memory Read
//
// => 'mr' <Address> <Length>
// <= blob
uint16_t MemoryRead_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    // some default for no length specified
    if (command->Length == 0)
    {
        command->Length = 0xFF;
    }
    
    BusState busState;
    BusController_Open(&busState);
    
    MemoryRead_CopyToTerminal(command->Address, command->Length);
    
    BusController_Close(&busState);
    
    SerialTerminal_WriteLine(NULL);
    SerialTerminal_WriteLine(OK);
    
    return 0;
}


//
// Memory Fill
//
// => 'mf' <Address> <Length> <char>
uint16_t MemoryFill_Execute(SerialTerminal* serialTerminal, TerminalCommand* command)
{
    uint16_t bytesRead = 0;
    Memory mem;
    mem.Address = command->Address;
    mem.Buffer = NULL;
    mem.Length = command->Length == 0 ? 0xFFFF - command->Address : command->Length;
    
    BusState busState;
    BusController_Open(&busState);
    BusController_EnableDataBusOutput(1);
    
    while(mem.Length > 0)
    {
        MemoryController_WriteByte(&mem, command->Param3);
    }
    
    BusController_EnableDataBusOutput(0);
    BusController_Close(&busState);
    
    SerialTerminal_WriteLine(OK);
    
    return bytesRead;
}

/* [] END OF FILE */
