#
# Copyright (C) 2026 The TeamWin Recovery Project
#

PRODUCT_NAME := omni_m12
PRODUCT_DEVICE := m12
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M127G
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := SM-M127G

# Inherit base AOSP configuration safely
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m12/device.mk)
