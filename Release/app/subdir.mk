################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/beacon.c \
../app/data_collection.c \
../app/halt.c \
../app/hardware_init.c \
../app/heartbeat.c \
../app/main.c \
../app/mavlink_rx.c \
../app/parameters.c \
../app/telemetry.c 

OBJS += \
./app/beacon.o \
./app/data_collection.o \
./app/halt.o \
./app/hardware_init.o \
./app/heartbeat.o \
./app/main.o \
./app/mavlink_rx.o \
./app/parameters.o \
./app/telemetry.o 

C_DEPS += \
./app/beacon.d \
./app/data_collection.d \
./app/halt.d \
./app/hardware_init.d \
./app/heartbeat.d \
./app/main.d \
./app/mavlink_rx.d \
./app/parameters.d \
./app/telemetry.d 


# Each subdirectory must supply rules for building sources it contributes
app/%.o: ../app/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


