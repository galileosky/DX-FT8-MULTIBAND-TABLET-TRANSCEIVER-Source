#include <Display.h>
#include "options.h"
#include "SDR_Audio.h"
#include "Codec_Gains.h"
#include "main.h"
#include "button.h"
#include "DS3231.h"

#include "stm32fxxx_hal.h"
#include "stdio.h"

#include "ff.h"			/* Declarations of FatFs API */
#include "diskio.h"		/* Declarations of device I/O functions */

#include "stm32746g_discovery_sd.h"
#include "stm32746g_discovery.h"

#include "ff_gen_drv.h"
#include "sd_diskio.h"

#include "DS3231.h"
#include "log_file.h"

#include "stdlib.h"

/* Fatfs structure */
FATFS SDFatFs; /* File system object for SD card logical drive */
FIL MyFile; /* File object */
char SDPath[4]; /* SD card logical drive path */

// Order must match OptionNumber in options.h
OptionStruct s_optionsData[] = { {
/*Name*/"  Band_Index ", //opt0
		/*Init*/0,
		/*Min */0,
		/*Max */4,
		/*Rate*/1,
		/*Data*/0, } };

int16_t Options_GetValue(int optionIdx) {
	return s_optionsData[optionIdx].CurrentValue;
}

void Options_SetValue(int optionIdx, int16_t newValue) {
	s_optionsData[optionIdx].CurrentValue = newValue;

}

// Initialization
void Options_Initialize(void) {
	FRESULT fres;

	fres = f_mount(&SDFatFs, SDPath, 1);

	fres = f_open(&MyFile, "SaveParams.txt", FA_READ);
	if (fres == FR_OK) {
		f_close(&MyFile);
		Options_ReadFromMicroSD();
	} else {
		Options_ResetToDefaults();
		Options_WriteToMicroSD();
	}

	BandIndex = Options_GetValue(0);

	start_freq = sBand_Data[BandIndex].Frequency;

	show_wide(380, 0, (int) start_freq);
}

void Options_ResetToDefaults(void) {
	int i;
	for (i = 0; i < NUM_OPTIONS; i++) {
		Options_SetValue(i, s_optionsData[i].Initial);
	}
}

// MicroSD Access
void Options_WriteToMicroSD(void) {
	int i;
	for (i = 0; i < NUM_OPTIONS; i++) {
		Write_Int_MicroSD(i, Options_GetValue(i));
	}

}

void Options_ReadFromMicroSD(void) {
	int i;
	for (i = 0; i < NUM_OPTIONS; i++) {
		int16_t newValue = Read_Int_MicroSD(i);
		Options_SetValue(i, newValue);
	}
}

void Options_StoreValue(int optionIdx) {
	int16_t option_value;
	option_value = Options_GetValue(optionIdx);
	Write_Int_MicroSD((int16_t) optionIdx, option_value);
}

//Routine to write a integer value to the MicroSD starting at MicroSD address MicroSD_Addr
void Write_Int_MicroSD(uint16_t DiskBlock, int16_t value) {

	uint8_t i;
	char read_buffer[132];

	for (i = 0; i < 32; i++)
		read_buffer[i] = 0;
	f_mount(&SDFatFs, SDPath, 1);
	f_open(&MyFile, "SaveParams.txt", FA_OPEN_ALWAYS | FA_READ | FA_WRITE);
	HAL_Delay(1);
	f_lseek(&MyFile, DiskBlock * 32);
	sprintf(read_buffer, "%2i", value);
	f_puts(read_buffer, &MyFile);
	f_close(&MyFile);

}

int16_t Read_Int_MicroSD(uint16_t DiskBlock) {
	int16_t result = 0;
	uint8_t i;
	char read_buffer[132];

	for (i = 0; i < 32; i++)
		read_buffer[i] = 0;
	f_mount(&SDFatFs, SDPath, 1);
	f_open(&MyFile, "SaveParams.txt", FA_READ);
	f_lseek(&MyFile, DiskBlock * 32);
	f_gets(read_buffer, 32, &MyFile);
	result = atoi(read_buffer);
	f_close(&MyFile);
	return result;
}

