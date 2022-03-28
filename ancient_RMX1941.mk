#
# Copyright (C) 2021 The Android Open Source Project 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit some common AncientOS stuff
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Lawnchair
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

# Inherit from RMX1941 device makefile
$(call inherit-product, device/realme/RMX1941/device.mk)

# Dimensions
TARGET_SCREEN_HEIGHT := 1560
TARGET_SCREEN_WIDTH := 720

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

# AncientOS Stuff
# Face Unlock
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
ANCIENT_OFFICIAL ?= true
ANCIENT_WEEABO := true
#ANCIENT_GAPPS ?= true
TARGET_INCLUDE_PIXEL_CHARGER  := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX1941
PRODUCT_NAME := ancient_RMX1941
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme C2
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := Realme C2

# Build FP
BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES := \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.220205.004 8151327 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-google
