/*
 * This sketch reads and prints the tail of all files
 * created by IDEFatAppend.pde, IDEFatPrint.pde, and
 * IDEFatWrite.pde.
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
}

/*
 * Print tail of all IDEFat example files
 */
void loop(void) {
  dir_t dir;
  char name[13];
  
  // read next directory entry
  if (root.readDir(&dir) != sizeof(dir)) {
    Serial.println("End of Directory");
    while(1);
  }
  
  // check for file name "APPEND.TXT", "PRINT*.TXT"
  // or "WRITE*.TXT"
  // first 8 bytes are blank filled name
  // last three bytes are blank filled extension
  if ((strncmp((char *)dir.name, "APPEND  ", 8) &&
      strncmp((char *)dir.name, "PRINT", 5) &&
      strncmp((char *)dir.name, "WRITE", 5)) ||
      strncmp((char *)&dir.name[8], "TXT", 3)) {
        return;
  }
  // format file name
  IDEFile::dirName(dir, name);
  
  // remember position in root dir
  uint32_t pos = root.curPosition();
  
  // open file
  if (!file.open(&root, name, O_READ)) error("file.open failed");
  
  // restore root position
  if (!root.seekSet(pos)) error("root.seekSet failed");
  
  // print file name message
  Serial.print("Tail of: ");
  Serial.println(name);
  
  // position to tail of file
  if (file.fileSize() > 100) {
    if (!file.seekSet(file.fileSize() - 100)) error("file.seekSet failed");
  }
  int16_t c;
  // find end of line  
  while ((c = file.read()) > 0 && c != '\n');
  
  // print rest of file
  while ((c = file.read()) > 0) Serial.print((char)c);
  file.close();
  Serial.println();
}
