/*
 * This sketch reads and prints the file
 * PRINT00.TXT created by IDEFatPrint.pde or
 * WRITE00.TXT created by IDEFatWrite.pde
 */
#include <IDEFat.h>
#include <IDEFatUtil.h>

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
  Serial.println("type any character to start");
  while (!Serial.available());
  Serial.println();
  
  if (!ide.init()) error("ide.init failed");
  
  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed");
  
  // open the root directory
  if (!root.openRoot(&volume)) error("openRoot failed");
  
  // open a file
  if (file.open(&root, "PRINT00.TXT", O_READ)) {
    Serial.println("Opened PRINT00.TXT");
  }
  else if (file.open(&root, "WRITE00.TXT", O_READ)) {
    Serial.println("Opened WRITE00.TXT");    
  }
  else{
    error("file.open failed");
  }
  Serial.println();
  
  // copy file to serial port
  int16_t n;
  uint8_t buf[7];// nothing special about 7, just a lucky number.
  while ((n = file.read(buf, sizeof(buf))) > 0) {
    for (uint8_t i = 0; i < n; i++) Serial.print(buf[i]);
  }
  /* easier way
  int16_t c;
  while ((c = file.read()) > 0) Serial.print((char)c);
  */
  Serial.println("\nDone");
}

void loop(void) {}
