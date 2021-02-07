/*
 * This sketch will remove the files and directories
 * created by the IDEFatMakeDir.pde sketch.
 *
 * Performance is erratic due to the large number
 * of flash erase operations caused by many random
 * writes to file structures.
 */
#include <IDEFat.h>
#include <IDEFatUtil.h>

IDE ide;
IDEVolume volume;
IDEFile root;

// store error strings in flash to save RAM
#define error(s) error_P(PSTR(s))

void error_P(const char* str) {
  PgmPrint("error: ");
  SerialPrintln_P(str);
  if (ide.errorCode()) {
    PgmPrint("IDE error: ");
    Serial.print(ide.errorCode(), HEX);
    Serial.print(',');
    Serial.println(ide.errorData(), HEX);
  }
  while(1);
}
/*
 * remove all files in dir.
 */
void deleteFiles(IDEFile &dir) {
  char name[13];
  IDEFile file;
 
  // open and delete files
  for (uint16_t n = 0; ; n++){
     sprintf(name, "%u.TXT", n);
     
     // open start time
     uint32_t t0 = millis();
     
     // assume done if open fails
     if (!file.open(&dir, name, O_WRITE)) return;
     
     // open end time and remove start time
     uint32_t t1 = millis();
     if (!file.remove()) error("file.remove failed");
     
     // remove end time
     uint32_t t2 = millis();
     
     PgmPrint("RM ");
     Serial.print(n);
     Serial.print(' ');
     
     // open time
     Serial.print(t1 - t0);
     Serial.print(' ');
     
     // remove time
     Serial.println(t2 - t1);
  }
}

void setup() {
  Serial.begin(9600);
  PgmPrintln("Type any character to start");
  while (!Serial.available());
  
  if (!ide.init()) error("ide.init failed");
  
  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed");

  // open the root directory
  if (!root.openRoot(&volume)) error("openRoot failed");
  
  // delete files in root if FAT32
  if (volume.fatType() == 32) {
    PgmPrintln("Remove files in root");
    deleteFiles(root);
  }
  
  // open SUB1 and delete files
  IDEFile sub1;
  if (!sub1.open(&root, "SUB1", O_READ)) error("open SUB1 failed");
  PgmPrintln("Remove files in SUB1");
  deleteFiles(sub1);

  // open SUB2 and delete files
  IDEFile sub2;
  if (!sub2.open(&sub1, "SUB2", O_READ)) error("open SUB2 failed");
  PgmPrintln("Remove files in SUB2");
  deleteFiles(sub2);

  // remove SUB2
  if (!sub2.rmDir()) error("sub2.rmDir failed");
  PgmPrintln("SUB2 removed");
  
  // remove SUB1
  if (!sub1.rmDir()) error("sub1.rmDir failed");
  PgmPrintln("SUB1 removed");

  PgmPrintln("Done");
}

void loop() { }
