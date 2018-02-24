# Arduino Make file. Refer to https://github.com/sudar/Arduino-Makefile

ARDMK_DIR = /usr/share/arduino


# if you have placed the alternate core in your sketchbook directory, then you can just mention the core name alone.
ALTERNATE_CORE = attiny
# If not, you might have to include the full path.
ALTERNATE_CORE_PATH = /usr/share/arduino/hardware/arduino/

BOARD_TAG    = uno
ISP_PORT = /dev/ttyACM*

include $(ARDMK_DIR)/Arduino.mk

# !!! Important. You have to use make ispload to upload when using ISP programmer
