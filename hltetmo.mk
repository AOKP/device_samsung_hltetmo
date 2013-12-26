# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product-if-exists, vendor/samsung/hltetmo/hltetmo-vendor.mk)

TARGET_NFC_TECH := nxp

# Media config
PRODUCT_COPY_FILES += \
    device/samsung/hltetmo/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/hltetmo/configs/media_profiles.xml:system/etc/media_profiles.xml \

# Device Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/hltetmo/overlay
# common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/hltexx/overlay-gsm

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Inherit from hltexx-common
$(call inherit-product, device/samsung/hltexx/hltexx-common.mk)
