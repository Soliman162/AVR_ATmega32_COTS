#ifndef  TIMER1_INTERFACE_H
#define  TIMER1_INTERFACE_H

#define ICU_RISING_EDGE     1
#define ICU_FALLING_EDGE    0

typedef enum 
{
    TIMER1_OVF=2,
    TIMER1_OUTCOMPARE_B,
    TIMER1_OUTCOMPARE_A,
    TIMER1_ICU

}TIMER1_t;

void Timer1_voidInit_OVF(void);
void Timer1_voidICU_EdgeSelector(u8 Copy_Edge);
void Timer1_voidDelay_Micro_Seconds(u32 Copy_u32Delay_micro_Seconds);
void Timer1_voidEnableInterrupt(TIMER1_t Copy_Timer, void (*Copy_ptrISR)(void));
void TIMER1_voidCLRFlag(TIMER1_t Copy_Timer);

void Timer1_voidDisableInterrupt(TIMER1_t Copy_Timer);




#endif // TIMER1_INTERFACE_H