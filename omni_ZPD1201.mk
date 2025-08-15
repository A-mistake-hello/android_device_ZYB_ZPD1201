#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ZPD1201 device
$(call inherit-product, device/zyb/ZPD1201/device.mk)

PRODUCT_DEVICE := ZPD1201
PRODUCT_NAME := omni_ZPD1201
PRODUCT_BRAND := ZYB
PRODUCT_MODEL := ZPD1201
PRODUCT_MANUFACTURER := zyb

PRODUCT_GMS_CLIENTID_BASE := android-zyb

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_ZPD1201-user 12 SP1A.210812.016 703_704_705_710_717_718_719-244 release-keys"

BUILD_FINGERPRINT := ZYB/full_ZPD1201/ZPD1201:12/SP1A.210812.016/703_704_705_710_717_718_719-244:user/release-keys

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Keystore
PRODUCT_PACKAGES += \
    android.system.keystore2

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1
    