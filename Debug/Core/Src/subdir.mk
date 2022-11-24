################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/core_mqtt.c \
../Core/Src/core_mqtt_serializer.c \
../Core/Src/core_mqtt_state.c \
../Core/Src/es_wifi.c \
../Core/Src/es_wifi_io.c \
../Core/Src/event_callback_stub.c \
../Core/Src/get_time_stub.c \
../Core/Src/main.c \
../Core/Src/memcpy.c \
../Core/Src/mqtt_cbmc_state.c \
../Core/Src/network_interface_stubs.c \
../Core/Src/stm32l4xx_hal_msp.c \
../Core/Src/stm32l4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c \
../Core/Src/transport_interface.c \
../Core/Src/wifi.c 

OBJS += \
./Core/Src/core_mqtt.o \
./Core/Src/core_mqtt_serializer.o \
./Core/Src/core_mqtt_state.o \
./Core/Src/es_wifi.o \
./Core/Src/es_wifi_io.o \
./Core/Src/event_callback_stub.o \
./Core/Src/get_time_stub.o \
./Core/Src/main.o \
./Core/Src/memcpy.o \
./Core/Src/mqtt_cbmc_state.o \
./Core/Src/network_interface_stubs.o \
./Core/Src/stm32l4xx_hal_msp.o \
./Core/Src/stm32l4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o \
./Core/Src/transport_interface.o \
./Core/Src/wifi.o 

C_DEPS += \
./Core/Src/core_mqtt.d \
./Core/Src/core_mqtt_serializer.d \
./Core/Src/core_mqtt_state.d \
./Core/Src/es_wifi.d \
./Core/Src/es_wifi_io.d \
./Core/Src/event_callback_stub.d \
./Core/Src/get_time_stub.d \
./Core/Src/main.d \
./Core/Src/memcpy.d \
./Core/Src/mqtt_cbmc_state.d \
./Core/Src/network_interface_stubs.d \
./Core/Src/stm32l4xx_hal_msp.d \
./Core/Src/stm32l4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d \
./Core/Src/transport_interface.d \
./Core/Src/wifi.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L475xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../X-CUBE-MEMS1/Target -I../Drivers/BSP/B-L475E-IOT01A2 -I../Drivers/BSP/Components/lsm6dsl -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/core_mqtt.d ./Core/Src/core_mqtt.o ./Core/Src/core_mqtt.su ./Core/Src/core_mqtt_serializer.d ./Core/Src/core_mqtt_serializer.o ./Core/Src/core_mqtt_serializer.su ./Core/Src/core_mqtt_state.d ./Core/Src/core_mqtt_state.o ./Core/Src/core_mqtt_state.su ./Core/Src/es_wifi.d ./Core/Src/es_wifi.o ./Core/Src/es_wifi.su ./Core/Src/es_wifi_io.d ./Core/Src/es_wifi_io.o ./Core/Src/es_wifi_io.su ./Core/Src/event_callback_stub.d ./Core/Src/event_callback_stub.o ./Core/Src/event_callback_stub.su ./Core/Src/get_time_stub.d ./Core/Src/get_time_stub.o ./Core/Src/get_time_stub.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/memcpy.d ./Core/Src/memcpy.o ./Core/Src/memcpy.su ./Core/Src/mqtt_cbmc_state.d ./Core/Src/mqtt_cbmc_state.o ./Core/Src/mqtt_cbmc_state.su ./Core/Src/network_interface_stubs.d ./Core/Src/network_interface_stubs.o ./Core/Src/network_interface_stubs.su ./Core/Src/stm32l4xx_hal_msp.d ./Core/Src/stm32l4xx_hal_msp.o ./Core/Src/stm32l4xx_hal_msp.su ./Core/Src/stm32l4xx_it.d ./Core/Src/stm32l4xx_it.o ./Core/Src/stm32l4xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su ./Core/Src/transport_interface.d ./Core/Src/transport_interface.o ./Core/Src/transport_interface.su ./Core/Src/wifi.d ./Core/Src/wifi.o ./Core/Src/wifi.su

.PHONY: clean-Core-2f-Src

