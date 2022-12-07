LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
ifeq ($(TW_INCLUDE_CRYPTO), true)
LOCAL_SRC_FILES:= \
	cryptsettings.c
LOCAL_CFLAGS:= -g -c -W
LOCAL_MODULE:=cryptsettings
LOCAL_MODULE_TAGS:= eng
LOCAL_SHARED_LIBRARIES += libc libcutils
LOCAL_STATIC_LIBRARIES += libfs_mgrtwrp
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
include $(BUILD_EXECUTABLE)
endif