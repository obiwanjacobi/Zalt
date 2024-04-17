#include "IdeDriver16.h"
#include "IdeProtocol.h"
#include "Port.h"

class Delay
{
public:
    static void Wait(uint32_t ms)
    {
        // wait implementation
    }
};

typedef ATL::MCU::Port<ATL::MCU::PortC> LsbPort;
typedef ATL::MCU::Port<ATL::MCU::PortL> MsbPort;
typedef ATL::MCU::Port<ATL::MCU::PortA> CtrlPort;
typedef IdeProtocol<IdeDriver16<MsbPort, LsbPort, CtrlPort>, Delay> Ide;

Ide ide;

int main()
{
    ide.Initialize();

    IdeBlockBuffer buffer;
    ide.ReadBlock(1, buffer);
    ide.WriteBlock(1, buffer);
    return 0;
}