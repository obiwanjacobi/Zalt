#ifndef __MEMORYFAR_H__
#define __MEMORYFAR_H__

#ifdef __SCCZ80
typedef void *__far farptr_t;
#define farptrfn_t(fn) (*__far fn)

typedef uint8_t *__far farptru8_t;
typedef uint16_t *__far farptru16_t;

#endif //__SCCZ80

#endif //__MEMORYFAR_H__
