LOCAL_PATH := $(call my-dir)

# mtk log symbols (xlog)
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
    include $(CLEAR_VARS)

    LOCAL_SRC_FILES := xlog.c
    LOCAL_SHARED_LIBRARIES := liblog
    LOCAL_MODULE := libmtkshim_log
    LOCAL_MODULE_TAGS := optional

    include $(BUILD_SHARED_LIBRARY)
endif


