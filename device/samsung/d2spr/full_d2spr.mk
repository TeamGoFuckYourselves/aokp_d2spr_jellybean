# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
 
# Torch
PRODUCT_PACKAGES := \
    Torch

# Extra Apps and files
PRODUCT_COPY_FILES += \
    vendor/samsung/d2spr/Alert-SonarMerge.mp3:system/media/audio/notifications/Alert-SonarMerge.mp3 \
    vendor/samsung/d2spr/IphoneCellSoundMerge.mp3:system/media/audio/ringtones/IphoneCellSoundMerge.mp3

# Copy Animation Files
PRODUCT_COPY_FILES += \
    vendor/samsung/d2spr/keyboard-anim/Bouncey.zip:system/addon.d/keyboard-anim/Bouncey.zip \
    vendor/samsung/d2spr/keyboard-anim/Chaos.zip:system/addon.d/keyboard-anim/Chaos.zip \
    vendor/samsung/d2spr/keyboard-anim/ChaosRevenge.zip:system/addon.d/keyboard-anim/ChaosRevenge.zip \
    vendor/samsung/d2spr/keyboard-anim/Eternity.zip:system/addon.d/keyboard-anim/Eternity.zip \
    vendor/samsung/d2spr/keyboard-anim/Flip.zip:system/addon.d/keyboard-anim/Flip.zip \
    vendor/samsung/d2spr/keyboard-anim/Photon.zip:system/addon.d/keyboard-anim/Photon.zip \
    vendor/samsung/d2spr/keyboard-anim/Spinner.zip:system/addon.d/keyboard-anim/Spinner.zip \
    vendor/samsung/d2spr/keyboard-anim/Stock.zip:system/addon.d/keyboard-anim/Stock.zip \
    vendor/samsung/d2spr/keyboard-anim/TeamDerpTheme.zip:system/addon.d/keyboard-anim/TeamDerpTheme.zip \
    vendor/samsung/d2spr/keyboard-anim/ThePsynFlip.zip:system/addon.d/keyboard-anim/ThePsynFlip.zip \
    vendor/samsung/d2spr/keyboard-anim/ThePsynShift.zip:system/addon.d/keyboard-anim/ThePsynShift.zip \
    vendor/samsung/d2spr/keyboard-anim/TwistedRubik.zip:system/addon.d/keyboard-anim/TwistedRubik.zip \
    vendor/samsung/d2spr/keyboard-anim/Vortex.zip:system/addon.d/keyboard-anim/Vortex.zip \
    vendor/samsung/d2spr/window-anim/Bouncey.zip:system/addon.d/window-anim/Bouncey.zip \
    vendor/samsung/d2spr/window-anim/Chaos.zip:system/addon.d/window-anim/Chaos.zip \
    vendor/samsung/d2spr/window-anim/ChaosRevenge.zip:system/addon.d/window-anim/ChaosRevenge.zip \
    vendor/samsung/d2spr/window-anim/Eternity.zip:system/addon.d/window-anim/Eternity.zip \
    vendor/samsung/d2spr/window-anim/Flip.zip:system/addon.d/window-anim/Flip.zip \
    vendor/samsung/d2spr/window-anim/Photon.zip:system/addon.d/window-anim/Photon.zip \
    vendor/samsung/d2spr/window-anim/Stock.zip:system/addon.d/window-anim/Stock.zip \
    vendor/samsung/d2spr/window-anim/TeamDerpTheme.zip:system/addon.d/window-anim/TeamDerpTheme.zip \
    vendor/samsung/d2spr/window-anim/ThePsynFlip.zip:system/addon.d/window-anim/ThePsynFlip.zip \
    vendor/samsung/d2spr/window-anim/ThePsynShift.zip:system/addon.d/window-anim/ThePsynShift.zip \
    vendor/samsung/d2spr/window-anim/TwistedRubik.zip:system/addon.d/window-anim/TwistedRubik.zip \
    vendor/samsung/d2spr/window-anim/Vortex.zip:system/addon.d/window-anim/Vortex.zip \
    vendor/samsung/d2spr/com.aokp.animation.manager.apk:system/app/com.aokp.animation.manager.apk \
    vendor/samsung/d2spr/framework-flash.zip:system/addon.d/framework-flash.zip

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from d2spr device
$(call inherit-product, device/samsung/d2spr/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SPH-L710
