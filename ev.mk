# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/jewel/jewel.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_jewel
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := htc_jewel
PRODUCT_MANUFACTURER := HTC
# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=IML74K BUILD_FINGERPRINT=sprint_wwe/jewel/jewel:4.0.3/IML74K/60201.1:user/release-keys PRIVATE_BUILD_DESC="1.13.651.1 CL60201 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Bellus
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC Evo 4G LTE!\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/qhd

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
