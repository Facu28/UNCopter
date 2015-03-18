################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/Core/CM3/DeviceSupport/NXP/LPC17xx/system_LPC17xx.c 

OBJS += \
./CMSIS/Core/CM3/DeviceSupport/NXP/LPC17xx/system_LPC17xx.o 

C_DEPS += \
./CMSIS/Core/CM3/DeviceSupport/NXP/LPC17xx/system_LPC17xx.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/Core/CM3/DeviceSupport/NXP/LPC17xx/%.o: ../CMSIS/Core/CM3/DeviceSupport/NXP/LPC17xx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


