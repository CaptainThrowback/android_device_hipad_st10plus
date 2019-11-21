# Modified theme files to swap rebooting recovery and rebooting system
# Needed since these are swapped in fstab and we're flashing TWRP to boot
# and flashing stock boot to recovery to ensure device is always accessible

LOCAL_PATH := $(call my-dir)

# Modified portrait.xml
include $(CLEAR_VARS)

LOCAL_MODULE := portrait.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional eng
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/twres
LOCAL_REQUIRED_MODULES := teamwin
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

# Modified en.xml
include $(CLEAR_VARS)

LOCAL_MODULE := en.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional eng
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/twres/languages
LOCAL_REQUIRED_MODULES := teamwin
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)
