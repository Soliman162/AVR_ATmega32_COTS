#include "std_types.h"
#include "BIT_MATH.h"

#include "DIO_interface.h"
#include "TIMER1_interface.h"

#include "LED_interface.h"

int main(void)
{
    LED_config LED_1 = {PORTC,PIN1,STATE_HIGH}; 

    Timer1_voidInit();
    LED_voidInit(&LED_1);
    LED_voidOFF(&LED_1);

    while(1)
    {
        LED_voidON(&LED_1);
        Timer1_voidDelay_Micro_Seconds_Sync(1000000);
        LED_voidOFF(&LED_1);
        Timer1_voidDelay_Micro_Seconds_Sync(1000000);

    }

    return 0;
}
