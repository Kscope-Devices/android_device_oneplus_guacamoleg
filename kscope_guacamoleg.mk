#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleg device
$(call inherit-product, device/oneplus/guacamoleg/device.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/kscope/target/product/mobile.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kscope_guacamoleg
PRODUCT_DEVICE := guacamoleg
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1920
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7ProNR
PRODUCT_SYSTEM_DEVICE := OnePlus7ProNR

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7ProNR_EEA/OnePlus7ProNR:10/QKQ1.190716.003/2111271450:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7ProNR \
    TARGET_PRODUCT=OnePlus7ProNR \
    PRIVATE_BUILD_DESC="OnePlus7ProNR-user 10 QKQ1.190716.003 2111271450 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
