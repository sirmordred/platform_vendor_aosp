# Copyright (C) 2016 The JDCTeam
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

# include definitions for SDCLANG
# include vendor/aosp/sdclang/sdclang.mk

ifndef JDC_BUILD_TYPE
    JDC_BUILD_TYPE := ALPHA
endif

JDC_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d)-$(JDC_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.jdc.version=$(JDC_VERSION)

PRODUCT_BRAND ?= JDCTeam

# Use signing keys for user builds
ifeq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/aosp/.keys/release
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aosp/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/aosp/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

DEVICE_PACKAGE_OVERLAYS += \
    vendor/aosp/overlay/common \
    vendor/aosp/overlay/dictionaries

# Custom JDCTeam packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    Launcher3

# Default permissions
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/privapp-permissions-jdc.xml:system/etc/permissions/privapp-permissions-jdc.xml

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    7z \
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    zip

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# For keyboard gesture typing
ifneq ($(filter jdc_jflte jdc_onyx,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinime.so
endif

# init.d support
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
    
# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# Changelog
PRODUCT_COPY_FILES += \
    vendor/aosp/Changelog.md:system/etc/Changelog.md

# Needed by some RILs and for some gApps packages
PRODUCT_PACKAGES += \
    librsjni \
    libprotobuf-cpp-full

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false
