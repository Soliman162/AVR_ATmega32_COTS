#include "std_types.h"
#include "BIT_MATH.h"

#include "TIMER1_private.h"

#include "TIMER2_interface.h"
#include "TIMER2_private.h"
#include "TIMER2_config.h"

void TIMER2_voidInit(void)
{
    TCCR2_REG = 0b00000010;
}
void Timer2_voidDelay_us(u32 Copy_u32DelayTime)
{
    /*Set the value of the counter*/
    TCNT2_REG = 0;
    while(Copy_u32DelayTime >= TIMER2_OVER_FLOW_VALUE)
    {
        /*wait for the flag to be set*/
        while(GETBIT(TIFR_REG,TIMER2_OVF_FLAG_BIT) != 1);
        /*CLR the Flag */
        SETBIT(TIFR_REG,TIMER2_OVF_FLAG_BIT);
        Copy_u32DelayTime -= TIMER2_OVER_FLOW_VALUE;
    }

    if( Copy_u32DelayTime < TIMER2_OVER_FLOW_VALUE )
    {
        /*Set the value of the counter*/
        TCNT2_REG = TIMER2_OVER_FLOW_VALUE-Copy_u32DelayTime;
        /*wait for the flag to be set*/
        while(GETBIT(TIFR_REG,TIMER2_OVF_FLAG_BIT) != 1 );
        /*CLR the Flag */
        SETBIT(TIFR_REG,TIMER2_OVF_FLAG_BIT);
    }
}