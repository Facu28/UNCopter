################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtos/croutine.c \
../rtos/heap_4.c \
../rtos/list.c \
../rtos/queue.c \
../rtos/runtime_stat_timer.c \
../rtos/tasks.c \
../rtos/timers.c 

OBJS += \
./rtos/croutine.o \
./rtos/heap_4.o \
./rtos/list.o \
./rtos/queue.o \
./rtos/runtime_stat_timer.o \
./rtos/tasks.o \
./rtos/timers.o 

C_DEPS += \
./rtos/croutine.d \
./rtos/heap_4.d \
./rtos/list.d \
./rtos/queue.d \
./rtos/runtime_stat_timer.d \
./rtos/tasks.d \
./rtos/timers.d 


# Each subdirectory must supply rules for building sources it contributes
rtos/%.o: ../rtos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


