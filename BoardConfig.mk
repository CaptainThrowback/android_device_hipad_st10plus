#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Platform
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := sc8825

TARGET_BOOTLOADER_BOARD_NAME := SC8825

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 mem=239M androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/hipad/st10plus/kernel
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET)

# Init
#TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 272629760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 176144384 # (176160768 - 16384)
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Recovery
TARGET_RECOVERY_FSTAB := device/hipad/st10plus/twrp.fstab
TARGET_USERIMAGES_USE_EXT4 := false

# TWRP
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun1/file
#TW_BRIGHTNESS_PATH := /sys/devices/40260000.sprd_pwm_bl/backlight/sprd_backlight/brightness
TW_INCLUDE_CRYPTO := true
TW_THEME := landscape_mdpi
TWHAVE_SELINUX := true
TW_NO_SCREEN_BLANK := true

TW_NO_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_DEFAULT_LANGUAGE := en-US

TW_EXTRA_LANGUAGES := false
LZMA_RAMDISK_TARGETS := recovery
TW_EXCLUDE_SUPERSU := true
TW_NO_EXFAT := true
TW_NO_USB_STORAGE := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
