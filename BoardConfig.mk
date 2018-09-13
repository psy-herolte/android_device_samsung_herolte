#
# Copyright (C) 2017 Fernando Von Arx <fer.vonarx@gmail.com>
# Copyright (C) 2017 Jesse Chan <cjx123@outlook.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

ALLOW_MISSING_DEPENDENCIES := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/universal8890
TARGET_KERNEL_CONFIG := exynos8890-herolte_defconfig
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
#KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-linaro/bin
#KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-gnu-
#TARGET_KERNEL_APPEND_DTB := true

# Rom Toolchain
TARGET_GCC_VERSION_EXP := 4.9

# Recovery
TARGET_OTA_ASSERT_DEVICE := heroltebmc,herolteskt,heroltektt,heroltelgt,heroltexx,herolte

# Inherit common board flags
include device/samsung/hero-common/BoardConfigCommon.mk
