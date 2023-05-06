#ifndef CPU_CORE_INTERFACE_H
#define CPU_CORE_INTERFACE_H

#include "Config.h"

void Init_voidSystem(void);

#if OS == 0
    #define _delay_us(Copy_u32MicroSeconds)    Timer2_voidDelay_us(Copy_u32MicroSeconds)
#elif OS==1
    #define _delay_us(Copy_u32MicroSeconds)     vTaskDelay(Copy_u32MicroSeconds)
#endif

#endif