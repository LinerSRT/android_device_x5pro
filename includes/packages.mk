#HIDL for Oreo
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

PRODUCT_PACKAGES += \
   android.hardware.vibrator@1.0-impl \

PRODUCT_PACKAGES += \
   android.hardware.graphics.allocator@2.0-impl \
   android.hardware.graphics.allocator@2.0-service \
   android.hardware.graphics.composer@2.1-impl \
   android.hardware.graphics.mapper@2.0-impl \
   android.hardware.memtrack@1.0-impl \

PRODUCT_PACKAGES += android.hardware.renderscript@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

#Audio
#PRODUCT_PACKAGES += \
#    audio.primary.mt6737m \
#    audio_policy.default \
#    audio.a2dp.default \
#    audio.usb.default \
#    audio.r_submix.default


PRODUCT_PACKAGES += \
    gps.mt6735m \
    YGPS

# Camera
PRODUCT_PACKAGES += \
    Snap

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni \
    libfmcust \
    libmtkplayer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fmr/mt6627_fm_cust.cfg:system/etc/fmr/mt6627_fm_cust.cfg

# mrdump related
PRODUCT_PACKAGES += \
    libmrdump \
    mrdump_tool

# Torch
PRODUCT_PACKAGES += \
    Torch

# Lights
#PRODUCT_PACKAGES += \
#    lights.mt6737m

# Xlog
PRODUCT_PACKAGES += \
    libxlog

#MTK Symbols
PRODUCT_PACKAGES += \
    libmtk_symbols \
    libmtk_shyms








