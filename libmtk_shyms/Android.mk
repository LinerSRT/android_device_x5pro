LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_cam.cpp \
    mtk_ui.cpp \
    mtk_sys.cpp \
    mtk_audio.cpp \
	icu55.c \
    icu53.c \
	xlog.c \
	ssl.c


LOCAL_SHARED_LIBRARIES := libdpframework ibicuuc libicui18n liblog libui libicuuc libssl libcutils
LOCAL_MODULE := libmtk_shyms
LOCAL_MODULE_TAGS := optional
LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++1y 
LOCAL_CPPFLAGS += -Wno-exit-time-destructors
LOCAL_CPPFLAGS += -Wno-global-constructors
LOCAL_CPPFLAGS += -Wno-c++98-compat-pedantic
LOCAL_CPPFLAGS += -Wno-four-char-constants
LOCAL_CPPFLAGS += -Wno-padded
include $(BUILD_SHARED_LIBRARY)
