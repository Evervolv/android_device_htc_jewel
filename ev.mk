# Inherit AOSP device configuration for jewel
$(call inherit-product, device/htc/jewel/jewel.mk)
# Inherit cdma config
$(call inherit-product, vendor/ev/config/cdma.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE := jewel
PRODUCT_NAME := ev_jewel
PRODUCT_BRAND := htc
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jewel BUILD_ID=JSS15Q BUILD_FINGERPRINT="htc/sprint_wwe/jewel:4.3/JSS15Q/310297.4:user/release-keys" PRIVATE_BUILD_DESC="4.13.651.4 CL310297 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Bellus

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC Evo 4G LTE!\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/720p

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

