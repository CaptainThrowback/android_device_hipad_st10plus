#
# Copyright (C) 2016 The Android Open-Source Project
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
#

# Time Zone Data
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Hardware-specific configs
PRODUCT_COPY_FILES += \
    device/hipad/st10plus/rootdir/init.recovery.sc8825.rc:root/init.recovery.sc8825.rc \
    device/hipad/st10plus/rootdir/init.recovery.usb.rc:root/init.recovery.usb.rc

# For update.zip compatibility
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=cp8076d \
    PRODUCT_NAME=cp8076d \
    TARGET_DEVICE=Coolpad8076D

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := st10plus
PRODUCT_NAME := omni_st10plus
PRODUCT_BRAND := HIPAD
PRODUCT_MODEL := ST10+
PRODUCT_MANUFACTURER := HIPAD
