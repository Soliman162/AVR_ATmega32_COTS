#ifndef TIMER1_PRIVATE_H


#define TCCR1A  *((volatile u8 *)0x4F)
#define TCCR1B  *((volatile u8 *)0x4E)
#define TCNT1L  *((volatile u16*)0x4C)
#define OCR1AL  *((volatile u16*)0x4A)

#define OCR1BL  *((volatile u16*)0x48)

#define ICR1L   *((volatile u16*)0x46)

#define TIMSK   *((volatile u8 *)0x59)

#define TIFR    *((volatile u8 *)0x58)




#endif //  TIMER1_PRIVATE_H