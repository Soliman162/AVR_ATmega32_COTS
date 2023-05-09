#include "std_types.h"
#include "BIT_MATH.h"

#include "TIMER1_interface.h"
#include "TIMER1_private.h"
#include "TIMER1_config.h"

void  (*TIMER1_ISR[4])(void) = {NULL};

void Timer1_voidInit_OVF(void)
{
    TCCR1A_REG = 0b00000000;
    TCCR1B_REG = 0 | TIMER1_PRESCALLER;
    TCNT1_L_H_REG = 0;
}

void Timer1_voidICU_EdgeSelector(u8 Copy_Edge)
{
    if(Copy_Edge)
    {
        SETBIT(TCCR1B_REG,6);
    }else
    {
        CLRBIT(TCCR1B_REG,6);
    }
}

void Timer1_voidDelay_Micro_Seconds(u32 Copy_u32Delay_micro_Seconds)
{
    TCNT1_L_H_REG = 0;
    while (Copy_u32Delay_micro_Seconds > TIMER1_OVER_FLOW_VALUE)
    {
        /*check over flow*/
        while( GETBIT(TIFR_REG,TIMER1_OVERFLOW_FLAG_BIT_NUM) == 0 );
        /*Clear flag*/
        SETBIT(TIFR_REG,TIMER1_OVERFLOW_FLAG_BIT_NUM);
        Copy_u32Delay_micro_Seconds -= TIMER1_OVER_FLOW_VALUE;
    }

    if( Copy_u32Delay_micro_Seconds < TIMER1_OVER_FLOW_VALUE )
    {
        TCNT1_L_H_REG = TIMER1_OVER_FLOW_VALUE - Copy_u32Delay_micro_Seconds;
    }else if( Copy_u32Delay_micro_Seconds == TIMER1_OVER_FLOW_VALUE)
    {
        TCNT1_L_H_REG = 0;
    }
    /*check over flow*/
    while( GETBIT(TIFR_REG,TIMER1_OVERFLOW_FLAG_BIT_NUM) == 0 );
    /*Clear flag*/
    SETBIT(TIFR_REG,TIMER1_OVERFLOW_FLAG_BIT_NUM);
}

void Timer1_voidEnableInterrupt(TIMER1_t Copy_Timer, void (*Copy_ptrISR)(void))
{
    SETBIT(TIMSK_REG,Copy_Timer);
    TIMER1_ISR[Copy_Timer-2] = Copy_ptrISR;
}

void TIMER1_voidCLRFlag(TIMER1_t Copy_Timer)
{
    SETBIT(TIFR_REG, Copy_Timer);
}

void Timer1_voidDisableInterrupt(TIMER1_t Copy_Timer)
{
    CLRBIT(TIMSK_REG,Copy_Timer);
    TIMER1_ISR[Copy_Timer-2] = NULL;
}

/*ICU ISR*/
void __vector_6 (void)
{
    if( TIMER1_ISR[0] != NULL )
    {
        TIMER1_ISR[0]();
    }
    TIMER1_voidCLRFlag(TIMER1_ICU);
}
/*output compare A*/
void __vector_7 (void)
{
    if( TIMER1_ISR[1] != NULL )
    {
        TIMER1_ISR[1]();
    }
}
/*output compare B*/
void __vector_8 (void)
{
    if( TIMER1_ISR[2] != NULL )
    {
        TIMER1_ISR[2]();
    }
}
/*OVF ISR*/
void __vector_9 (void)
{
    if( TIMER1_ISR[3] != NULL )
    {
        TIMER1_ISR[3]();
    }
    TIMER1_voidCLRFlag(TIMER1_OVF);
}