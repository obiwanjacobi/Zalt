/* Arduino IDE for MEGA Library
 * Copyright (C) 2011 Gene Toye
 *
 * This Library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This Library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with the Arduino IDEFat Library.  If not, see
 * <http://www.gnu.org/licenses/>.
 */
#ifndef IDE_h
#define IDE_h

#include <Arduino.h>
#include <Print.h>

// IDE Control signals 
// Bits RST, WR, RD, CS0, CS1 are active low and inverted in the write routine
// to simulate inverter in 8255 design this is based on - see
// http://www.pjrc.com/tech/8051/ide/index.html

#define	IDE_RST_LINE 0x01
#define	IDE_WR_LINE  0x02
#define	IDE_RD_LINE  0x04
#define	IDE_CS0_LINE 0x40
#define	IDE_CS1_LINE 0x80

#define IDE_A0_LINE  0x08
#define	IDE_A1_LINE  0x10
#define	IDE_A2_LINE  0x20


// some symbolic constants for the ide registers which makes the
// code more readable than always specifying the address pins
#define	IDE_DATA    	IDE_CS0_LINE
#define	IDE_ERR	        IDE_CS0_LINE + IDE_A0_LINE
#define	IDE_SEC_CNT	IDE_CS0_LINE + IDE_A1_LINE
#define	IDE_SECTOR	IDE_CS0_LINE + IDE_A1_LINE + IDE_A0_LINE
#define	IDE_CYL_LSB	IDE_CS0_LINE + IDE_A2_LINE
#define	IDE_CYL_MSB	IDE_CS0_LINE + IDE_A2_LINE + IDE_A0_LINE
#define	IDE_HEAD	IDE_CS0_LINE + IDE_A2_LINE + IDE_A1_LINE
#define	IDE_COMMAND	IDE_CS0_LINE + IDE_A2_LINE + IDE_A1_LINE + IDE_A0_LINE
#define	IDE_STATUS	IDE_CS0_LINE + IDE_A2_LINE + IDE_A1_LINE + IDE_A0_LINE
#define	IDE_CONTROL	IDE_CS1_LINE + IDE_A2_LINE + IDE_A1_LINE
#define	IDE_ASTATUS	IDE_CS1_LINE + IDE_A2_LINE + IDE_A1_LINE + IDE_A0_LINE

// IDE Command Constants.  These should never change.
#define	IDE_CMD_RECAL     0x10
#define	IDE_CMD_READ      0x20
#define	IDE_CMD_WRITE     0x30
#define	IDE_CMD_INIT      0x91
#define	IDE_CMD_ID        0xEC
#define	IDE_CMD_SPINDOWN  0xE0
#define	IDE_CMD_SPINUP    0xE1


/**
IDE Status ideRegister:
 bit 7: Busy	1=busy, 0=not busy
 bit 6: Ready   1=ready for command, 0=not ready yet
 bit 5: DF	1=fault occured inside drive
 bit 4: DSC	1=seek complete
 bit 3: DRQ	1=data request ready, 0=not ready to xfer yet
 bit 2: CORR	1=correctable error occured
 bit 1: IDX	vendor specific
 bit 0: ERR	1=error occured
*/
#define BSY  0x80
#define RDY  0x40
#define DF   0x20
#define DSC  0x10
#define DRQ  0x08
#define CORR 0x04
#define IDX  0x02
#define ERR  0x01

/**
 * IDE class - implements sector level I/O to primary IDE drive
 */
class IDE {
 public:
  /** Construct an instance of Sd2Card. */
  uint8_t erase(uint32_t firstBlock, uint32_t lastBlock);

  /**
   * Initialize IDE interface
   */
  uint8_t init(void);

  uint8_t readBlock(uint32_t block, uint8_t* dst);
  uint8_t readData(uint32_t block, uint16_t offset, uint16_t count, uint8_t* dst);
  uint8_t writeBlock(uint32_t blockNumber, const uint8_t* src);
  uint8_t driveInfo(char *driveModel, char *driveSN,
  char *driveRev,  uint16_t *cylinders, uint16_t *heads, uint32_t *sectors, uint32_t *totallba);
  
  uint8_t errorCode();
  uint8_t errorData();

  void dumpHex(Print *print, uint8_t *data, uint16_t length);

 private:
  void setDWrite();
  void setDRead();
  void writeIDEWord(uint16_t data, uint8_t bigendian);
  void writeIDEControl(uint16_t data);
  uint16_t readIDEData(uint8_t bigendian);
  uint16_t ideRead16(uint16_t ideRegister, uint8_t bigendian);
  uint16_t ideRead8(uint16_t ideRegister);
  void ideWrite16(uint16_t ideRegister, uint16_t value, uint8_t bigendian);
  void ideWrite8(uint16_t ideRegister, uint16_t value);
  void ideReset();
  uint8_t ideInit();
  uint16_t ideWaitDRQ();
  uint16_t ideWaitNotBusy();
  uint16_t ideWaitReady();
  void ideWriteLBA(uint32_t lba);
  void ideReadBlock(uint8_t *block, uint8_t bigendian);
  void ideWriteBlock(uint8_t *block, uint8_t bigendian);
  int ideReadSector(uint32_t lba);
  int ideWriteSector(uint32_t lba);
  uint32_t computeLBA(int head, int cylinder, int sector);
 
  // LBA
  uint32_t lba;
  // Sector buffer
  uint8_t ide_data[512];
  // error code
  uint8_t ideError;
};
#endif  // IDE_h
