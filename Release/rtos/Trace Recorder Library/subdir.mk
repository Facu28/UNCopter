################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/Trace\ Recorder\ Library/trcBase.c \
../rtos/Trace\ Recorder\ Library/trcKernel.c \
../rtos/Trace\ Recorder\ Library/trcPort.c \
../rtos/Trace\ Recorder\ Library/trcUser.c 

OBJS += \
./rtos/Trace\ Recorder\ Library/trcBase.o \
./rtos/Trace\ Recorder\ Library/trcKernel.o \
./rtos/Trace\ Recorder\ Library/trcPort.o \
./rtos/Trace\ Recorder\ Library/trcUser.o 

C_DEPS += \
./rtos/Trace\ Recorder\ Library/trcBase.d \
./rtos/Trace\ Recorder\ Library/trcKernel.d \
./rtos/Trace\ Recorder\ Library/trcPort.d \
./rtos/Trace\ Recorder\ Library/trcUser.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/Trace\ Recorder\ Library/trcBase.o: ../rtos/Trace\ Recorder\ Library/trcBase.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"rtos/Trace Recorder Library/trcBase.d" -MT"rtos/Trace\ Recorder\ Library/trcBase.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

rtos/Trace\ Recorder\ Library/trcKernel.o: ../rtos/Trace\ Recorder\ Library/trcKernel.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"rtos/Trace Recorder Library/trcKernel.d" -MT"rtos/Trace\ Recorder\ Library/trcKernel.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

rtos/Trace\ Recorder\ Library/trcPort.o: ../rtos/Trace\ Recorder\ Library/trcPort.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"rtos/Trace Recorder Library/trcPort.d" -MT"rtos/Trace\ Recorder\ Library/trcPort.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

rtos/Trace\ Recorder\ Library/trcUser.o: ../rtos/Trace\ Recorder\ Library/trcUser.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"rtos/Trace Recorder Library/trcUser.d" -MT"rtos/Trace\ Recorder\ Library/trcUser.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


