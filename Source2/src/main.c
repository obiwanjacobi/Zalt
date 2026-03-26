/* main.c - required C entry point
 *
 * This function is called by crt0.asm after hardware init.
 * It must be named 'main' - the assembler startup calls _main
 * which maps to this function.
 *
 * There is no return value - if main() returns, crt0.asm halts.
 */

void main(void)
{
    /* initialise subsystems here */

    /* main loop */
    for (;;)
    {
    }
}
