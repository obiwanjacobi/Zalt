#include "CommandParser.h"
#include <stdlib.h>

const char* OK = "OK";
const char* SUSPENDED = "Suspended";
const char* INCOMPLETE = "Command is Incomplete";


static char g_Commands[][5] = {
    "mw",   // memory-write
    "mr",   // memory-read
    "md",   // memory-dump
    "mf",   // memory-fill
    "cm",   // clock mode
    "cd",   // clock divider
    "cp",   // clock pulse
    "rst",  // cpu reset
    "to",   // terminal off
    "mm",   // memory manager
    "bs",   // bank switch
    "dbg",  // debug
    "stat", // status
    ""      // end of table
};

uint8_t FindCommand(const char* commandCode)
{
    int i = 0;

    while( true )
    {
        if (strlen(g_Commands[i]) == 0) return 0;   // end of table
        if (strcmp(g_Commands[i], commandCode) == 0) return i + 1;
        i++;
    }
}

// reads until ' '
uint8_t CommandParser_Read(RingBuffer* buffer, uint8_t* target, uint8_t maxLength)
{
    uint8_t bytesRead = RingBuffer_Read(buffer, target, maxLength, ' ');
    
    if (bytesRead > 0 && target[bytesRead -1] == ' ')
        target[bytesRead - 1] = 0;  // chop off ' '
    else
        target[bytesRead] = 0;
        
    return bytesRead;
}

uint8_t CommandParser_BuildCommand(TerminalCommand* command, RingBuffer* buffer)
{
    if (RingBuffer_IsEmpty(buffer)) return 0;
    
    command->Address = 0;
    command->Length = 0;
    command->Param3 = 0;
    
    // read command
    uint8_t bytesRead = CommandParser_Read(buffer, command->CommandLine, 4);
    command->Command = FindCommand((const char*)command->CommandLine);
    
    // if command == none => error: command not recognized.
    if (command->Command == COMMAND_NONE) return 0;
    
    return bytesRead;
}

bool_t CommandParser_IsNewLine(uint8_t data)
{
    return (data == '\n' || data == '\r') ? true : false;
}

/* [] END OF FILE */
