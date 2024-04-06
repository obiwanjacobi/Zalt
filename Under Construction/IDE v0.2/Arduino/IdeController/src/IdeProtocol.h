#ifndef __IDEPROTOCOL_H__
#define __IDEPROTOCOL_H__

#include <stdint.h>
#include "Core.h"
#include "IdeDriver16.h"

typedef uint32_t IdeBlockAddress;
typedef uint8_t IdeError;

typedef struct
{
  uint8_t data[512];
} IdeBlockBuffer;

// BaseT (IdeDriver16) implements:
// - void Initialize()
// - void Control(IdeRegister)
// - uint8_t ReadReg8(IdeRegister)
// - uint16_t ReadReg16(IdeRegister)
// - void WriteReg8(IdeRegister, uint8_t)
// - void WriteReg16(IdeRegister, uint16_t)
// - IdeStatus WaitForStatus(IdeStatus, IdeStatus)
template <typename BaseT>
class IdeProtocol : public BaseT
{
public:
  IdeStatus Initialize()
  {
    BaseT::Initialize();

    Reset();
    BaseT::WriteReg8(IDE_HEAD, 0xA0);
    return WaitForReady();
  }

  IdeError ReadBlock(IdeBlockAddress lba, IdeBlockBuffer &buffer)
  {
    WaitNotBusy();
    WriteLBA(lba);
    BaseT::WriteReg8(IDE_COMMAND, IDE_CMD_READ);

    WaitForDRQ();
    IdeError err = BaseT::ReadReg8(IDE_ERR);

    if (err == 0)
      DiskToBlock(buffer, LittleEndian);

    return err;
  }

  IdeError WriteBlock(IdeBlockAddress lba, const IdeBlockBuffer &buffer)
  {
    WaitNotBusy();
    WriteLBA(lba);
    BaseT::WriteReg8(IDE_COMMAND, IDE_CMD_WRITE);

    WaitForDRQ();
    IdeError err = BaseT::ReadReg8(IDE_ERR);

    if (err == 0)
    {
      BlockToDisk(buffer, LittleEndian);
      WaitNotBusy();
      err = BaseT::ReadReg8(IDE_ERR);
    }

    return err;
  }

protected:
  inline IdeStatus WaitForDRQ()
  {
    return BaseT::WaitForStatus(IDE_STAT_DRQ | IDE_STAT_BSY, IDE_STAT_DRQ);
  }

  inline IdeStatus WaitNotBusy()
  {
    return BaseT::WaitForStatus(IDE_STAT_BSY, 0);
  }

  inline IdeStatus WaitForReady()
  {
    return BaseT::WaitForStatus(IDE_STAT_RDY | IDE_STAT_BSY, IDE_STAT_RDY);
  }

private:
  void WriteLBA(IdeBlockAddress lba)
  {
    uint8_t b3 = (lba >> 24) & 0x0F;
    uint8_t b2 = (lba >> 16) & 0xFF;
    uint8_t b1 = (lba >> 8) & 0xFF;
    uint8_t b0 = lba & 0xFF;

    b3 |= 0xE0;

    BaseT::WriteReg8(IDE_HEAD, b3);
    BaseT::WriteReg8(IDE_CYL_MSB, b2);
    BaseT::WriteReg8(IDE_CYL_LSB, b1);
    BaseT::WriteReg8(IDE_SECTOR, b0);
    BaseT::WriteReg8(IDE_SEC_CNT, 1);
  }

  void DiskToBlock(IdeBlockBuffer &buffer, ByteOrder endian)
  {
    uint8_t *block = buffer.data;

    for (int i = 0; i < 512; i += 2)
    {
      uint16_t word = BaseT::ReadReg16(IDE_DATA, endian);
      *block++ = (word >> 8) & 0xFF;
      *block++ = word & 0xFF;
    }
  }

  void BlockToDisk(const IdeBlockBuffer &buffer, ByteOrder endian)
  {
    const uint8_t *block = buffer.data;

    for (int i = 0; i < 512; i += 2)
    {
      uint16_t value = (*block++ & 0xff) << 8;
      value |= (*block++ & 0xff);
      BaseT::WriteReg16(IDE_DATA, value, endian);
    }
  }

  void Reset()
  {
    BaseT::Control(IDE_RST_LINE);
    // TODO: Delay!
    // delay(500);
    BaseT::Control(0);
  }
};

static IdeBlockAddress GetBlockAddress(uint8_t head, uint16_t cylinder, uint8_t sector)
{
  return (uint32_t)(head & 0xff) << 24 |
         (uint32_t)(cylinder & 0xffff) << 16 |
         (uint32_t)(sector & 0xff);
}

#endif //__IDEPROTOCOL_H__
