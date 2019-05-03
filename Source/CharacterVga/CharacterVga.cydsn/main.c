/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"

// !! linker script customization (LinkerScript.ld)(build settings)
// to split the available 64kb SRAM into two blocks of 32kb.
// lower 32kb block is accessible to the CPU (ram < 0x20000000) - contains stack and heap
// upper 32kb block is accessable to the DMA (ramhi >= 0x20000000)


// Get the resolution from the Video Controller instance.
#define VGA_RES_X VideoController_H_RES
#define VGA_RES_Y VideoController_V_RES
// Our buffer will be one bit per pixel so we only need 1/8th for our horizontal dimension.
#define VGA_X_FACTOR 8
// If we don't have enough memory, we simply are going to duplicate the vertical lines
// to save on memory requirements.
#define VGA_Y_FACTOR 2
// This is our final dimmensions for our frame buffers.
#define VGA_X_BYTES (VGA_RES_X / VGA_X_FACTOR)
#define VGA_Y_BYTES (VGA_RES_Y / VGA_Y_FACTOR)
#define VGA_BUFF_SIZE (VGA_X_BYTES * VGA_Y_BYTES)
#define VGA_X_CHARS (VGA_RES_X / VGA_X_FACTOR)
#define VGA_Y_CHARS (VGA_RES_Y / VGA_Y_FACTOR / 8)

uint8 charScreen[VGA_Y_CHARS][VGA_X_CHARS] __attribute__ ((aligned()));
uint8 charBuffer[VGA_Y_BYTES][VGA_X_BYTES] __attribute__ ((aligned()));
uint8 frameBuffer[VGA_Y_BYTES][VGA_X_BYTES]  __attribute__ ((aligned(),section(".ramhi")));

volatile uint8 new_line = 0;

// Declare our DMA channel and our DMA Transaction Descriptor.
uint8 dmaCh;
uint8 dmaTd;

void DmaLine_Init()
{
    //
    // DMA new line setup
    //
    
    // Alocate a transaction descriptors.
    dmaTd = CyDmaTdAllocate();
    
    // Initialize the DMA channel to transfer from the pDmaLine base address to the control base address.
    // This indicates the high 16 bit address that will apply to the low addresses set on the TD.
    dmaCh = DMA_Line_DmaInitialize(1, 0, HI16((uint32) frameBuffer), HI16(CYDEV_PERIPH_BASE));

    // Configure the transaction descriptor for the first transfer.
    CyDmaTdSetConfiguration(dmaTd, VGA_X_BYTES, dmaTd, DMA_Line__TD_TERMOUT_EN | TD_INC_SRC_ADR);
    
    // Set the destination address to be our DMA_OUT control register in the schematic.
    CyDmaTdSetAddress(dmaTd, LO16((uint32) frameBuffer), LO16((uint32) VGA_D_out_Control_PTR));
    
    // Set the channel transaction descriptor that we just configured.
    CyDmaChSetInitialTd(dmaCh, dmaTd);
    
    // Finally enable the DMA channel.
    // This will start the first transfer and call the interrupt after every line.
    CyDmaChEnable(dmaCh, 1);
}

#define MEM_TRANSFER_COUNT  4092
#define PARTIAL_TD_COUNT (VGA_BUFF_SIZE%MEM_TRANSFER_COUNT)
// Depending if the frame buffer is divisable by MEM_TRANSFER_COUNT allocate an extra TD or not.
// It's better to do this in the pre-processor so we don't waste SRAM for a variable to decide later nore the extra TD allocation.
// Remember we only have 64KB to play around and only half of those are in the code space.
#if PARTIAL_TD_COUNT
    // How mandy TDs are we going to need + 1 (i.e. 100 colums by 300 lines in 800x600 mode, 30,000/2,048 = 14.6484375)
    #define NUM_MEM_TDS (1+VGA_BUFF_SIZE/MEM_TRANSFER_COUNT)
#else
    // How mandy TDs are we going to need (i.e. 128 colums by 384 lines in 1024x768 mode, 49152/2,048 = 24)
    // That is if we had the frame buffer memory to cope with that resolution
    // but applicable to any 2048 multiple frame buffer if one exists.
    #define NUM_MEM_TDS (VGA_BUFF_SIZE/MEM_TRANSFER_COUNT)
#endif
// Add a second DMA channel and Transaction Descriptor for memory to memory transfers.
uint8 damMemCh;
uint8 dmaMemTd[NUM_MEM_TDS];

