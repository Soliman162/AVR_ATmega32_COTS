#include "std_types.h"
#include "BIT_MATH.h"

#include "DIO_interface.h"
#include "7_Segment_interface.h"

const u8 SSD_u8Numbers[10] = {0b00111111,0b00000110,0b01011011,0b01001111,0b01100110,0b01101101,0b01111101,0b00000111,0b01111111,0b01101111};

void Segment_voidInit(SSD_config Copy_Segment)
{
	SetPin_enumDirection (Copy_Segment.Segment_enable_port ,Copy_Segment.Segment_enable_pin , DIO_OUTPUT);
	SetPort_enumDirection (Copy_Segment.Segment_data_port , 255);
}

void Segment_voidEnable(SSD_config Copy_Segment)
{
	if(Copy_Segment.Segment_type==COMMON_ANODE)
	{
		SetPin_enumValue     (Copy_Segment.Segment_enable_port ,Copy_Segment.Segment_enable_pin , DIO_HIGH  );
	}
	else if(Copy_Segment.Segment_type==COMMON_CATHOD)
	{
		SetPin_enumValue     (Copy_Segment.Segment_enable_port ,Copy_Segment.Segment_enable_pin , DIO_LOW   );
	}
}

void Segment_voidDisable(SSD_config Copy_Segment)
{
	if(Copy_Segment.Segment_type==COMMON_ANODE)
	{
		SetPin_enumValue     (Copy_Segment.Segment_enable_port ,Copy_Segment.Segment_enable_pin , DIO_LOW  );
	}
	else if(Copy_Segment.Segment_type==COMMON_CATHOD)
	{
		SetPin_enumValue     (Copy_Segment.Segment_enable_port ,Copy_Segment.Segment_enable_pin , DIO_HIGH   );
	}
}

void Segment_voidWriteNumber (SSD_config Copy_Segment,u8 Copy_u8Number)
{
	if(Copy_Segment.Segment_type==COMMON_ANODE)
	{
		SetPort_enumValue (Copy_Segment.Segment_data_port , ~(SSD_u8Numbers[Copy_u8Number]) );
	}
	else if(Copy_Segment.Segment_type==COMMON_CATHOD)
	{
		SetPort_enumValue (Copy_Segment.Segment_data_port ,   SSD_u8Numbers[Copy_u8Number]  );
	}
}

