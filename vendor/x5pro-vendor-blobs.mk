VENDOR_FILES := device/doogee/x5pro/vendor
    
PRODUCT_COPY_FILES := \
    $(call find-copy-subdir-files,*,$(VENDOR_FILES)/lib,system/lib) \
    $(call find-copy-subdir-files,*,$(VENDOR_FILES)/vendor/bin,system/vendor/bin) \
    $(call find-copy-subdir-files,*,$(VENDOR_FILES)/vendor/etc,system/vendor/etc) \
    $(call find-copy-subdir-files,*,$(VENDOR_FILES)/vendor/firmware,system/vendor/firmware) \
    $(call find-copy-subdir-files,*,$(VENDOR_FILES)/vendor/lib,system/vendor/lib)    
