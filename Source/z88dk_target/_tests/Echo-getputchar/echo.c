#include<stdio.h>

void main(void)
{
	char c = getchar();
	while(c != 0)
	{
		putchar(c);
		c = getchar();
	}
}
