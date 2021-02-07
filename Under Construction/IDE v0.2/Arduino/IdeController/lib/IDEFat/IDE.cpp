/**
 * Arduino IDE for MEGA Library
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
 
/**
 * This implementation is based on ideas presented at
 * http://www.pjrc.com/tech/8051/ide/index.html
 */
 
#include "IDE.h"

#define true 1
#define false 0

/**
 * Public Methods
 */
 
/**
 * Initialize ide interface and reset ide device
 */
uint8_t IDE::init(void)
{
  // always output on PA for control lines
  DDRA = 0xff; // B11111111
  
  // Set active low lines to high
  PORTA = 0xc7; // B11000111

  writeIDEWord(0, true);

  // Initialize IDE
  ideReset();
  
  ideInit();
  
  return true;
}

/**
 * Read single 512 byte sector at LBA blockNumber, storing at dst.
 */
uint8_t IDE::readBlock(uint32_t blockNumber, uint8_t* dst)
{
  ideError =  ideReadSector(blockNumber);

  memcpy(dst, ide_data, sizeof(ide_data));
  
  if (!ideError)
    return true;
  else
    return false;
}

uint8_t IDE::readData(uint32_t block, uint16_t offset, uint16_t count, uint8_t* dst)
{
  ideError =  ideReadSector(block);

  memcpy(dst, &ide_data[offset], count);
  
  if (!ideError)
    return true;
  else
    return false;
}

/**
 * Write single 512 byte sector at LBA blockNumber from src
 */
uint8_t IDE::writeBlock(uint32_t blockNumber, const uint8_t *src)
{
  memcpy(ide_data, src, sizeof(ide_data));

  ideError =  ideWriteSector(blockNumber);
  
  if (!ideError)
    return true;
  else
    return false;
}

/**
 * Retrive drive identification information and store at provided locations
 */
uint8_t IDE::driveInfo(char *driveModel, char *driveSN,
    char *driveRev,  uint16_t *cylinders, uint16_t *heads, uint32_t *sectors, uint32_t *totallba)
{
  ideWaitNotBusy();
  
  ideWrite8(IDE_HEAD, 0xA0);
  
  ideWaitReady();
  
  ideWrite8(IDE_COMMAND, IDE_CMD_ID);
  
  ideWaitDRQ();
  
  ideError = ideRead8(IDE_ERR);  
  
  if (ideError)
     return false; 

  ideReadBlock(ide_data, true);
  
  
  // extract model, s/n, rev, cyl, heads, sectors
  strncpy(driveModel, (char *)(ide_data + 54), 20);
  driveModel[20] = '\0';
  strncpy(driveSN, (char *)(ide_data + 20), 10);
  driveSN[10] = '\0';
  strncpy(driveRev, (char *)(ide_data + 46), 4);
  driveRev[4] = '\0';
  
  *cylinders = ide_data[2] * 256 + ide_data[3];
  *heads = ide_data[6] * 256 + ide_data[7];
  *sectors = ide_data[12] * 256 + ide_data[13];
  
  // even though info was read big-endian, words are swapped for this
  *totallba = (uint32_t)(ide_data[120] & 0xff) << 8 |
                 (uint32_t)(ide_data[121] & 0xff)  |
                 (uint32_t)(ide_data[122] & 0xff)  << 24 |
                 (uint32_t)(ide_data[123] & 0xff) << 16;
                 
  return true;
}

/**
 * Return current IDE error code (or 0)
 */
uint8_t IDE::errorCode()
{
	return ideError;
}

/**
 * Returns 0, provided for compatability with error routines
 * based on Sd2Card class
 */
uint8_t IDE::errorData()
{
	// provided for compatability with S2dCard class
	return 0;
}

/**
 * Print block of memory in hex format to specified Print
 * class (can be instance of Serial)
 */  
void IDE::dumpHex(Print *print, uint8_t *data, uint16_t length)
{
  char dtxt[64];
  char atxt[17];
  char line[80];
  char *dtp;
  
  for (uint16_t i = 0; i < length; i+=16) {
    memset(dtxt, 0, sizeof(dtxt));
    memset(atxt, 0, sizeof(atxt));
    dtp = dtxt;
    
    dtp += sprintf(dtp, "%04X: ", i);
    for (uint16_t j = 0; j < 16; j++) {
      if ((i + j) >= length)
          break;
      uint8_t v = data[i + j];
      if (v >= 32 && v <= 127)
          atxt[j] = v;
      else
          atxt[j] = '.';
      dtp += sprintf(dtp, "%02X ", v);
    }
    sprintf(line, "%-54s %s", dtxt, atxt);
    print->println(line);
  }
}

