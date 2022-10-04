#ifndef I2C_PRIVATE_H
#define I2C_PRIVATE_H


/*Master transmitter*/
#define	START_CONDITION_TRANSMITTED													0x08
#define	REPEATED_START_CONDITION_TRANSMITTED								0x10
#define	MASTER_SLA_W_TRANSMITTED_ACK_RECEIVED												0x18
#define	MASTER_SLA_W_TRANSMITTED_NOT_ACK_RECEIVED									0x20
#define	MASTER_DATA_TRANSMITTED_ACK_RECEIVED										        0x28
#define	MASTER_DATA_TRANSMITTED_NOT_ACK_RECEIVED										0x30
#define   MASTER_ARBITRATION_LOST																			0x38
/*MASTER RECEIVER*/
#define	MASTER_SLA_R_TRANSMITTED_ACK_RECEIVED												0x40
#define	MASTER_SLA_R_TRANSMITTED_NOT_ACK_RECEIVED									    0x48
#define	MASTER_DATA_RECEIVED_ACK_RETURNED											        0x50
#define	MASTER_DATA_RECEIVED_NOT_ACK_RETURNED											0x58
/*SLAVE RECEIVER*/
#define	SLAVE_SLA_W_RECEIVED_ACK_RETURNED													0x60
#define	GENERAL_CALL_ADDRESS_RECEIVED_ACK_RETURNED					0x70

#define   SLAVE_SLA_W_DATA_RECEIVED_ACK_RETURNED										0x78
#define   SLAVE_SLA_W_DATA_RECEIVED_NOT_ACK_RETURNED								0x88
#define	GENERAL_CALL_DATA_RECEIVED_ACK_RETURNED							0x90
#define	GENERAL_CALL_DATA_RECEIVED_NOT_ACK_RETURNED					0x98
/*SLAVE TRANSMITTER*/
#define	SLAVE_SLA_R_RECEIVED_ACK_RETURNED													0xA8

#define   SLAVE_DATA_TRANSMITTED_ACK_RECEIVED												0xB8
#define   SLAVEDATA_TRANSMITTED_NOT_ACK_RECEIVED										0xC0

/*TWBR_Value*/
#define TWBR_Value  0x47
/*Prescaller Values*/
#define DIVEDBY_1        0b00
#define DIVEDBY_4        0b01
#define DIVEDBY_16      0b10
#define DIVEDBY_64      0b11

/*TWCR Bits*/
#define TWINT_BIT   7
#define TWSTA_BIT   5
#define TWEN_BIT    2
#define TWEA_BIT    6
#define TWSTO_BIT  4

/*General Call Address for slave*/
#define  GENERAL_CALL_ADDRESS		0b00000000
#define  ENABLE	1
#define  DISABLE	0

#define TWSR    *((volatile u8 *)0x21)
#define TWBR    *((volatile u8 *)0x20)
#define TWCR    *((volatile u8 *)0x56)
#define TWDR    *((volatile u8 *)0x23)
#define TWAR    *((volatile u8 *)0x22)

/********************************************************/
static u8 I2C_u8ReadStatus_Register(void);




#endif
