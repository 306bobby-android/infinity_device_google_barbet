#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Infinity stuff.
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)
$(call inherit-product, device/google/redbull/infinity_common.mk)

include device/google/barbet/device-infinity.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_NAME := infinity_barbet

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="barbet-user 14 AP2A.240805.005.S4 12281092 release-keys" \
    BuildFingerprint=google/barbet/barbet:14/AP2A.240805.005.S4/12281092:user/release-keys \
    DeviceProduct=barbet

$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)