/**
 * Private Methods
 */

/**
 * Set PORT L and PORT C for output
 */ 
void IDE::setDWrite()
{
  DDRL = 0xff; // B11111111
  DDRC = 0xff; // B11111111
}

/**
 * Set PORT L and PORT C for input
 */ 
void IDE::setDRead()
{
  // set PL and LC to input
  DDRL = 0x00; // B00000000
  DDRC = 0x00; // B00000000
}

/**
 * Write single word to IDE interface, swapping for either
 * bigendian or littleendian format - typical PC file systems
 * are stored little endian but other uses may be littleendian
 */
void IDE::writeIDEWord(uint16_t data, uint8_t bigendian) {
  setDWrite();
  
  uint16_t lsb, msb;
  if (bigendian) {
    lsb = data & 0xFF;
    msb = (data >> 8) & 0xFF;
  } else {
    msb = data & 0xFF;
    lsb = (data >> 8) & 0xFF;
  }
 
  PORTL = lsb;
  PORTC = msb; 
}

/**
 * Write single byte to IDE register, simulating inverter
 * logic of 8255-based design used as reference
 */
void IDE::writeIDEControl(uint16_t data) {
  uint16_t lsb = data & 0xFF;

  // simulate inverter
  lsb ^= 0xc7; // B11000111
  
  PORTA = lsb; 
}

/**
 * Read word from IDE interface, swapping for either
 * bigendian or littleindian support
 */
uint16_t IDE::readIDEData(uint8_t bigendian) {
  setDRead();

  uint16_t lsb = PINL;
  uint16_t msb = PINC;
  
  if (bigendian)
    return (msb << 8) | lsb;
  else
    return (lsb << 8) | msb;
}

/**
 * Write IDE control, strobe RD line, then read word from IDE interface
 * in either big or little endian
 */
uint16_t IDE::ideRead16(uint16_t ideRegister, uint8_t bigendian) {
  // drive address
  writeIDEControl(ideRegister);  
  writeIDEControl(ideRegister | IDE_RD_LINE);

  // read value
  uint16_t value = readIDEData(bigendian);
  
  // deassert all control pins
  writeIDEControl(0);
  
  // return value
  return value;
}

/**
 * Write IDE control, strobe RD line, then read byte from IDE interface
 */
uint16_t IDE::ideRead8(uint16_t ideRegister) {
  // drive address
  writeIDEControl(ideRegister); 
  writeIDEControl(ideRegister | IDE_RD_LINE);
  
  // read lower uint8_t
  uint16_t lsb = readIDEData(true);
  lsb &= 0xFF;
  
  // deassert all control pins
  writeIDEControl(0);
  
  // return value
  return lsb;
}


/**
 * Write word to data bus, write IDE control, strobe WR line
 */
void IDE::ideWrite16(uint16_t ideRegister, uint16_t value, uint8_t bigendian) {
  writeIDEWord(value, bigendian);

  // drive address
  writeIDEControl(ideRegister); 
  writeIDEControl(ideRegister | IDE_WR_LINE);
  writeIDEControl(ideRegister); 
}

/**
 * Write byte to data bus, write IDE control, strobe WR line
 */
void IDE::ideWrite8(uint16_t ideRegister, uint16_t value) {
  // lsb
  uint16_t lsb = value & 0xff;
  
  // write lower uint8_t
  writeIDEWord(lsb, true);

  // drive address
  writeIDEControl(ideRegister); 
  writeIDEControl(ideRegister | IDE_WR_LINE);
  writeIDEControl(ideRegister); 
}

/**
 * Reset IDE bus
 */
void IDE::ideReset() {
  // drive address
  writeIDEControl(IDE_RST_LINE);  

  // delay for 500 ms.
  delay(500);
  
  // deassert all control pins
  writeIDEControl(0);
}

