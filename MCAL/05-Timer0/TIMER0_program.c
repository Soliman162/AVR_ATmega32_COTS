#include "std_types.h"
#include "BIT_MATH.h"

#include "TIMER1_private.h"

#include "TIMER0_interface.h"
#include "TIMER0_private.h"
#include "TIMER1_config.h"


void Timer0_voidInit(void)
{
    /*OVF mode - prescaler 8*/
    TCCR0_REG = 0b00000010;
}

void Timer0_voidDelay_us(u32 Copy_u32DelayTime)
{
    while(Copy_u32DelayTime >= TIMER0_OVER_FLOW_VALUE)
    {
        /*Set the value of the counter*/
        TCNT0_REG = 0;
        /*wait for the flag to be set*/
        while(GETBIT(TIFR_REG,TIMER0_OVF_FLAG_BIT) != 1);
        /*CLR the Flag */
        SETBIT(TIFR_REG,TIMER0_OVF_FLAG_BIT);
        Copy_u32DelayTime -= TIMER0_OVER_FLOW_VALUE;
    }

    if( Copy_u32DelayTime < TIMER0_OVER_FLOW_VALUE )
    {
        /*Set the value of the counter*/
        TCNT0_REG = TIMER0_OVER_FLOW_VALUE-Copy_u32DelayTime;
        /*wait for the flag to be set*/
        while(GETBIT(TIFR_REG,TIMER0_OVF_FLAG_BIT) != 1 );
        /*CLR the Flag */
        SETBIT(TIFR_REG,TIMER0_OVF_FLAG_BIT);
    }
}