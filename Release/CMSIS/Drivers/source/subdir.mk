################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/Drivers/source/debug_frmwrk.c \
../CMSIS/Drivers/source/lpc17xx_adc.c \
../CMSIS/Drivers/source/lpc17xx_can.c \
../CMSIS/Drivers/source/lpc17xx_clkpwr.c \
../CMSIS/Drivers/source/lpc17xx_dac.c \
../CMSIS/Drivers/source/lpc17xx_emac.c \
../CMSIS/Drivers/source/lpc17xx_exti.c \
../CMSIS/Drivers/source/lpc17xx_gpdma.c \
../CMSIS/Drivers/source/lpc17xx_gpio.c \
../CMSIS/Drivers/source/lpc17xx_i2c.c \
../CMSIS/Drivers/source/lpc17xx_i2s.c \
../CMSIS/Drivers/source/lpc17xx_libcfg_default.c \
../CMSIS/Drivers/source/lpc17xx_mcpwm.c \
../CMSIS/Drivers/source/lpc17xx_nvic.c \
../CMSIS/Drivers/source/lpc17xx_pinsel.c \
../CMSIS/Drivers/source/lpc17xx_pwm.c \
../CMSIS/Drivers/source/lpc17xx_qei.c \
../CMSIS/Drivers/source/lpc17xx_rit.c \
../CMSIS/Drivers/source/lpc17xx_rtc.c \
../CMSIS/Drivers/source/lpc17xx_spi.c \
../CMSIS/Drivers/source/lpc17xx_ssp.c \
../CMSIS/Drivers/source/lpc17xx_systick.c \
../CMSIS/Drivers/source/lpc17xx_timer.c \
../CMSIS/Drivers/source/lpc17xx_uart.c \
../CMSIS/Drivers/source/lpc17xx_wdt.c 

OBJS += \
./CMSIS/Drivers/source/debug_frmwrk.o \
./CMSIS/Drivers/source/lpc17xx_adc.o \
./CMSIS/Drivers/source/lpc17xx_can.o \
./CMSIS/Drivers/source/lpc17xx_clkpwr.o \
./CMSIS/Drivers/source/lpc17xx_dac.o \
./CMSIS/Drivers/source/lpc17xx_emac.o \
./CMSIS/Drivers/source/lpc17xx_exti.o \
./CMSIS/Drivers/source/lpc17xx_gpdma.o \
./CMSIS/Drivers/source/lpc17xx_gpio.o \
./CMSIS/Drivers/source/lpc17xx_i2c.o \
./CMSIS/Drivers/source/lpc17xx_i2s.o \
./CMSIS/Drivers/source/lpc17xx_libcfg_default.o \
./CMSIS/Drivers/source/lpc17xx_mcpwm.o \
./CMSIS/Drivers/source/lpc17xx_nvic.o \
./CMSIS/Drivers/source/lpc17xx_pinsel.o \
./CMSIS/Drivers/source/lpc17xx_pwm.o \
./CMSIS/Drivers/source/lpc17xx_qei.o \
./CMSIS/Drivers/source/lpc17xx_rit.o \
./CMSIS/Drivers/source/lpc17xx_rtc.o \
./CMSIS/Drivers/source/lpc17xx_spi.o \
./CMSIS/Drivers/source/lpc17xx_ssp.o \
./CMSIS/Drivers/source/lpc17xx_systick.o \
./CMSIS/Drivers/source/lpc17xx_timer.o \
./CMSIS/Drivers/source/lpc17xx_uart.o \
./CMSIS/Drivers/source/lpc17xx_wdt.o 

C_DEPS += \
./CMSIS/Drivers/source/debug_frmwrk.d \
./CMSIS/Drivers/source/lpc17xx_adc.d \
./CMSIS/Drivers/source/lpc17xx_can.d \
./CMSIS/Drivers/source/lpc17xx_clkpwr.d \
./CMSIS/Drivers/source/lpc17xx_dac.d \
./CMSIS/Drivers/source/lpc17xx_emac.d \
./CMSIS/Drivers/source/lpc17xx_exti.d \
./CMSIS/Drivers/source/lpc17xx_gpdma.d \
./CMSIS/Drivers/source/lpc17xx_gpio.d \
./CMSIS/Drivers/source/lpc17xx_i2c.d \
./CMSIS/Drivers/source/lpc17xx_i2s.d \
./CMSIS/Drivers/source/lpc17xx_libcfg_default.d \
./CMSIS/Drivers/source/lpc17xx_mcpwm.d \
./CMSIS/Drivers/source/lpc17xx_nvic.d \
./CMSIS/Drivers/source/lpc17xx_pinsel.d \
./CMSIS/Drivers/source/lpc17xx_pwm.d \
./CMSIS/Drivers/source/lpc17xx_qei.d \
./CMSIS/Drivers/source/lpc17xx_rit.d \
./CMSIS/Drivers/source/lpc17xx_rtc.d \
./CMSIS/Drivers/source/lpc17xx_spi.d \
./CMSIS/Drivers/source/lpc17xx_ssp.d \
./CMSIS/Drivers/source/lpc17xx_systick.d \
./CMSIS/Drivers/source/lpc17xx_timer.d \
./CMSIS/Drivers/source/lpc17xx_uart.d \
./CMSIS/Drivers/source/lpc17xx_wdt.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/Drivers/source/%.o: ../CMSIS/Drivers/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


