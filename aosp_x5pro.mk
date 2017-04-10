## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := x5pro

# Inherit device configuration
$(call inherit-product, device/doogee/x5pro/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x5pro
PRODUCT_NAME := aosp_x5pro
PRODUCT_BRAND := Doogee
PRODUCT_MODEL := Doogee X5PRO
PRODUCT_MANUFACTURER := Doogee
