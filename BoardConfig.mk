#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_KERNEL_VERSION := 4.9

# Inherit from common msm8953-common
include device/xiaomi/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tiffany

# Display
TARGET_SCREEN_DENSITY := 440

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := lineage_tiffany_defconfig

# Lights
SOONG_CONFIG_XIAOMI_MSM8953_LIGHTS_WHITE_LED := true

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55087422464 # 25765059584 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE := 629145600

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/enable_dt2w"

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2019-02-05

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib64/hw/gf_fingerprint.default.so|fakelogprint.so \
    /vendor/lib64/libgf_ca.so|fakelogprint.so \
    /vendor/lib64/libgf_hal.so|fakelogprint.so

# Inherit the proprietary files
include vendor/xiaomi/tiffany/BoardConfigVendor.mk
