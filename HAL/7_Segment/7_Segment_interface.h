#ifndef SEGMENT_7_INTERFACE_H
#define SEGMENT_7_INTERFACE_H


#define COMMON_CATHOD 0
#define COMMON_ANODE  1


typedef struct{

	u8 Segment_type;
	u8 Segment_data_port;
	u8 Segment_enable_port;
	u8 Segment_enable_pin;
}SSD_config;


void Segment_voidInit(SSD_config Copy_Segment);

void Segment_voidEnable(SSD_config Copy_Segment);
void Segment_voidDisable(SSD_config Copy_Segment);

void Segment_voidWriteNumber (SSD_config Copy_Segment,u8 Copy_u8Number);

#endif
