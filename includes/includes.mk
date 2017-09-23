-include vendor/doogee/x5pro/BoardConfigVendor.mk
#Assert
TARGET_OTA_ASSERT_DEVICE := hct6735m_35gu_m0,hct6735m_35gu_n1,x5pro

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

#Disable memcpy opt
TARGET_CPU_MEMCPY_OPT_DISABLE := true

#Sepolicy
BOARD_SEPOLICY_DIRS := \
       device/doogee/x5pro/sepolicy
BOARD_SEPOLICY_VERS := 30

#Other
BLOCK_BASED_OTA := false
TARGET_LDPRELOAD += libxlog.so:libmtk_symbols.so
