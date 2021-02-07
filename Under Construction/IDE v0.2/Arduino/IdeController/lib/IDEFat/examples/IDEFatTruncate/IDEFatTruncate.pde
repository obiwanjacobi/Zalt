/*
 * Truncate Example
 *
 * This sketch shows how to use truncate() to remove the last 
 * half of the file created by the IDEFatAppend.pde example.
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
  
  char name[] = "APPEND.TXT";
  // open for read and write
  if (!file.open(&root, name, O_RDWR)) {
    PgmPrint("Can't open "); 
    Serial.println(name);
    PgmPrintln("Run the append example to create the file.");
    error("file.open failed");
  }
  // seek to middle of file
  if (!file.seekSet(file.fileSize()/2)) error("file.seekSet failed");
  // find end of line
  int16_t c;
  while ((c = file.read()) > 0 && c != '\n');
  if (c < 0) error("file.read failed");
  // truncate at current position
  if (!file.truncate(file.curPosition())) error("file.truncate failed");
  Serial.print(name);
  PgmPrintln(" truncated.");
}

void loop(void) {}
