TARGET_BOARD_PLATFORM := mt6735m

DEVICE_PATH := device/doogee/x5pro

include device/doogee/x5pro/mt6735-common/BoardConfigCommon.mk

MTK_APPENDED_DTB_SUPPORT := yes

# Partitions
# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3975675904 
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# ota block
BLOCK_BASED_OTA := false

# Kernel
TARGET_KMODULES := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# OTA assert
TARGET_OTA_ASSERT_DEVICE := hct6735m_35gu_m0,hct6735m_35gu_n1,x5pro,X5pro,hct6735m_35gu_l1

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

# Include needed symbols
TARGET_INCLUDE_XLOG_SYMBOLS := true
TARGET_INCLUDE_RIL_SYMBOLS := true
include $(DEVICE_PATH)/symbols.mk

# Deodex ? = false
ODEX := false

#TARGET_LDPRELOAD += libxlog.so:libmtk_symbols.so

ifeq ($(ODEX),true)
    WITH_DEXPREOPT := true
    DISABLE_DEXPREOPT := false
endif

