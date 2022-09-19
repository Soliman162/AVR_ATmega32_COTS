#ifndef  TIMER1_INTERFACE_H
#define  TIMER1_INTERFACE_H

typedef enum{

    TIMER1_OVF = 2,
    TIMER1_COMPB, 
    TIMER1_COMPA,
    TIMER1_CAPT

}TIMER1_INTERRUPT_INDEX;



void Timer1_voidInit(void);

void Timer1_voidEnableOVERFLOW_INTERRUPT(void);
void Timer1_voidDisableOVERFLOW_INTERRUPT(void);
void Timer1_voidDelay_Micro_Seconds(u32 Copy_u32Delay_micro_Seconds);
void Timer1_voidSet_Call_Back(TIMER1_INTERRUPT_INDEX Copy_enumInterrupt, void *Copy_ISR(void));
void Timer1_voidClear_OVERFLOW_Flag(void);



#endif // TIMER1_INTERFACE_H