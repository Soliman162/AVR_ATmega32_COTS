CMAKE_MINIMUM_REQUIRED(VERSION 3.16)

PROJECT(ATmega32_COTS)

set(CMAKE_GENERATOR CACHE STRING "Unix Makefiles")
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_CXX_COMPILER avr-g++ CACHE STRING "C++ compiler" FORCE)
set(CMAKE_C_COMPILER avr-gcc CACHE STRING "C compiler" FORCE)
set(CMAKE_OBJCOPY      avr-objcopy CACHE STRING "avr-objcopy" FORCE)
set(CMAKE_C_FLAGS "-mmcu=atmega32 -O0 -g -ggdb -DF_CPU=8000000UL ")

set(MCAL_PATH  ${CMAKE_CURRENT_SOURCE_DIR}/../MCAL )
set(HAL_PATH   ${CMAKE_CURRENT_SOURCE_DIR}/../HAL  )
set(OS_PATH    ${CMAKE_CURRENT_SOURCE_DIR}/../OS   )


add_executable( ${PROJECT_NAME}.elf 

                            ${CMAKE_CURRENT_SOURCE_DIR}/main.c

                            ${HAL_PATH}/HC_05/HC05_program.c
                            ${HAL_PATH}/L298/L298_program.c
                            ${HAL_PATH}/LED/LED_program.c
                            ${HAL_PATH}/LM35/LM35_program.c
                            ${HAL_PATH}/LDR/LDR_program.c
                            ${HAL_PATH}/CLCD/CLCD_program.c
                            ${HAL_PATH}/7_Segment/7_Segment_program.c
                            ${HAL_PATH}/Switch/Switch_program.c 
                            ${HAL_PATH}/DC_motor/DC_motor_program.c
                            ${HAL_PATH}/stepper_motor/stepper_program.c
 
                            ${MCAL_PATH}/01-DIO/DIO_program.c
                            ${MCAL_PATH}/02-UART/UART_program.c
                            ${MCAL_PATH}/03-ADC/ADC_program.c
                            ${MCAL_PATH}/04-Timer1/TIMER1_program.c  
                            ${MCAL_PATH}/05-Timer0/TIMER0_program.c                                                      
                            ${MCAL_PATH}/06-WDT/WDT_program.c
                            ${MCAL_PATH}/07-EXINT/EXINT_program.c
                            ${MCAL_PATH}/08-I2C/I2C_program.c
                            ${MCAL_PATH}/09-Timer2/TIMER2_program.c

                            #${OS_PATH}/source/port.c
                            #${OS_PATH}/source/event_groups.c  
                            #${OS_PATH}/source/heap_1.c  
                            #${OS_PATH}/source/list.c
                            #${OS_PATH}/source/queue.c  
                            #${OS_PATH}/source/stream_buffer.c  
                            #${OS_PATH}/source/tasks.c  
                            #${OS_PATH}/source/timers.c

                            ${CMAKE_CURRENT_SOURCE_DIR}/../SERVICES/SERVICES.c
)  

target_include_directories( ${PROJECT_NAME}.elf PUBLIC

                            ${MCAL_PATH}/01-DIO
                            ${MCAL_PATH}/02-UART
                            ${MCAL_PATH}/03-ADC
                            ${MCAL_PATH}/04-Timer1
                            ${MCAL_PATH}/05-Timer0
                            ${MCAL_PATH}/06-WDT
                            ${MCAL_PATH}/07-EXINT
                            ${MCAL_PATH}/08-I2C
                            ${MCAL_PATH}/09-Timer2

                            ${HAL_PATH}/L298
                            ${HAL_PATH}/HC_05
                            ${HAL_PATH}/LED
                            ${HAL_PATH}/LDR
                            ${HAL_PATH}/LM35
                            ${HAL_PATH}/CLCD
                            ${HAL_PATH}/7_Segment
                            ${HAL_PATH}/Switch
                            ${HAL_PATH}/DC_motor
                            ${HAL_PATH}/stepper_motor                            

                            #${OS_PATH}/include

                            ${CMAKE_CURRENT_SOURCE_DIR}/../LIB
                            ${CMAKE_CURRENT_SOURCE_DIR}/../SERVICES   
)     

add_custom_target(build ALL
                DEPENDS ${PROJECT_NAME}.elf
                COMMAND avr-objcopy -j .text -j .data -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex
                ) 
                
add_custom_target(flash 
                DEPENDS build 
                COMMAND  avrdude -c usbasp -p m32 -B 0.5 -U flash:w:"${PROJECT_NAME}.hex":a 
)

add_custom_target(remove
                    DEPENDS ${PROJECT_NAME}.elf
                    COMMAND  rm -rf ${CMAKE_CURRENT_SOURCE_DIR}/build/*
)

