################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/peripherals/qAnalog.c \
../drivers/peripherals/qESC.c \
../drivers/peripherals/qI2C.c \
../drivers/peripherals/qPWM.c \
../drivers/peripherals/qUART.c \
../drivers/peripherals/qWDT.c 

OBJS += \
./drivers/peripherals/qAnalog.o \
./drivers/peripherals/qESC.o \
./drivers/peripherals/qI2C.o \
./drivers/peripherals/qPWM.o \
./drivers/peripherals/qUART.o \
./drivers/peripherals/qWDT.o 

C_DEPS += \
./drivers/peripherals/qAnalog.d \
./drivers/peripherals/qESC.d \
./drivers/peripherals/qI2C.d \
./drivers/peripherals/qPWM.d \
./drivers/peripherals/qUART.d \
./drivers/peripherals/qWDT.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/peripherals/%.o: ../drivers/peripherals/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


