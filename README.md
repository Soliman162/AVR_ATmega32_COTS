# ATMEGA32 COTS

## Architecture Layer:

 - The Test Folder has the Main Application: 
   1. Main file `main.c` 
   2. Cmake Files `CMakeLists.txt`
   
 - HAL Folder has: 
    1. L298
    2. HC-05(Bluetooth module)
    3. 7_Segment
    4. Crystal LCD
    5. DC motor
    6. EEPROM
    7. KeyPad
    8. L298
    9. LDR
    10. LED
    11. LM35 (Temperture Sensor)
    12. RTC
    13. Stepper motor
    14. Switch 
    
 - MCAL Folder has DIO Driver (which is needed because HAL Layer Connects to MCAL Layer):
   1. DIO
   2. Uart
   3. ADC
   4. Timer1
   5. Timer0
   6. WDT
   7. EXINT
   8. I2C
   
 - LIB Folder has (.h) Files has useful Macros to make the code easier and more readable:
   1. `BIT_MATH.h`
   2. `STD_TYPES.h`

 - SERVICES Folder :
   1. `Config.h` use to enable/disable global interrupt
   2. `private.h` 
   3. `SERVICES.c` 
   4. `SERVICES.h` configre the common delay function



