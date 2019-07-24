#
# Copyright (C) 2012 The CyanogenMod Project
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
#

include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,i9305,GT-I9305

# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LIBART_IMG_BASE := 0x30000000

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i9305/bluetooth

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE :=104857600
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := lineageos_i9305_defconfig

TARGET_SPECIFIC_HEADER_PATH += device/samsung/i9305/include

# Legacy BLOB Support
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/lib/libsec-ril.so=19

# PowerHAL
TARGET_POWERHAL_VARIANT := pegasusq

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9305/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# RIL
TARGET_DISABLE_ASHMEM_TRACKING := true
BOARD_RIL_CLASS := ../../../device/samsung/i9305/ril
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35

# Wifi
WIFI_DRIVER_MODULE_PATH :=
