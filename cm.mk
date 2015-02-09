## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := k30t

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/k30t/device_k30t.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := k30t
PRODUCT_NAME := cm_k30t
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := k30t
PRODUCT_MANUFACTURER := lenovo
