#include "std_types.h"
#include "BIT_MATH.h"
#include "CPU_CORE_interface.h"

#include <util/delay.h>

#include "DIO_interface.h"
#include "TIMER1_interface.h"


#include "LED_interface.h"

LED_config LED_1 = {PORTC,PIN1,STATE_HIGH}; 





int main(void)
{

    Timer1_voidInit();
    CPU_Core_voidEnable_INTERRUPT();

    Timer1_voidEnableOVERFLOW_INTERRUPT();
    Timer1_voidSet_Call_Back();

    LED_voidInit(&LED_1);
    LED_voidOFF(&LED_1);

    while(1)
    {
        LED_voidOFF(&LED_1);
    }

    return 0;
}
