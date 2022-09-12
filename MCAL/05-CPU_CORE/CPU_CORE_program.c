#include "std_types.h"
#include "BIT_MATH.h"

#include "CPU_CORE_interface.h"
#include "CPU_CORE_private.h"
#include "CPU_CORE_config.h"

void CPU_Core_voidEnable_INTERRUPT(void)
{
    SETBIT(STATUS_REG,ENABLE_INTERRUPT_BIT_NUM);
}
