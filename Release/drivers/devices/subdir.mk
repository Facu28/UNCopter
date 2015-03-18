################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/devices/HMC5883L.c \
../drivers/devices/_bmp085.c \
../drivers/devices/bmp085.c \
../drivers/devices/eeprom.c \
../drivers/devices/leds.c \
../drivers/devices/ultrasonic_sensor.c 

OBJS += \
./drivers/devices/HMC5883L.o \
./drivers/devices/_bmp085.o \
./drivers/devices/bmp085.o \
./drivers/devices/eeprom.o \
./drivers/devices/leds.o \
./drivers/devices/ultrasonic_sensor.o 

C_DEPS += \
./drivers/devices/HMC5883L.d \
./drivers/devices/_bmp085.d \
./drivers/devices/bmp085.d \
./drivers/devices/eeprom.d \
./drivers/devices/leds.d \
./drivers/devices/ultrasonic_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/devices/%.o: ../drivers/devices/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


