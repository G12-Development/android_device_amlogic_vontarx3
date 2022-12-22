#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


DEVICE_PATH := device/amlogic/vontarx3

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := vontarx3

## Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/vnd_amlogic_lpm.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


## DTB
TARGET_DTB_NAME := sm1_vontarx3
#TARGET_DTBO_NAME := sm1_s905y3_bananapim5_wifi_overlay

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissiv

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

TARGET_DHD_VERSION := bcmdhd.100.10.545.x

TARGET_AMLOGIC_SOC := sm1

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/vendor/etc/wifi/buildin/fw_bcm4339a0_ag.bin"
WIFI_DRIVER_FW_PATH_STA := "/vendor/etc/wifi/buildin/fw_bcm4339a0_ag.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

include device/amlogic/g12-common/BoardConfigCommon.mk
