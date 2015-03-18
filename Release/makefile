################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include system/subdir.mk
-include rtos/portable/subdir.mk
-include rtos/Trace\ Recorder\ Library/subdir.mk
-include rtos/subdir.mk
-include drivers/peripherals/subdir.mk
-include drivers/devices/eMPL/subdir.mk
-include drivers/devices/subdir.mk
-include app/subdir.mk
-include api/src/subdir.mk
-include CMSIS/Drivers/source/subdir.mk
-include CMSIS/Core/CM3/DeviceSupport/NXP/LPC17xx/subdir.mk
-include CMSIS/Core/CM3/CoreSupport/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Autopilot.axf

# Tool invocations
Autopilot.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="Autopilot.map" -Xlinker --gc-sections -mcpu=cortex-m3 -mthumb -T "Autopilot_Release.ld" -o "Autopilot.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) Autopilot.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "Autopilot.axf"; # arm-none-eabi-objcopy -O binary "Autopilot.axf" "Autopilot.bin" ; checksum -p LPC1769 -d "Autopilot.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
