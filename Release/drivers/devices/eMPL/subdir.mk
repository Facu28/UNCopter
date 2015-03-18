################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/devices/eMPL/inv_mpu.c \
../drivers/devices/eMPL/inv_mpu_dmp_motion_driver.c 

OBJS += \
./drivers/devices/eMPL/inv_mpu.o \
./drivers/devices/eMPL/inv_mpu_dmp_motion_driver.o 

C_DEPS += \
./drivers/devices/eMPL/inv_mpu.d \
./drivers/devices/eMPL/inv_mpu_dmp_motion_driver.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/devices/eMPL/%.o: ../drivers/devices/eMPL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


