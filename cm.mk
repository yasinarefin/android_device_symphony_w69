## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := w69

TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/symphony/w69/full_w69.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := w69
PRODUCT_NAME := cm_w69
PRODUCT_BRAND := symphony
PRODUCT_MODEL := w69
PRODUCT_MANUFACTURER := symphony
