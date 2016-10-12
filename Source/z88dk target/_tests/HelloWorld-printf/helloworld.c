#include<stdio.h>

//static char buffer[40];
static char* Message = "Zalt says hello to Z88dk!";

void main(void)
{
	/*
	__asm
		ld a, '@'
		out ($20), a
		halt
	__endasm;*/
	
	//sprintf(buffer, Message);
	printf(Message);
}
