#include "std_types.h"

#include "DIO_interface.h"

#include "Switch_interface.h"
#include "Switch_private.h"
#include "Switch_config.h"

void SW_voidinit(Switch_Config_T * Copy_ptrSwitch)
{
    SetPin_enumDirection(Copy_ptrSwitch->PORT,Copy_ptrSwitch->PIN,DIO_INPUT);
    if(Copy_ptrSwitch->Internal_attatch == PULL_UP)
    {
        SetPin_enumValue(Copy_ptrSwitch->PORT,Copy_ptrSwitch->PIN,DIO_HIGH);
    }else
    {   
        SetPin_enumValue(Copy_ptrSwitch->PORT,Copy_ptrSwitch->PIN,DIO_LOW);
    }   
}
u8 SW_u8Get_State(Switch_Config_T * Copy_ptrSwitch)
{
    u8 Switch_State = RELEASED;
    GetPin_enumValue(Copy_ptrSwitch->PORT,Copy_ptrSwitch->PIN,&Switch_State);

    if(Copy_ptrSwitch->Internal_attatch == PULL_UP )
    {
        return ~Switch_State;
    }
    return Switch_State;
}