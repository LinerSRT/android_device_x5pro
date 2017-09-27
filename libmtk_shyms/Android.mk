LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_cam.cpp \
    mtk_ui.cpp \
    mtk_sys.cpp \
    mtk_audio.cpp


LOCAL_SHARED_LIBRARIES := libdpframework
LOCAL_MODULE := libmtk_shyms
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
