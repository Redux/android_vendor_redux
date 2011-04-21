# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/redux/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/redux/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := bravo
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRI54 PRODUCT_NAME=htc_bravo BUILD_FINGERPRINT=htc_wwe/htc_bravo/bravo/bravo:2.2/FRF91/226611:user/release-keys TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="2.10.405.2 CL226611 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=redux_bravo_defconfig

# Extra Bravo (CDMA/GSM) overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/redux/overlay/bravo

ifdef THEMED
    PRODUCT_PACKAGE_OVERLAYS += vendor/redux/overlay/hdpi-theme

    PRODUCT_COPY_FILES += \
	vendor/redux/proprietary/GOLauncherEX.apk:system/app/GOLauncherEX.apk \
	vendor/redux/proprietary/GOLauncherEXNotification.apk:system/app/GOLauncherEXNotification.apk
endif

# Add proprietary apps and extra packages
PRODUCT_PACKAGES += \
    FM \
    hcitool

#
# Set ro.modversion
#
ifdef RELEASE
    PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=Redux-v1.1.2
else
ifdef RC
   PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=Redux-v1.1.2-RC1
else
    PRODUCT_PROPERTY_OVERRIDES += \
    	ro.modversion=Redux-SNAPSHOT-$(shell date +%m%d%Y)
endif
endif
