################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../api/src/DebugConsole.c \
../api/src/qCOMMS.c \
../api/src/qPIDs.c \
../api/src/qPTOS.c \
../api/src/quadrotor.c \
../api/src/timing.c 

OBJS += \
./api/src/DebugConsole.o \
./api/src/qCOMMS.o \
./api/src/qPIDs.o \
./api/src/qPTOS.o \
./api/src/quadrotor.o \
./api/src/timing.o 

C_DEPS += \
./api/src/DebugConsole.d \
./api/src/qCOMMS.d \
./api/src/qPIDs.d \
./api/src/qPTOS.d \
./api/src/quadrotor.d \
./api/src/timing.d 


# Each subdirectory must supply rules for building sources it contributes
api/src/%.o: ../api/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


