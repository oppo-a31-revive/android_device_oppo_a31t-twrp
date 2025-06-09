#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/a31t

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    bionic/libc/kernel/uapi/linux/capability.h:recovery/root/system/include/linux/capability.h

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libion 

TW_RECOVERY_ADDITIONAL_RELINK_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Device Specific Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8916 \
    ro.hardware.gatekeeper=msm8916 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1

# Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    init.recovery.usb.rc \
    ueventd.qcom.rc

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=0 \
    ro.boot.selinux=0

# 禁用 SELinux
PRODUCT_PACKAGES += \
    sepolicy \
    file_contexts \
    selinux_version

