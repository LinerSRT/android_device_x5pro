LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	main_bwc.cpp 

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libbinder \
    liblog \
    libbwc \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/inc \
 /inc
  
LOCAL_MODULE:= bwc

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
