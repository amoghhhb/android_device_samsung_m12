LOCAL_PATH := $(call my-dir)

ifneq ($(filter m12 m12dd,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

# Copy the prebuilt DTB image into the build output
ifeq ($(BOARD_INCLUDE_DTB_IN_BOOTIMG),true)
$(PRODUCT_OUT)/dtb.img: $(DEVICE_PATH)/prebuilt/dtb.img
	@mkdir -p $(PRODUCT_OUT)
	$(ACP) $< $@
endif
