#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(MTKPATH),)
-include $(MTKPATH)/BoardConfigVendor.mk
endif

TARGET_CYANOGEN_COMMON := mt6735

COMMON_PATH := device/doogee/x5pro/mt6735-common
TARGET_SPECIFIC_HEADER_PATH += $(COMMON_PATH)/include

TARGET_BOARD_PLATFORM ?= mt6735

# Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6735

# Legacy blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true


# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_BOARD_PLATFORM := mt6735m
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_BOOTLOADER_BOARD_NAME := mt6735m

BOARD_HAS_NO_SELECT_BUTTON := true

# Common properties
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop

# FSTAB
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/fstab.mt6735

TARGET_PREBUILT_KERNEL := $(COMMON_PATH)/prebuilt/kernel
# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

#Kernel
BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32N2,32N2 \
	androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/doogee/x5pro/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board 1473313359
BOARD_CUSTOM_BOOTIMG := true
TARGET_KMODULES := true

# # MTK audio
# BOARD_USES_MTK_AUDIO := true
# USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
MTK_BT_SUPPORT := yes
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
MTK_GPU_VERSION := mali utgard r6p2-01rel0

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_MEDIATEK_USES_GPS := true

# CM hardware
BOARD_HARDWARE_CLASS := $(COMMON_PATH)/cmhw

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# RIL
BOARD_RIL_CLASS := ../../../$(COMMON_PATH)/ril
BOARD_CONNECTIVITY_MODULE := conn_soc

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# FMRadio
MTK_FM_SUPPORT := true

ifeq ($(BOARD_USES_MTK_HARDWARE),true)
    mtk_flags := -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_HW_ID_MATCH_CHECK -DNO_SECURE_DISCARD

    TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)
    CLANG_TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    CLANG_TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)

    2ND_TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    2ND_TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)
    2ND_CLANG_TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    2ND_CLANG_TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)
endif

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# EGL
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# SELinux
BOARD_SEPOLICY_DIRS := \
       $(COMMON_PATH)/sepolicy

# Seccomp Filter
BOARD_SECCOMP_POLICY += \
       $(COMMON_PATH)/seccomp
