#ifndef  TIMER1_INTERFACE_H
#define  TIMER1_INTERFACE_H


void Timer1_voidInit(void);
void Timer1_voidEnableOVERFLOW_INTERRUPT(void);
void Timer1_voidDelay_Micro_Seconds_Sync(u16 Copy_u16Delay_micro_Seconds);
//void Timer1_voidDelay_Micro_Seconds_Async(u16 Copy_u16Delay_micro_Seconds, void *ptr_ISR(void));



#endif // TIMER1_INTERFACE_H