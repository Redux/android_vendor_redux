# Generic cyanogenmod product
PRODUCT_NAME := redux
PRODUCT_BRAND := redux
PRODUCT_DEVICE := generic

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Common redux overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/redux/overlay/common

# Bring in some audio files
include frameworks/base/data/sounds/OriginalAudio.mk

PRODUCT_COPY_FILES += \
    vendor/redux/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/redux/prebuilt/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/redux/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
    vendor/redux/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/redux/prebuilt/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/redux/prebuilt/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/redux/prebuilt/etc/profile:system/etc/profile \
    vendor/redux/prebuilt/etc/init.local.rc:system/etc/init.local.rc \
    vendor/redux/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/redux/prebuilt/etc/init.d/90screenstate_scaling:system/etc/init.d/90screenstate_scaling \
    vendor/redux/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/redux/prebuilt/bin/handle_compcache:system/bin/handle_compcache \
    vendor/redux/prebuilt/bin/compcache:system/bin/compcache \
    vendor/redux/prebuilt/bin/fix_permissions:system/bin/fix_permissions \
    vendor/redux/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/redux/prebuilt/xbin/htop:system/xbin/htop \
    vendor/redux/prebuilt/xbin/irssi:system/xbin/irssi \
    vendor/redux/prebuilt/xbin/powertop:system/xbin/powertop \
    vendor/redux/prebuilt/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

    PRODUCT_COPY_FILES += \
	vendor/redux/proprietary/gapps/app/GenieWidget.apk:/system/app/GenieWidget.apk \
	vendor/redux/proprietary/gapps/app/Gmail.apk:/system/app/Gmail.apk \
	vendor/redux/proprietary/gapps/app/GoogleBackupTransport.apk:/system/app/GoogleBackupTransport.apk \
	vendor/redux/proprietary/gapps/app/GoogleCalendarSyncAdapter.apk:/system/app/GoogleCalendarSyncAdapter.apk \
	vendor/redux/proprietary/gapps/app/GoogleContactsSyncAdapter.apk:/system/app/GoogleContactsSyncAdapter.apk \
	vendor/redux/proprietary/gapps/app/GoogleFeedback.apk:/system/app/GoogleFeedback.apk \
	vendor/redux/proprietary/gapps/app/GooglePartnerSetup.apk:/system/app/GooglePartnerSetup.apk \
	vendor/redux/proprietary/gapps/app/GoogleQuickSearchBox.apk:/system/app/GoogleQuickSearchBox.apk \
	vendor/redux/proprietary/gapps/app/GoogleServicesFramework.apk:/system/app/GoogleServicesFramework.apk \
	vendor/redux/proprietary/gapps/app/kickback.apk:/system/app/Kickback.apk \
	vendor/redux/proprietary/gapps/app/LatinImeTutorial.apk:/system/app/LatinImeTutorial.apk \
	vendor/redux/proprietary/gapps/app/Maps.apk:/system/app/Maps.apk \
	vendor/redux/proprietary/gapps/app/MarketUpdater.apk:/system/app/MarketUpdater.apk \
	vendor/redux/proprietary/gapps/app/MediaUploader.apk:/system/app/MediaUploader.apk \
	vendor/redux/proprietary/gapps/app/Microbes.apk:/system/app/Microbes.apk \
	vendor/redux/proprietary/gapps/app/NetworkLocation.apk:/system/app/NetworkLocation.apk \
	vendor/redux/proprietary/gapps/app/OneTimeInitializer.apk:/system/app/OneTimeInitializer.apk \
	vendor/redux/proprietary/gapps/app/SetupWizard.apk:/system/app/SetupWizard.apk \
	vendor/redux/proprietary/gapps/app/soundback.apk:/system/app/Soundback.apk \
	vendor/redux/proprietary/gapps/app/Street.apk:/system/app/Street.apk \
	vendor/redux/proprietary/gapps/app/Talk.apk:/system/app/Talk.apk \
	vendor/redux/proprietary/gapps/app/talkback.apk:/system/app/Talkback.apk \
	vendor/redux/proprietary/gapps/app/Vending.apk:/system/app/Vending.apk \
	vendor/redux/proprietary/gapps/app/VoiceSearch.apk:/system/app/VoiceSearch.apk \
	vendor/redux/proprietary/gapps/app/YouTube.apk:/system/app/YouTube.apk \
	vendor/redux/proprietary/gapps/etc/permissions/android.software.sip.voip.xml:/system/etc/permissions/android.software.sip.voip.xml \
	vendor/redux/proprietary/gapps/etc/permissions/com.google.android.maps.xml:/system/etc/permissions/com.google.android.maps.xml \
	vendor/redux/proprietary/gapps/etc/permissions/features.xml:/system/etc/permissions/features.xml \
	vendor/redux/proprietary/gapps/framework/com.google.android.maps.jar:/system/framework/com.google.android.maps.jar \
	vendor/redux/proprietary/gapps/lib/libmicrobes_jni.so:/system/lib/libmicrobes_jni.so \
	vendor/redux/proprietary/gapps/lib/libvoicesearch.so:/system/lib/libvoicesearch.so
#	vendor/redux/proprietary/gapps/app/googlevoice.apk:/system/app/GoogleVoice.apk

PRODUCT_PACKAGES += \
    LatinIME