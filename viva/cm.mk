# Inherit device configuration for ALL viva
$(call inherit-product, device/huawei/viva/device_viva.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration for viva gsm
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := viva

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := viva
PRODUCT_NAME := cm_viva
PRODUCT_RELEASE_NAME := U9200
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := U9200
PRODUCT_MANUFACTURER := Huawei

ifneq ($(CM_BUILDTYPE),UNOFFICIAL)
    CM_BUILDTYPE := ShevT
    CM_VERSION := $(PRODUCT_VERSION_MAJOR)-$(shell date -u +%Y%m%d-HH:MM)-$(CM_BUILDTYPE)-$(CM_BUILD)$(CM_EXTRAVERSION)
endif
