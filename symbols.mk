# Include symbols
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := /system/lib/liblog.so|libmtkshim_log.so
endif
# Include symbols ril
ifeq ($(TARGET_INCLUDE_RIL_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := /system/vendor/lib/mtk-ril.so|librilmtk.so:/system/vendor/lib/mtk-ril.so|librilmtkmd2.so
endif

