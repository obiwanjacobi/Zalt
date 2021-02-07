/*
 * Print Example
 *
 * This sketch shows how to use the Arduino Print class with IDEFat.
 */
#include <IDEFat.h>
#include <IDEFatUtil.h> // use functions to print strings from flash memory

IDE ide;
IDEVolume volume;
IDEFile root;
IDEFile file;

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

void setup(void) {
  Serial.begin(9600);
  Serial.println();
  PgmPrintln("Type any character to start");
  while (!Serial.available());
  
  if (!ide.init()) error("ide.init failed");
  
  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed");
  
  // open the root directory
  if (!root.openRoot(&volume)) error("openRoot failed");
  
  // create a new file
  char name[] = "PRINT00.TXT";
  for (uint8_t i = 0; i < 100; i++) {
    name[5] = i/10 + '0';
    name[6] = i%10 + '0';
    // only create new file for write
    if (file.open(&root, name, O_CREAT | O_EXCL | O_WRITE)) break;
  }
  if (!file.isOpen()) error ("file.create");
  PgmPrintln("Printing to: ");
  Serial.println(name);
  
  // clear print error
  file.writeError = 0;
  
  // print 100 line to file
  for (uint8_t i = 0; i < 100; i++) {
    file.print("line ");
    file.print(i, DEC);
    file.print(" millis = ");
    file.println(millis());
  }
  // force write of all data to the IDE ide
  if (file.writeError || !file.sync()) error ("print or sync");
  PgmPrintln("Done");
}
void loop(void){}
