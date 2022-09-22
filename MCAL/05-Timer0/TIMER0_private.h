#ifndef TIMER0_PRIVATE_H
#define TIMER0_PRIVATE_H


#define TCCR0_REG   *((volatile u8 *)0x53)
#define TCNT0_REG   *((volatile u8 *)0x52)
#define OCR0_REG    *((volatile u8 *)0x5C)

/*
#define TIMSK_REG       *((volatile u8 *)0x59)
#define TIFR_REG        *((volatile u8 *)0x58)
*/

#define TIMER0_OVER_FLOW_VALUE  256

#define TIMER0_OVF_FLAG_BIT     0



#endif