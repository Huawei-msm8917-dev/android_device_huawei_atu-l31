#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from atu-l31 device
$(call inherit-product, device/huawei/atu_l31/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := atu_l31
PRODUCT_MANUFACTURER := Huawei
PRODUCT_NAME := lineage_atu_l31
PRODUCT_MODEL := Y6 Prime 2018

PRODUCT_GMS_CLIENTID_BASE := android-huawei
TARGET_VENDOR := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="generic_a53-user 8.0.0 OPR6.170623.013 eng.jenkin.20180704.221654 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Huawei/generic_a53/generic_a53:8.0.0/OPR6.170623.013/jenkin07042216:user/test-keys
