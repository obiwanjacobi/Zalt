#include<stdio.h>

void main(void)
{
	long cnt = 0;
	
	printf("Start typing...");
	
	
	 while(cnt < 0xFFFF)
	 {
		 char c = getchar();
		 if (c != 0)
		 {			
			 putchar(c);
			 cnt = 0;
		 }
		 else
		 {
			 cnt++;
		 }
	 }
	
	
	/*
	 __asm
		 ld a, '@'
		 out ($20), a
		 halt
	 __endasm;
	 */
}
