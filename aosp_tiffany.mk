#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Aosp Extended Properties
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from tiffany device
$(call inherit-product, device/xiaomi/tiffany/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tiffany
PRODUCT_NAME := aosp_tiffany
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 5X
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tiffany-user 8.1.0 OPM1.171019.019 V10.2.3.0.ODBCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/tiffany/tiffany:8.1.0/OPM1.171019.019/V10.2.3.0.ODBCNXM:user/release-keys"
