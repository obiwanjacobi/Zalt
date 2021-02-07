/*
 * Copy Example - only runs on chips with 2K or more RAM
 *
 * This sketch copies the file APPEND.TXT, created by the
 * IDEFatAppend.pde example, to the file ACOPY.TXT.
 */
#include <IDEFat.h>
#include <IDEFatUtil.h> // use functions to print strings from flash memory

IDE ide;
IDEVolume volume;
IDEFile root;
IDEFile from; // read file
IDEFile copy; // write file

// large buffer to test for bugs. 512 bytes runs much faster.
char buf[600];

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
  
  PgmPrint("FreeRam: ");
  Serial.println(FreeRam());
  
  if (!ide.init()) error("ide.init failed");

  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed");

  // open the root directory
  if (!root.openRoot(&volume)) error("openRoot failed");
  
  strcpy_P(buf, PSTR("APPEND.TXT"));
  // open for read
  if (!from.open(&root, buf, O_READ)) {
    PgmPrint("Can't open "); 
    Serial.println(buf);
    PgmPrintln("Run the append example to create the file.");
    error("from.open failed");
  }
  strcpy_P(buf, PSTR("ACOPY.TXT"));
  // create if needed, truncate to zero length, open for write
  if (!copy.open(&root, buf, O_CREAT | O_TRUNC | O_WRITE)) {
    error("copy.open failed");
  }
  // count for printing periods
  uint16_t p = 0;
  int16_t n;  
  while ((n = from.read(buf, sizeof(buf))) > 0) {
    if (copy.write(buf, n) != n) error("write failed");
    // print progress periods
    if (!(p++ % 25)) Serial.print('.');
    if (!(p % 500)) Serial.println();
  }
  Serial.println();
  if (n != 0) error ("read");
  // force write of directory entry and last data
  if (!copy.close()) error("copy.close failed");
  PgmPrintln("Copy done.");
}

void loop(void) {}
