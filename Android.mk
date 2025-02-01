#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(filter vontarx3 vontarx3, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(LOCAL_PATH)/factory.mk

-include vendor/amlogic/vontarx3/firmware.mk

endif
