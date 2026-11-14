LOCAL_PATH := $(call my-dir)

ifneq ($(filter m12 m12dd,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
