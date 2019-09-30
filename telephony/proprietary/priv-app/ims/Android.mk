LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Module name should match apk name to be installed (without the .apk extension)
LOCAL_MODULE := ims
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := ims
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PRODUCT_MODULE := true

# The priv-app folder

TARGET_OUT_DATA_APPS_PRIVILEGED := $(TARGET_OUT_DATA)/priv-app

include $(BUILD_PREBUILT)
