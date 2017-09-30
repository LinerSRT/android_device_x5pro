# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/doogee/x5pro/full_x5pro.mk)

#$(call inherit-product, vendor/cm/config/common_full_phone.mk)


PRODUCT_NAME := lineage_x5pro
BOARD_VENDOR := Doogee
PRODUCT_DEVICE := x5pro

PRODUCT_GMS_CLIENTID_BASE := android-Doogee

PRODUCT_MANUFACTURER := Doogee
PRODUCT_MODEL := Doogee X5PRO

PRODUCT_BRAND := Doogee
TARGET_VENDOR := Doogee
TARGET_VENDOR_PRODUCT_NAME := x5pro
TARGET_VENDOR_DEVICE_NAME := x5pro
PRODUCT_RESTRICT_VENDOR_FILES := false
