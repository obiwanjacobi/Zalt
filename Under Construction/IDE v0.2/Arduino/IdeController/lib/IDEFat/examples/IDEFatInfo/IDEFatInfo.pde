/*
 * This sketch attempts to initialize a IDE drive and analyze its structure.
 */
#include <IDEFat.h>
#include <IDEFatUtil.h>

// offset to partition table
#define PART_OFFSET (512-64-2) 

IDE ide;
IDEVolume vol;

//global for ide erase sector size
uint32_t sectorSize; 

void IDEError(void) {
  PgmPrintln("IDE error");
  PgmPrint("errorCode: ");
  Serial.println(ide.errorCode(), HEX);
  PgmPrint("errorData: ");
  Serial.println(ide.errorData(), HEX);  
  return;
}

// print partition table
uint8_t partDmp(void) {
  part_t pt;
  PgmPrintln("\npart,boot,type,start,length");  
  for (uint8_t ip = 1; ip < 5; ip++) {
    if (!ide.readData(0, PART_OFFSET + 16*(ip-1), 16, (uint8_t *)&pt)) {
      PgmPrint("read partition table failed");
      IDEError();
      return false;
    }
    Serial.print(ip, DEC);
    Serial.print(',');
    Serial.print(pt.boot,HEX);
    Serial.print(',');
    Serial.print(pt.type, HEX);
    Serial.print(',');
    Serial.print(pt.firstSector);
    Serial.print(',');
    Serial.println(pt.totalSectors); 
  }
  return true;
}

void volDmp(void) {
  PgmPrint("\nVolume is FAT");
  Serial.println(vol.fatType(), DEC);
  PgmPrint("blocksPerCluster: ");
  Serial.println(vol.blocksPerCluster(), DEC);
  PgmPrint("clusterCount: ");
  Serial.println(vol.clusterCount());
  PgmPrint("fatStartBlock: ");
  Serial.println(vol.fatStartBlock());
  PgmPrint("fatCount: ");
  Serial.println(vol.fatCount(), DEC);
  PgmPrint("blocksPerFat: ");
  Serial.println(vol.blocksPerFat());
  PgmPrint("rootDirStart: ");
  Serial.println(vol.rootDirStart());
  PgmPrint("dataStartBlock: ");
  Serial.println(vol.dataStartBlock());
  if (vol.dataStartBlock()%sectorSize) {
    PgmPrintln("Data area is not aligned on flash erase boundaries!");
  }
}

void setup() {
  Serial.begin(9600);
}

void loop() {
  PgmPrintln("\ntype any character to start");
  while (!Serial.available());
  Serial.flush();
  uint32_t t = millis();

    uint8_t r = ide.init();
  t = millis() - t;
  if (!r) {
    PgmPrintln("\nide.init failed");
    IDEError();
    return;
  }
  PgmPrint("\ninit time: ");
  Serial.println(t);
  PgmPrint("\nide type: ");
  if(!partDmp()) return;
  if (!vol.init(&ide, 2)) {
    PgmPrintln("\nvol.init failed");
    IDEError();
    return;
  }
  volDmp();
}
