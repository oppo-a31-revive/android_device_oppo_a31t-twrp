#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
	device/oppo/a31t/prebuilt/kernel:kernel \
	device/oppo/a31t/prebuilt/dt.img:dt.img

PRODUCT_DEVICE := a31t
PRODUCT_NAME := omni_a31t
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := a31t
PRODUCT_MANUFACTURER := oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a31t-user 4.4.4 KTU84P eng.root.20160601 release-keys"

BUILD_FINGERPRINT := OPPO/A31/A31t:4.4.4/KTU84P/1391528547:user/release-keys
