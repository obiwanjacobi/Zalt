/*
Arduino Template Library https://github.com/obiwanjacobi/atl
Written by Marc Jacobi
Copyright 2012-2024 All Rights Reserved

This work is derived from:
Arduino IDEFat Library, Copyright (C) 2009 by William Greiman

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#ifndef __IDEDRIVER16_H__
#define __IDEDRIVER16_H__

#include "Port.h"
#include "Core.h"

typedef uint8_t IdeRegister;

// control signals (active low)
#define IDE_RST_LINE 0x01
#define IDE_WR_LINE 0x02
#define IDE_RD_LINE 0x04
#define IDE_CS0_LINE 0x40
#define IDE_CS1_LINE 0x80
// register address lines
#define IDE_A0_LINE 0x08
#define IDE_A1_LINE 0x10
#define IDE_A2_LINE 0x20

// control registers
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
enum IdeCommands
{
    // some of these are provided by AI - not sure if all are correct!
    IdeCommandRecalibrate = 0x10,               //  Recalibrates drive heads to cylinder 0.
    IdeCommandReadSectors = 0x20,               // Reads sectors from drive.
    IdeCommandWriteSectors = 0x30,              // Writes sectors to drive.
    IdeCommandReadVerifySectors = 0x40,         // Reads sectors and verifies data.
    IdeCommandFormatTrack = 0x50,               // Formats a track on the drive.
    IdeCommandSeek = 0x70,                      // Moves read / write head to specified cylinder.
    IdeCommandExecuteDeviceDiagnostic = 0x90,   // Runs internal diagnostic tests.
    IdeCommandInitializeDriveParameters = 0x91, // Initializes drive parameters.
    IdeCommandDownloadMicrocode = 0x92,         // Downloads drive's internal microcode.
    IdeCommandReadMultiple = 0xC4,              // Reads multiple sectors in a block.
    IdeCommandWriteMultiple = 0xC5,             // Writes multiple sectors in a block.
    IdeCommandSetMultipleMode = 0xC6,           // Sets number of sectors to transfer per block.
    IdeCommandReadDMA = 0xC8,                   // Reads data from drive using DMA.
    IdeCommandWriteDMA = 0xCA,                  // Writes data to drive using DMA.
    IdeCommandSpinDown = 0xE0,                  // Starts spinning up the disk platter.
    IdeCommandSpinUp = 0xE1,                    // Stops the spinning platter and parks the head.
    IdeCommandStandby = 0xE2,                   // Puts drive into low power standby mode.
    IdeCommandIdle = 0xE3,                      // Puts drive into Idle mode.
    IdeCommandReadBuffer = 0xE4,                // Reads data from drive's sector buffer.
    IdeCommandCheckPowerMode = 0xE5,            // Checks if drive is in Idle or Standby mode.
    IdeCommandSleep = 0xE6,                     // Puts drive in low power sleep mode.
    IdeCommandWriteBuffer = 0xE8,               // Writes data to drive's sector buffer.
    IdeCommandIdentifyDevice = 0xEC,            // Returns identification and configuration information about the drive.
    IdeCommandSetFeatures = 0xEF                // Sets various drive features like disabling write cache.
};

typedef uint8_t IdeStatus;
enum IdeStatuses
{
    IdeStatusBusy = 0x80,
    IdeStatusReady = 0x40,
    IdeStatusDiskFault = 0x20,
    IdeStatusDiskSeekComplete = 0x10,
    IdeStatusDataRequest = 0x08,
    IdeStatusCorrectableError = 0x04,
    IdeStatusReserved = 0x02,
    IdeStatusError = 0x01,
};

/*
 * MsbPort and LsbPort must support:
 * - SetDirection(uint8_t) to configure the Port as Input/Output
 * - uint8_t Read() to read data from the Port
 * - Write(uint8_t) to output data on the Port
 * CtrlPort must support:
 * - SetDirection(uint8_t) to configure the Port as Output
 * - Write(uint8_t) to output data on the Port
 */
template <typename MsbPort, typename LsbPort, typename CtrlPort>
class IdeDriver16
{
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

        uint8_t lsb = LsbPort::Read();
        uint8_t msb = MsbPort::Read();

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

        LsbPort::Write(lsb);
        MsbPort::Write(msb);
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
        CtrlPort::Write(ideReg ^ 0xc7);
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