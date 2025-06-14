#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oppo/a31t

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916
TARGET_BOARD_PLATFORM := msm8916

# Kernel
TARGET_PREBUILT_KERNEL := device/oppo/a31t/prebuilt/kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci quiet
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --dt device/oppo/a31t/prebuilt/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100
BOARD_KERNEL_SEPARATED_DT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_MAX_BRIGHTNESS := 255
#TW_DEFAULT_BRIGHTNESS := 128
#TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := false
TW_INCLUDE_NTFS_3G := false
TW_NO_EXFAT_FUSE := false
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := false
TW_USE_TOOLBOX := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

