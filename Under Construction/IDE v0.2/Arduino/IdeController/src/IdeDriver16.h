#ifndef __IDEDRIVER16_H__
#define __IDEDRIVER16_H__

#include "Port.h"
#include "Core.h"

// control signals (active low)
#define IDE_RST_LINE 0x01
#define IDE_WR_LINE 0x02
#define IDE_RD_LINE 0x04
#define IDE_CS0_LINE 0x40
#define IDE_CS1_LINE 0x80

// address lines
#define IDE_A0_LINE 0x08
#define IDE_A1_LINE 0x10
#define IDE_A2_LINE 0x20

typedef uint8_t IdeRegister;

// control functions
#define IDE_DATA IDE_CS0_LINE
#define IDE_ERR IDE_CS0_LINE + IDE_A0_LINE
#define IDE_SEC_CNT IDE_CS0_LINE + IDE_A1_LINE
#define IDE_SECTOR IDE_CS0_LINE + IDE_A1_LINE + IDE_A0_LINE
#define IDE_CYL_LSB IDE_CS0_LINE + IDE_A2_LINE
#define IDE_CYL_MSB IDE_CS0_LINE + IDE_A2_LINE + IDE_A0_LINE
#define IDE_HEAD IDE_CS0_LINE + IDE_A2_LINE + IDE_A1_LINE
#define IDE_COMMAND IDE_CS0_LINE + IDE_A2_LINE + IDE_A1_LINE + IDE_A0_LINE
#define IDE_STATUS IDE_CS0_LINE + IDE_A2_LINE + IDE_A1_LINE + IDE_A0_LINE
#define IDE_CONTROL IDE_CS1_LINE + IDE_A2_LINE + IDE_A1_LINE
#define IDE_ASTATUS IDE_CS1_LINE + IDE_A2_LINE + IDE_A1_LINE + IDE_A0_LINE

typedef uint8_t IdeCommand;

// commands
#define IDE_CMD_RECAL 0x10
#define IDE_CMD_READ 0x20
#define IDE_CMD_WRITE 0x30
#define IDE_CMD_INIT 0x91
#define IDE_CMD_ID 0xEC
#define IDE_CMD_SPINDOWN 0xE0
#define IDE_CMD_SPINUP 0xE1

typedef uint8_t IdeStatus;

// Busy
#define IDE_STAT_BSY 0x80
// Ready
#define IDE_STAT_RDY 0x40
// Drive Fault
#define IDE_STAT_DF 0x20
// Drive Seek Complete
#define IDE_STAT_DSC 0x10
// Data Request
#define IDE_STAT_DRQ 0x08
// Correctable Error
#define IDE_STAT_CORR 0x04
// Vender specific / reserved
#define IDE_STAT_RESERVED 0x02
// Error
#define IDE_STAT_ERR 0x01

template <const ATL::MCU::Ports MsbPortId, const ATL::MCU::Ports LsbPortId, const ATL::MCU::Ports CtrlPortId>
class IdeDriver16
{
    typedef ATL::MCU::Port<LsbPortId> LsbPort;
    typedef ATL::MCU::Port<MsbPortId> MsbPort;
    typedef ATL::MCU::Port<CtrlPortId> CtrlPort;

protected:
    IdeDriver16()
    {
        CtrlPort::SetDirection(0xFF);
    }

    void Initialize()
    {
        Control(0);
        WriteData(0, BigEndian);
    }

    uint16_t ReadData(ByteOrder endian)
    {
        SetDataDir(ATL::MCU::Input);

        uint8_t lsb = LsbPort::ReadPort();
        uint8_t msb = MsbPort::ReadPort();

        return endian == BigEndian
                   ? (msb << 8) | lsb
                   : (lsb << 8) | msb;
    }

    void WriteData(uint16_t data, ByteOrder endian)
    {
        SetDataDir(ATL::MCU::Output);

        uint8_t lsb;
        uint8_t msb;

        if (endian == BigEndian)
        {
            lsb = data & 0xFF;
            msb = (data >> 8) & 0xFF;
        }
        else
        {
            msb = data & 0xFF;
            lsb = (data >> 8) & 0xFF;
        }

        LsbPort::WritePort(lsb);
        MsbPort::WritePort(msb);
    }

    IdeStatus WaitForStatus(IdeStatus mask, IdeStatus status)
    {
        while (true)
        {
            IdeStatus current = ReadReg8(IDE_STATUS);

            if ((current & mask) == status)
                return current;
        }
    }

    uint16_t ReadReg16(IdeRegister ideReg, ByteOrder endian)
    {
        Control(ideReg);
        Control(ideReg | IDE_RD_LINE);

        uint16_t value = ReadData(endian);

        Control(0);

        return value;
    }

    inline uint8_t ReadReg8(IdeRegister ideReg)
    {
        return ReadReg16(ideReg, BigEndian) & 0xFF;
    }

    void WriteReg16(IdeRegister ideReg, uint16_t value, ByteOrder endian)
    {
        WriteData(value, endian);

        Control(ideReg);
        Control(ideReg | IDE_WR_LINE);
        Control(ideReg);
    }

    inline void WriteReg8(IdeRegister ideReg, uint8_t value)
    {
        WriteReg16(ideReg, value, BigEndian);
    }

    inline void Control(IdeRegister ideReg)
    {
        CtrlPort::WritePort(ideReg ^ 0xc7);
    }

private:
    void SetDataDir(ATL::MCU::PinIO direction)
    {
        uint8_t dir =
            direction == ATL::MCU::Input
                ? 0x00
                : 0xFF;

        LsbPort::SetDirection(dir);
        MsbPort::SetDirection(dir);
    }
};

#endif //__IDEDRIVER16_H__