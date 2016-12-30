#include<stdio.h>

void main(void)
{
	// char c = getchar();
	// while(c != 0)
	// {
	// 	putchar(c);
	// 	c = getchar();
	// }

	uint16_t count = 0xFFFF;
	while (count != 0)
	{
		char c = getchar();
		if (c == 0) 
			count--;
		else 
		{
			putchar(c);
			count = 0xFFFF;
		}
	}
}
