/*
 * Write Example
 *
 * This sketch creates a new file and writes 100 lines to the file.
 * No error checks on write in this example.
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
/*
 * Write CR LF to a file
 */
void writeCRLF(IDEFile& f) {
  f.write((uint8_t*)"\r\n", 2);
}
/*
 * Write an unsigned number to a file
 */
void writeNumber(IDEFile& f, uint32_t n) {
  uint8_t buf[10];
  uint8_t i = 0;
  do {
    i++;
    buf[sizeof(buf) - i] = n%10 + '0';
    n /= 10;
  } while (n);
  f.write(&buf[sizeof(buf) - i], i);
}
/*
 * Write a string to a file
 */
void writeString(IDEFile& f, char *str) {
  uint8_t n;
  for (n = 0; str[n]; n++);
  f.write((uint8_t *)str, n);
}

void setup(void) {
  Serial.begin(9600);
  Serial.println();
  Serial.println("Type any character to start");
  while (!Serial.available());
  
  if (!ide.init()) error("ide.init failed");
  
  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed");
  
  // open the root directory
  if (!root.openRoot(&volume)) error("openRoot failed");

  // create a new file
  char name[] = "WRITE00.TXT";
  for (uint8_t i = 0; i < 100; i++) {
    name[5] = i/10 + '0';
    name[6] = i%10 + '0';
    if (file.open(&root, name, O_CREAT | O_EXCL | O_WRITE)) break;
  }
  if (!file.isOpen()) error ("file.create");
  Serial.print("Writing to: ");
  Serial.println(name);
  
  // write 100 line to file
  for (uint8_t i = 0; i < 100; i++) {
    writeString(file, "line ");
    writeNumber(file, i);
    writeString(file, " millis = ");
    writeNumber(file, millis());
    writeCRLF(file);
  }
  // close file and force write of all data to the IDE ide
  file.close();
  Serial.println("Done");
}

void loop(void) {}
