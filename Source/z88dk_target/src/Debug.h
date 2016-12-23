#ifndef __DEBUG_H__
#define __DEBUG_H__

#define dAssert(c)			if (!(c)) { __asm halt __endasm; }

#define dGuardRet(c)		if (!(c)) return;
#define dGuardRetVal(c, v)	if (!(c)) return v;

#endif	//__DEBUG_H__