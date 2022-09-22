#include "std_types.h"
#include "BIT_MATH.h"

#include "TIMER1_interface.h"
#include "TIMER1_private.h"
#include "TIMER1_config.h"

//void (*Timer1_ISR[4])(void) = {NULL};

void Timer1_voidInit(void)
{
    TCCR1A_REG = 0b00000000;
    TCCR1B_REG = 0b00000010;
}
/*
void Timer1_voidEnable_INTERRUPT(TIMER1_INTERRUPT_INDEX Copy_enumInterrupt)
{
    SETBIT(TIMSK_REG,Copy_enumInterrupt);
}

void Timer1_voidDisable_INTERRUPT(TIMER1_INTERRUPT_INDEX Copy_enumInterrupt)
{
    CLRBIT(TIMSK_REG,Copy_enumInterrupt);
}
*/
void Timer1_voidDelay_Micro_Seconds(u32 Copy_u32Delay_micro_Seconds)
{
    while (Copy_u32Delay_micro_Seconds > TIMER1_OVER_FLOW_VALUE)
    {
        TCNT1_L_H_REG = 0;
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

/*
void Timer1_voidSet_Call_Back(TIMER1_INTERRUPT_INDEX Copy_enumInterrupt, void *Copy_ISR(void));
{
    Timer1_ISR[Copy_enumInterrupt-TIMER1_OVF] =  Copy_ISR;
}

void Timer1_voidClear_Flag(TIMER1_INTERRUPT_INDEX Copy_enumInterrupt)
{
    SETBIT(TIFR_REG,Copy_enumInterrupt);
}


/*Timer 1 CAPT ISR
void __vector_6 (void)
{
    if( Timer1_ISR[TIMER1_CAPT-TIMER1_OVF] != NULL )
    {
        Timer1_ISR[TIMER1_CAPT-TIMER1_OVF]();
    }  
}

/*Timer 1 COMPA ISR
void __vector_7 (void)
{
    if( Timer1_ISR[TIMER1_COMPA-TIMER1_OVF] != NULL )
    {
        Timer1_ISR[TIMER1_COMPA-TIMER1_OVF]();
    }  
}

/*Timer 1 COMPB ISR
void __vector_8 (void)
{
    if( Timer1_ISR[TIMER1_COMPB-TIMER1_OVF] != NULL )
    {
        Timer1_ISR[TIMER1_COMPB-TIMER1_OVF]();
    }  
}

/*Timer 1 OVF ISR
void __vector_9 (void)
{
    if( Timer1_ISR[TIMER1_OVF-TIMER1_OVF] != NULL )
    {
        Timer1_ISR[TIMER1_OVF-TIMER1_OVF]();
    }  
}

*/