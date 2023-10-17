#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/redmi/rosemary/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Additions
$(call inherit-product-if-exists, $(GCGOP_VENDOR_DIR)/config.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation legacy
USE_LEGACY_BOOTANIMATION := false

# Blur
TARGET_USES_BLUR := false

# Quick tap
TARGET_SUPPORTS_QUICK_TAP := false

PRODUCT_NAME := derp_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := rosemary

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosemary-user 12 SP1A.210812.016 V13.0.8.0.SKLMIXM release-keys" \
    PRODUCT_NAME=rosemary

BUILD_FINGERPRINT := Redmi/rosemary_global/rosemary:12/SP1A.210812.016/V13.0.8.0.SKLMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

