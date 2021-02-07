/*
 * This sketch is a simple write/read benchmark.
 */
#include <IDEFat.h>
#include <IDEFatUtil.h>

#define FILE_SIZE_MB 5
#define FILE_SIZE (1000000UL*FILE_SIZE_MB)
#define BUF_SIZE 100

uint8_t buf[BUF_SIZE];

IDE ide;
IDEVolume volume;
IDEFile root;
IDEFile file;

// store error strings in flash to save RAM
#define error(s) error_P(PSTR(s))

void error_P(const char* str)
{
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

void setup() {
  Serial.begin(9600);
  PgmPrintln("Type any character to start");
  while (!Serial.available());
  
  PgmPrint("Free RAM: ");
  Serial.println(FreeRam());  
 
  if (!ide.init()) error("ide.init failed");
  
  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed!");

  PgmPrint("Type is FAT");
  Serial.println(volume.fatType(), DEC);
  
  if (!root.openRoot(&volume)) error("openRoot failed");
  
  // open or create file - truncate existing file.
  if (!file.open(&root, "BENCH.DAT", O_CREAT | O_TRUNC | O_RDWR)) {
    error("open failed");
  }
  
  // fill buf with known data
  for (uint16_t i = 0; i < (BUF_SIZE-2); i++) {
    buf[i] = 'A' + (i % 26);
  }
  buf[BUF_SIZE-2] = '\r';
  buf[BUF_SIZE-1] = '\n';
  
  PgmPrint("File size ");
  Serial.print(FILE_SIZE_MB);
  PgmPrintln(" MB");
  PgmPrintln("Starting write test.  Please wait up to a minute");
  
  // do write test
  uint32_t n = FILE_SIZE/sizeof(buf);
  uint32_t t = millis();
  for (uint32_t i = 0; i < n; i++) {
    if (file.write(buf, sizeof(buf)) != sizeof(buf)) {
      error("write failed");
    }
  }
  t = millis() - t;
  file.sync();
  double r = (double)file.fileSize()/t;
  PgmPrint("Write ");
  Serial.print(r);
  PgmPrintln(" KB/sec");
  Serial.println();
  PgmPrintln("Starting read test.  Please wait up to a minute");
  
  // do read test
  file.rewind();
  t = millis();
  for (uint32_t i = 0; i < n; i++) {
    if (file.read(buf, sizeof(buf)) != sizeof(buf)) {
      error("read failed");
    }
  }
  t = millis() - t;
  r = (double)file.fileSize()/t;
  PgmPrint("Read ");
  Serial.print(r);
  PgmPrintln(" KB/sec");
  PgmPrintln("Done");
}

void loop() { }
