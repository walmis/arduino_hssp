# arduino_hssp
Cypress PSoC® 1 Device hacking using an Arduino

This is a fork of the [original port](https://github.com/miracoli/arduino_hssp)
of the code found at <http://www.cypress.com/?rID=2906> (AN44168, Revision
2.30) to the Arduino platform by Dirk Petrautzki.

Modified by walmis for STM32 bluepill boards

Besides implementing the standard commands for flashing a PSoC, it includes the
following extra commands:
* `Cmnd_STK_READ_REG          0x79`
* `Cmnd_STK_WRITE_REG         0x80`
* `Cmnd_STK_READ_MEM          0x81`
* `Cmnd_STK_WRITE_MEM         0x82`
* `Cmnd_STK_EXEC_OPCODES      0x83`
* `Cmnd_STK_RUN_CSUM          0x84`
* `Cmnd_STK_START_CSUM        0x85`
* `Cmnd_STK_READ_SECURITY     0x86`

Which are very helpful to dump the protected flash of the PSoC.

## Usage

Clone the code into a folder called 'arduino_hssp', run `platformio run` 

Connect your PSoC 1 device as follows
(can be changed in issp_defs.h):

* `SDATA_PIN` -> PB15
* `SCLK_PIN` -> PB14
* `XRES_PIN` -> PB13
* (optional) `TARGET_VDD` -> PB12

Run the code and check serial output.

## Project status
Tested and working with Arduino Uno and CY8C21434.

## Example hack
<https://syscall.eu/blog/2018/03/12/aigo_part2/>
