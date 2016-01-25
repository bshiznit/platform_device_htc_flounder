#  Custom Changes

# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Inherit some common DESO stuff.
$(call inherit-product, vendor/deso/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/deso/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

# Extra Packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras

# Deso Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/flounder/overlay-deso

# Enable USB OTG (CAF commit to Settings)
ADDITIONAL_BUILD_PROPERTIES += \
    persist.sys.isUsbOtgEnabled=true

#Verity is disabled - so who cares
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME=flounder \
#    BUILD_FINGERPRINT=google/volantis/flounder:6.0/MMB29T/2256973:user/release-keys \
#    PRIVATE_BUILD_DESC="volantis-user 6.0 MMB29T 2256973 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_NAME := deso_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