uint8_t IDE::ideInit() {
  ideWrite8(IDE_HEAD, 0xA0);
  
  return ideWaitReady();
}

/**
 * Wait for IDE device to clear BSY signal, set DRQ
 */
uint16_t IDE::ideWaitDRQ() {
  uint16_t status;
  uint16_t mask = DRQ | BSY;
  
  while (true) {
    status = ideRead8(IDE_STATUS);
    
    // loop until BSY is clear, DRQ is set
    if ((status & mask) == DRQ)
      break;
  }
  
  return status;
}

/**
 * Wait for IDE device to clear BSY signal
 */
uint16_t IDE::ideWaitNotBusy() {
  uint16_t status;
  while (true) {
    status = ideRead8(IDE_STATUS);
    
    // loop until BSY is clear
    if ((status & BSY) == 0)
      break;
  }
  
  return status;
}

/**
 * Wait for IDE device to clear BSY signal, set RDY
 */
uint16_t IDE::ideWaitReady() {
  uint16_t status;
  uint16_t mask = RDY | BSY;
  
  while (true) {
    status = ideRead8(IDE_STATUS);
    
    // loop until BSY is clear, RDY is set
    if ((status & mask) == RDY)
      break;
  }  
  
  return status;
}

/**
 * Write LBA to IDE bus
 */

void IDE::ideWriteLBA(uint32_t lba) {
  // lba is 4 uint8_t address
  uint16_t b3 = (lba >> 24) & 0xFF;
  uint16_t b2 = (lba >> 16) & 0xFF;
  uint16_t b1 = (lba >> 8) & 0xFF;
  uint16_t b0 = lba       & 0xFF;
  
  b3 &= 0x0F;
  b3 |= 0xE0;

  ideWrite8(IDE_HEAD, b3);
  
  ideWrite8(IDE_CYL_MSB, b2);
  
  ideWrite8(IDE_CYL_LSB, b1);
  
  ideWrite8(IDE_SECTOR, b0);
  
  ideWrite8(IDE_SEC_CNT, 1);
}

/**
 * Read 512 bytes from IDE bus
 */
void IDE::ideReadBlock(uint8_t *block, uint8_t bigendian) {
  for (int i = 0; i < 512; i += 2) {
    uint16_t word = ideRead16(IDE_DATA, bigendian);
    *block++ = (word >> 8) & 0xFF;
    *block++ = word & 0xFF;
  }
}

/**
 * Write 512 bytes to IDE bus
 */
void IDE::ideWriteBlock(uint8_t *block, uint8_t bigendian) {
  for (int i = 0; i < 512; i += 2) {
    uint16_t value;
    
    value = (*block++ & 0xff) << 8;
    value |= (*block++ & 0xff);
    ideWrite16(IDE_DATA, value, bigendian);
  }
}

/**
 * Read 512 byte sector at lba into class buffer
 */
int IDE::ideReadSector(uint32_t lba)
{
  memset(ide_data, 0, sizeof(ide_data));
  
  ideWaitNotBusy();
  
  ideWriteLBA(lba);
  
  ideWrite8(IDE_COMMAND, IDE_CMD_READ);
  
  uint16_t status = ideWaitDRQ();

  uint16_t err = ideRead8(IDE_ERR);  

  if (err == 0)
    ideReadBlock(ide_data, false);
    
  return err;
}

/**
 * Write 512 byte sector at lba from class buffer
 */
int IDE::ideWriteSector(uint32_t lba)
{
  ideWaitNotBusy();
  
  ideWriteLBA(lba);
  
  ideWrite8(IDE_COMMAND, IDE_CMD_WRITE);
  
  uint16_t status = ideWaitDRQ();

  uint16_t err = ideRead8(IDE_ERR);  

  if (err == 0) {
    ideWriteBlock(ide_data, false);
    status = ideWaitNotBusy();
    err = ideRead8(IDE_ERR);  
  }

  return err;
}

/**
 * Compute 32 bit LBA from head, cylinder, sector values
 */
uint32_t IDE::computeLBA(int head, int cylinder, int sector)
{
  uint32_t lba = (uint32_t)(head & 0xff) << 24 |
      (uint32_t)(cylinder & 0xffff) << 16 |
      (uint32_t)(sector & 0xff);
  
  return lba;
}


