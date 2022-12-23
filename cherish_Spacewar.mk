#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing
TARGET_GAPPS_ARCH := arm64

# Bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=Spacewar \
    PRIVATE_BUILD_DESC="Spacewar-user 12 SKQ1.211230.001 1669043167 release-keys"

BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1669043167:user/release-keys

# VoidUI environment flags
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
USE_PIXEL_CHARGING := true
TARGET_USES_MINI_GAPPS := false
TARGET_BUILD_WITH_LTO := false

# VoidUI maintainer flags
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Mejsi
