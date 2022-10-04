#include "..\..\SERVICES\BIT_MATH.h"
#include "..\..\SERVICES\std_types.h"

#include "I2C_interface.h"
#include "I2C_private.h"
#include "I2C_config.h"

/***************************************************I2C_MASTER****************************************************************/
void I2C_voidMaster_Init(void)
{
    /*set prescaler to Value*/
    TWSR |= PRESCALLER;
    /*SCL frequency is 50KH*/
    TWBR = TWBR_Value;
    /*Enable TWI*/
    TWCR = 0x04 ;
}
ERROR_enumSTATE I2C_enumTransmit_REAPEATED_START_CONDITION(void)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*Clear Interrupt flag , Enable TWI Module , Set Start Bit to one*/
    TWCR = (1<<TWINT_BIT) | (1<<TWEN_BIT) | (1<<TWSTA_BIT);
    /*wait for TWI to repeated start condition*/
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == 0x10 )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State;
}

ERROR_enumSTATE I2C_enumTransmit_START_CONDITION(void)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*Clear Interrupt flag , Enable TWI Module , Set Start Bit to one*/
    TWCR = (1<<TWINT_BIT) | (1<<TWEN_BIT) | (1<<TWSTA_BIT);
    /*wait for TWI to send start condition*/
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == 0x08 )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State;
}
void I2C_voidTransmit_STOP_CONDITION(void)
{
    /*Clear Interrupt flag , Enable TWI Module , Set Stop Bit to one*/
    TWCR = (1<<TWINT_BIT) | (1<<TWEN_BIT) | (1<<TWSTO_BIT);
}
ERROR_enumSTATE I2C_enumMaster_Send_Address(u8 Copy_u8Slave_Address, u8 Copy_u8RW_Command)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*Copy Address to the TWDR Register*/
    TWDR = ( (Copy_u8Slave_Address <<1) | Copy_u8RW_Command  );
    /*Clear Interrupt flag , Enable TWI Module*/
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT) | (1<<TWEA_BIT);
    /*wait for TWI to send slave address*/
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() ==MASTER_SLA_W_TRANSMITTED_ACK_RECEIVED && Copy_u8RW_Command == WRITE_COMMAND )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }else if( I2C_u8ReadStatus_Register() == MASTER_SLA_R_TRANSMITTED_ACK_RECEIVED && Copy_u8RW_Command == READ_COMMAND  )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State;
}
void I2C_voidMaster_GENERAL_CALL_Address(void)
{
    /*Copy Address to the TWDR Register*/
    TWAR = ( GENERAL_CALL_ADDRESS  | WRITE_COMMAND  ) ;
    /*Clear Interrupt flag , Enable TWI Module*/
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT);
    /*wait for TWI to send general call address*/
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
}

ERROR_enumSTATE I2C_enumMaster_Send_Data(u8 Copy_u8Data)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*Copy data to the TWDR Register*/
    TWDR = Copy_u8Data;
    /*Clear Interrupt flag , Enable TWI Module*/
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT) | (1<<TWEA_BIT);
    /*wait for TWI to send data */
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == MASTER_DATA_TRANSMITTED_ACK_RECEIVED  )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State;
}
ERROR_enumSTATE I2C_enumMaster_Receive_Data_Without_ACK(u8 *Copy_u8ptrData)
{
	ERROR_enumSTATE I2C_enumError_State  = STD_TYPES_NOK;
    /*Clear Interrupt flag , Enable TWI Module*/
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT);
    /*wait for TWI to receive data */
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == MASTER_DATA_RECEIVED_NOT_ACK_RETURNED )
     {
    	*Copy_u8ptrData = TWDR;
     	I2C_enumError_State = STD_TYPES_OK;
     }
     return I2C_enumError_State;
}
ERROR_enumSTATE I2C_enumMaster_Receive_Data_With_ACK(u8 *Copy_u8ptrData)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*Clear Interrupt flag , Enable TWI Module*/
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT) | (1<<TWEA_BIT);
    /*wait for TWI to receive data & send acknowledge bit*/
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == MASTER_DATA_RECEIVED_ACK_RETURNED )
     {
    	*Copy_u8ptrData = TWDR;
    	LOC_enumError_State = STD_TYPES_OK;
     }
     return LOC_enumError_State;
}
/************************************************************************************************/

void I2C_voidSLAVE_Init(void)
{
    /*Enable TWI*/
    TWCR = 0x04 ;
    TWAR = (SLAVE_ADDRESS<<1) | GENERAL_CALL ;
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT) ;
}
ERROR_enumSTATE I2C_voidSLAVE_Listen(void)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*TWI is Listening the SDA until it Receive his address*/
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == SLAVE_SLA_R_RECEIVED_ACK_RETURNED || I2C_u8ReadStatus_Register() == SLAVE_SLA_W_RECEIVED_ACK_RETURNED )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State;
}
ERROR_enumSTATE I2C_voidSLAVE_Send_Data(u8 Copy_u8Data)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*Copy the data to the TWDR register*/
    TWDR = Copy_u8Data;
    /*set ACK_BIT,Enable TWI BIT to one & clear the TWI interrupt*/
    TWCR = (1<<TWEN_BIT) | (1<<TWEA_BIT) | (1<<TWINT_BIT);
    /*wait for TWI to send data */
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == SLAVE_DATA_TRANSMITTED_ACK_RECEIVED )
    {
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State;
}

ERROR_enumSTATE I2C_u8SLAVE_Receive_Data_With_ACK(u8 *Copy_u8ptrData)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*set ACK_BIT,Enable TWI BIT to one & clear the TWI interrupt flag*/
    TWCR = (1<<TWEA_BIT) | (1<<TWEN_BIT) | (1<<TWINT_BIT) ;
    /*wait for TWI to receive data & send acknowledge bit */
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == SLAVE_SLA_W_DATA_RECEIVED_ACK_RETURNED )
    {
    	*Copy_u8ptrData = TWDR;
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State ;
}
ERROR_enumSTATE I2C_u8SLAVE_Receive_Data_Without_ACK(u8 *Copy_u8ptrData)
{
	ERROR_enumSTATE LOC_enumError_State  = STD_TYPES_NOK;
    /*set ACK_BIT,Enable TWI BIT to one & clear the TWI interrupt flag*/
    TWCR = (1<<TWEN_BIT) | (1<<TWINT_BIT) ;
    /*wait for TWI to receive data */
    while(GETBIT(TWCR,TWINT_BIT) == 0 );
    if( I2C_u8ReadStatus_Register() == SLAVE_SLA_W_DATA_RECEIVED_NOT_ACK_RETURNED )
    {
    	*Copy_u8ptrData = TWDR;
    	LOC_enumError_State = STD_TYPES_OK;
    }
    return LOC_enumError_State ;
}
/************************************************************/
static u8 I2C_u8ReadStatus_Register(void)
{
	return ( TWSR & 0xF8 );
}
