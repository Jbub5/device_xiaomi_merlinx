#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/merlinx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

PRODUCT_NAME := voltage_merlinx
PRODUCT_DEVICE := merlinx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=merlinx \
    BuildDesc="merlin-user 11 RP1A.200720.011 V12.5.4.0.RJOMIXM release-keys" \
    BuildFingerprint=Redmi/merlin/merlin:11/RP1A.200720.011/V12.5.4.0.RJOMIXM:user/release-keys

# VoltageOS Stuff
VOLTAGE_BUILD_TYPE := UNOFFICIAL

VOLTAGE_CPU_SMALL_CORES := 0,1,2,3,4,5
VOLTAGE_CPU_BIG_CORES := 6,7

VOLTAGE_CPU_BG := 0-3
VOLTAGE_CPU_FG := 0-7
VOLTAGE_CPU_LIMIT_BG := 0-2
VOLTAGE_CPU_UNLIMIT_UI := 0-7
VOLTAGE_CPU_LIMIT_UI := 0-5
VOLTAGE_CPU_DISPLAY := 6-7
VOLTAGE_CPU_AUDIO := 0-4

TARGET_BOOT_ANIMATION_RES := 1920

TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NO_CAMERA := true
PRODUCT_PACKAGES += \
    Camera

# include private signing keys
-include vendor/voltage-priv/keys/keys.mk