void DmaFrame_Init()
{
    //
    // DMA memory to memory setup
    //
    
    // Initialize the DMA channel to transfer from the cframe base address to the dframe base address.
    // This indicates the high 16 bit address that will apply to the low addresses set on the TD.
    // We are going to transfer 64 bytes per burst which is a multiple of the size of the SRAM Spoke data bus (4 bytes).
    damMemCh = DMA_Frame_DmaInitialize(64, 0, HI16((uint32) charBuffer), HI16((uint32) frameBuffer));
    // current TD index declaration

    int i;
    // Allocate all the TDs first
    // Or we wont be able to chain them.
    for (i = 0; i < NUM_MEM_TDS; i++)
    {
        // Alocate a transaction descriptor.
        dmaMemTd[i] = CyDmaTdAllocate();
    }
    
    // Loop through all the Transaction Descriptors needed to be configured to transfer the full frame buffer.
    // Since we adjusted the full TDs via the preprocessor we can chain all of this and after the loop
    // we can add the final TD
    for (i = 0; i < (NUM_MEM_TDS - 1); i++)
    {
        // Configure the transaction descriptor for the current transfer.
        // Transfer MEM_TRANSFER_COUNT with auto increment and signalling the end of the last transfer.
        // Set the next TD in the chain.
        CyDmaTdSetConfiguration(dmaMemTd[i], MEM_TRANSFER_COUNT, dmaMemTd[i+1], TD_INC_SRC_ADR | TD_INC_DST_ADR | DMA_Frame__TD_TERMOUT_EN);
        // Set the source and destination addresses for this block of memory transfer.
        int offset = i * MEM_TRANSFER_COUNT;
        CyDmaTdSetAddress(dmaMemTd[i], 
            LO16((uint32) &charBuffer[offset / VGA_X_BYTES][offset % VGA_X_BYTES]), 
            LO16((uint32) &frameBuffer[offset / VGA_X_BYTES][offset % VGA_X_BYTES])
        );
    }
    //
    // deal with the final TD after the loop.
    //
    // Configure the transaction descriptor for the current transfer.
    // Transfer MEM_TRANSFER_COUNT with auto increment and signalling the end of the last transfer.
    // Set the next TD to disable the transfer after we re done.
#if PARTIAL_TD_COUNT
    CyDmaTdSetConfiguration(dmaMemTd[i], PARTIAL_TD_COUNT, DMA_DISABLE_TD, TD_INC_SRC_ADR | TD_INC_DST_ADR | DMA_Frame__TD_TERMOUT_EN);
#else
    CyDmaTdSetConfiguration(dmaMemTd[i], MEM_TRANSFER_COUNT, DMA_DISABLE_TD, TD_INC_SRC_ADR | TD_INC_DST_ADR | DMA_Frame__TD_TERMOUT_EN);
#endif
    int offset = i * MEM_TRANSFER_COUNT;
    // Set the source and destination addresses for this block of memory transfer.
    CyDmaTdSetAddress(dmaMemTd[i], 
        LO16((uint32) &charBuffer[offset / VGA_X_BYTES][offset % VGA_X_BYTES]), 
        LO16((uint32) &frameBuffer[offset / VGA_X_BYTES][offset % VGA_X_BYTES])
    );

}

// c=character [uint8], y=line count [uint16]
// ret: horizontal character byte at line [y]
#define GetCharByteAtLine(c, y)    \
    CY_GET_REG8(CYDEV_EE_BASE + c + (y % 8) * 256)
// due to organization of character bytes we multiply by 256
#define GetCharByteAt(c, l)    \
    CY_GET_REG8(CYDEV_EE_BASE + c + l)


// Set up a refresh signal so the CPU can refresh the DMA buffer.
volatile int new_frame = 1;
volatile uint16 line = 0;

// ScanLine Interrupt
//
// This gets called everytime our DMA transfer is done, so we can setup the next line
// or if we are on the last line we will refresh the dma frame with the current cpu frame.
CY_ISR(NewLine)
{
    // Get our line count from both status registers
    // LineCount_Hi_Status holds the upper 2 bits
    // LineCount_Lo_Status holds the lower 8 bits
    line = (LineCount_Hi_Status << 8) | LineCount_Lo_Status;

    //
    // HACK:
    // I guess our line counter is a bit slow.
    line = (line - 1) & 0x03ff;

    if ((line % VGA_Y_FACTOR) == 0)
    {
        // Check if we are within the visible area.
        if (line < VGA_RES_Y)
        {
            // Update the next DMA transfer for the next line.
            CY_SET_REG16(CY_DMA_TDMEM_STRUCT_PTR[dmaTd].TD1, LO16((uint32) frameBuffer[line / VGA_Y_FACTOR]));
            
            new_line = 1;
        }
        else if (line == VGA_RES_Y)
        {
            // On the last line since we are going to enter vertical sync
            // Indicate the CPU that it's ok to refresh the screen.
            //new_frame = 1;
        }
    }
}

CY_ISR(NewFrame)
{
    new_frame = 1;
}

void FillTestChars()
{
    for(int y = 0; y < VGA_Y_BYTES; y++)
    {
        for(int x = 0; x < VGA_X_BYTES; x++)
        {
            frameBuffer[y][x] = y;
        }
    }
}

int main(void)
{
    FillTestChars();
    
    DmaLine_Init();
    DmaFrame_Init();
    DMA_Line_Int_StartEx(NewLine);
    DMA_Frame_Int_StartEx(NewFrame);
    
    CharRom_Start();
    
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    for(;;)
    {
//        if (new_line)
//        {
//            new_line = 0;
//            
//            uint8* pLineChars = charScreen[line / 8];
//            // char bytes are stored in blocks per scan line
//            uint16 l = (line % 8) * 256;
//            
//            for(int x = 0; x < VGA_X_CHARS; x++)
//            {
//            }
//        }
        
        if (new_frame)
        {
            new_frame = 0;
            
            // Disable the DMA channel
            CyDmaChDisable(dmaCh);
            // Copy the CPU frame buffer into the DMA frame buffer
            //memcpy(dframe, cframe, VGA_Y_BYTES * VGA_X_BYTES);
            // Enable the DMA channel
            CyDmaChEnable(dmaCh, 1);
        }
    }
}


/* [] END OF FILE */
