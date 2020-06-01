# Copyright (C) 2020 Paranoid Android
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

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sdm710 \
    libcutils \
    librecovery_updater_msm \
    libz

# Fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl.pixel \
    fastbootd

# Init
PRODUCT_PACKAGES += \
    init.recovery.sargo.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.sdm670:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.sdm670

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/google/sargo \
    hardware/google/interfaces \
    hardware/google/pixel

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 28

# Update Engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier
