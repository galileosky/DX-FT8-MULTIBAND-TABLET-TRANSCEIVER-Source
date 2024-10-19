################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid.c \
../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_keybd.c \
../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_mouse.c \
../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_parser.c 

OBJS += \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid.o \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_keybd.o \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_mouse.o \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_parser.o 

C_DEPS += \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid.d \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_keybd.d \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_mouse.d \
./Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_parser.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USBH_Library/Class/HID/usbh_hid.o: ../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Inc -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/wm8994" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/ft5336" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities/Fonts" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Class/HID" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Core" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/rk043fn48h" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_USBH_Library/Class/HID/usbh_hid.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_keybd.o: ../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_keybd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Inc -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/wm8994" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/ft5336" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities/Fonts" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Class/HID" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Core" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/rk043fn48h" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_keybd.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_mouse.o: ../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_mouse.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Inc -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/wm8994" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/ft5336" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities/Fonts" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Class/HID" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Core" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/rk043fn48h" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_mouse.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_parser.o: ../Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_parser.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Inc -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/STM32746G_DISCOVERY" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/wm8994" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/ft5336" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Utilities/Fonts" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Class/HID" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Middlewares/STM32_USBH_Library/Core" -I"C:/STM32F746_32k_ADX_QSO_GPS_RTC_Si4732_GPZDA_Bands_ADIF/Katy/Drivers/BSP/rk043fn48h" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_USBH_Library/Class/HID/usbh_hid_parser.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
