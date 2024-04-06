#include "IdeDriver16.h"
#include "IdeProtocol.h"
#include "Port.h"

typedef IdeProtocol<IdeDriver16<ATL::MCU::PortC, ATL::MCU::PortB, ATL::MCU::PortA>> Ide;

Ide ide;

int main()
{
    ide.Initialize();

    IdeBlockBuffer buffer;
    ide.ReadBlock(1, buffer);
    ide.WriteBlock(1, buffer);
    return 0;
}