#ifndef TIMER2_PRIVATE_H
#define TIMER2_PRIVATE_H


#define TCCR2_REG   *((volatile u8 *)0x45)
#define TCNT2_REG   *((volatile u8 *)0x44)
#define OCR2_REG    *((volatile u8 *)0x43)


#define TIMER2_OVER_FLOW_VALUE      256  

#define TIMER2_OVF_FLAG_BIT      6

#endif