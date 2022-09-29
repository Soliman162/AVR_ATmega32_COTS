#ifndef SWITCH_INTERFACE_H
#define SWITCH_INTERFACE_H

typedef enum
{
    PULL_UP=0,
    PULL_DOWN

}INTERNAL_ATTACHMENT;

typedef enum
{
    RELEASED=0,
    PRESSED
    
}Switch_State_Config;

typedef struct 
{
    u8 PORT;
    u8 PIN;
    INTERNAL_ATTACHMENT Internal_attatch;

}Switch_Config_T;

void SW_voidinit(Switch_Config_T * Copy_ptrSwitch);
u8 SW_u8Get_State(Switch_Config_T * Copy_ptrSwitch);




#endif