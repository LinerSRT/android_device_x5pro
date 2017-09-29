$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/doogee/x5pro/x5pro-vendor.mk)

LOCAL_PATH=device/doogee/x5pro
include $(LOCAL_PATH)/includes/packages.mk

DEVICE_PACKAGE_OVERLAYS += device/doogee/x5pro/overlay
PRODUCT_PACKAGE_OVERLAYS += device/doogee/x5pro/overlay

LOCAL_PATH := device/doogee/x5pro
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	$(LOCAL_PATH)/rootdir/system/etc/audio_policy_volumes_drc.xml:system/etc/audio_policy_volumes_drc.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# Telecomm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# GPS
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Thermal
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/thermal.conf:system/etc/.tp/thermal.conf \
     $(LOCAL_PATH)/configs/thermal.off.conf:system/etc/.tp/thermal.off.conf \
     $(LOCAL_PATH)/configs/.ht120.mtc:system/etc/.tp/.ht120.mtc \

# Ramdisk
PRODUCT_COPY_FILES += \
 $(LOCAL_PATH)/rootdir/root/init.usb.configfs.rc:root/init.usb.configfs.rc \
 $(LOCAL_PATH)/rootdir/root/init.recovery.service.rc:root/init.recovery.service.rc \
 $(LOCAL_PATH)/rootdir/root/init.aee.rc:root/init.aee.rc \
 $(LOCAL_PATH)/rootdir/root/init.volte.rc:root/init.volte.rc \
 $(LOCAL_PATH)/rootdir/root/init.common_svc.rc:root/init.common_svc.rc \
 $(LOCAL_PATH)/rootdir/root/twrp.fstab:root/twrp.fstab \
 $(LOCAL_PATH)/rootdir/root/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
 $(LOCAL_PATH)/rootdir/root/init.usb.rc:root/init.usb.rc \
 $(LOCAL_PATH)/rootdir/root/factory_init.project.rc:root/factory_init.project.rc \
 $(LOCAL_PATH)/rootdir/root/init.srt.rc:root/init.srt.rc \
 $(LOCAL_PATH)/rootdir/root/recovery.fstab:root/recovery.fstab \
 $(LOCAL_PATH)/rootdir/root/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
 $(LOCAL_PATH)/rootdir/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
 $(LOCAL_PATH)/rootdir/root/init.rilproxy.rc:root/init.rilproxy.rc \
 $(LOCAL_PATH)/rootdir/root/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
 $(LOCAL_PATH)/rootdir/root/meta_init.modem.rc:root/meta_init.modem.rc \
 $(LOCAL_PATH)/rootdir/root/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
 $(LOCAL_PATH)/rootdir/root/factory_init.usb.rc:root/factory_init.usb.rc \
 $(LOCAL_PATH)/rootdir/root/multi_init.rc:root/multi_init.rc \
 $(LOCAL_PATH)/rootdir/root/init.project.rc:root/init.project.rc \
 $(LOCAL_PATH)/rootdir/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
 $(LOCAL_PATH)/rootdir/root/init.zygote32.rc:root/init.zygote32.rc \
 $(LOCAL_PATH)/rootdir/root/factory_init.rc:root/factory_init.rc \
 $(LOCAL_PATH)/rootdir/root/meta_init.project.rc:root/meta_init.project.rc \
 $(LOCAL_PATH)/rootdir/root/init.mt6735.rc:root/init.mt6735.rc \
 $(LOCAL_PATH)/rootdir/root/fstab.mt6735:root/fstab.mt6735 \
 $(LOCAL_PATH)/rootdir/root/init.environ.rc:root/init.environ.rc \
 $(LOCAL_PATH)/rootdir/root/init.connectivity.rc:root/init.connectivity.rc \
 $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
 $(LOCAL_PATH)/rootdir/root/init.epdg.rc:root/init.epdg.rc \
 $(LOCAL_PATH)/rootdir/system/etc/init/hw/init.mt6735.rc:system/vendor/etc/init/hw/init.mt6735.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    $(LOCAL_PATH)/rootdir/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    $(LOCAL_PATH)/rootdir/system/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    $(LOCAL_PATH)/rootdir/system/etc/seccomp_policy/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy \
         $(LOCAL_PATH)/rootdir/system/etc/seccomp_policy/mediaextractor.policy:system/etc/seccomp_policy/mediaextractor.policy

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

#Hack for prebuilt kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell touch $(OUT)/obj/KERNEL_OBJ/usr/export_includes)


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_x5pro
PRODUCT_DEVICE := x5pro
PRODUCT_LOCALES := en_US ru_RU

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

