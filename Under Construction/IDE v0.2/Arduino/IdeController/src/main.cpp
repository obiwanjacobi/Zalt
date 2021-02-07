#include <Arduino.h>
#include "Controller.h"
//#include "avr8-stub.h"

#define BOARD_LED 13

const char* Message = "Z80 DMA";

Controller controller;

void setup() {
    //debug_init();
    //CLKPR = 0x83;    // divide 16MHz

    Controller::Init();
    controller.BufferAddress(0x3000);
    controller.BufferLength(0x00FF);

    Serial.begin(115200);

    pinMode(BOARD_LED, OUTPUT);
    digitalWrite(BOARD_LED, 0);

    Serial.write(Message);
    Serial.write("\r\n");

    // enable interrupts
    sei();
}

// Z80 read IO
ISR(INT0_vect)
{
    controller.OnRegisterRead();
    controller.ReleaseWaitIO();
}

// Z80 write IO
ISR(INT1_vect)
{
    controller.OnRegisterWrite();
    controller.ReleaseWaitIO();
}


void DMA_Write()
{
    digitalWrite(BOARD_LED, 1);
    Serial.write("-dma\r\n");
    controller.WriteToExternalMemory((const uint8_t*)Message, strlen(Message));

    // works:
    // Serial.write("-bus\r\n");
    // Z80_BusReq(true);
    // while(!Z80_BusAck())
    //     Serial.write(".");
    // Serial.write("*");
    // Z80_BusReq(false);

    delay(200);
    digitalWrite(BOARD_LED, 0);
}

void DMA_Read()
{
    digitalWrite(BOARD_LED, 1);
    uint8_t buffer[11];
    memset(buffer, 0, 11);
    controller.ReadFromExternalMemory(buffer, 10);
    Serial.write("Mem: ");
    Serial.write((const char*)buffer);
    Serial.write("\r\n");
    delay(200);
    digitalWrite(BOARD_LED, 0);
}

void ReadWrite()
{
    //Z80Bus bus;
    delay(100);
    DMA_Write();
    delay(100);
    DMA_Read();
}

uint16_t last = 0;

void loop() {

    //ReadWrite();

    uint16_t current = controller.BufferAddress();
    if (last != current)
    {
        last = current;
        Serial.write("changed ");
        Serial.write(last);
        Serial.write("\r\n");
    }
}