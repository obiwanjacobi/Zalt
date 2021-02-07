/*
 * This sketch illustrates raw write functions in IDEFat that
 * can be used for high speed data logging.  These functions
 * are used in the WaveRP library to record audio with the
 * Adafruit Wave Shield using the built-in Arduino ADC.
 *
 * The WaveRP library captures data from the ADC in an ISR 
 * that is driven driven by timer one.  Data is collected in
 * two 512 byte buffers and written to the IDE ide. 
 *
 * This sketch simulates logging from a source that produces
 * data at a constant rate of one block every MILLIS_PER_BLOCK.
 *
 * If a high quality SanDisk ide is used with this sketch
 * no overruns occur and the maximum block write time is
 * 2 millis.
 *
 * Note: WaveRP creates a very large file then truncates it
 * to the length that is used for a recording. It only takes
 * a few seconds to erase a 500 MB file since the ide only
 * marks the blocks as erased; no data transfer is required.
 */

#include <IDEFat.h>
#include <IDEFatUtil.h>

// number of blocks in the contiguous file
#define BLOCK_COUNT 10000UL

// time to produce a block of data
#define MILLIS_PER_BLOCK 10

IDE ide;
IDEVolume volume;
IDEFile root;
IDEFile file;

uint32_t bgnBlock, endBlock;

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
}

void loop(void) {
  Serial.flush();
  PgmPrintln("Type any character to start");
  while (!Serial.available());

  // initialize the IDE ide
  uint32_t t = millis();
  
  if (!ide.init()) error("ide.init failed");
  
  t = millis() - t;
  
  PgmPrint("ide init time: ");
  Serial.print(t);
  PgmPrintln(" millis");
  
  // initialize a FAT volume on partition 2
  if (!volume.init(&ide, 2)) error("volume.init failed");
  
  // open the root directory
  if (!root.openRoot(&volume)) error("openRoot failed");
  
  // delete possible existing file
  IDEFile::remove(&root, "RAW.TXT");
  
  // create a contiguous file
  if (!file.createContiguous(&root, "RAW.TXT", 512UL*BLOCK_COUNT)) {
    error("createContiguous failed");
  }
  // get the location of the file's blocks
  if (!file.contiguousRange(&bgnBlock, &endBlock)) {
    error("contiguousRange failed");
  }
  //*********************NOTE**************************************
  // NO IDEFile calls are allowed while cache is used for raw writes
  //***************************************************************
  
  // clear the cache and use it as a 512 byte buffer
  uint8_t* pCache = volume.cacheClear();
  
  // fill cache with eight lines of 64 bytes each
  memset(pCache, ' ', 512);
  for (uint16_t i = 0; i < 512; i += 64) {
    // put line number at end of line then CR/LF
    pCache[i + 61] = '0' + (i/64);
    pCache[i + 62] = '\r';
    pCache[i + 63] = '\n';
  }
  
  PgmPrint("Start raw write of ");
  Serial.print(file.fileSize());
  PgmPrintln(" bytes at");
  
  Serial.print(512000UL/MILLIS_PER_BLOCK);
  PgmPrintln(" bytes per second");
  
  PgmPrint("Please wait ");
  Serial.print((BLOCK_COUNT*MILLIS_PER_BLOCK)/1000UL);
  PgmPrintln(" seconds");
  
  // tell ide to setup for multiple block write with pre-erase
  if (!ide.erase(bgnBlock, endBlock)) error("ide.erase failed");
  if (!ide.writeStart(bgnBlock, BLOCK_COUNT)) {
    error("writeStart failed");
  }
  // init stats
  uint16_t overruns = 0;
  uint16_t maxWriteTime = 0;
  t = millis();
  uint32_t tNext = t;

  // write data
  for (uint32_t b = 0; b < BLOCK_COUNT; b++) {
    // write must be done by this time
    tNext += MILLIS_PER_BLOCK;

    // put block number at start of first line in block
    uint32_t n = b;
    for (int8_t d = 5; d >= 0; d--){
      pCache[d] = n || d == 5 ? n % 10 + '0' : ' ';
      n /= 10;
    }
    // write a 512 byte block
    uint32_t tw = micros();
    if (!ide.writeData(pCache)) error("writeData failed");
    tw = micros() - tw;
    
    // check for max write time
    if (tw > maxWriteTime) {
      maxWriteTime = tw;
    }
    // check for overrun
    if (millis() > tNext) {
      overruns++;
      // advance time to reflect overrun
      tNext = millis();
    }
    else {
      // wait for time to write next block
      while(millis() < tNext);
    }
  }
  // total write time
  t = millis() - t;
  
  // end multiple block write mode
  if (!ide.writeStop()) error("writeStop failed");
  
  PgmPrintln("Done");
  
  PgmPrint("Overruns: ");
  Serial.println(overruns);
  
  PgmPrint("Elapsed time: ");
  Serial.print(t);
  PgmPrintln(" millis");
  
  PgmPrint("Max write time: ");
  Serial.print(maxWriteTime);
  PgmPrintln(" micros");
  
  // close files for next pass of loop
  root.close();
  file.close();
  Serial.println();
}
