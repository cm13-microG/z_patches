#!/bin/bash

# Sample script to build the LOS 13 Osprey ROM
# Copy into the root dir of your build tree
# and feel free to adapt to your own needs
# ------------------------------------------


# CCache
# ------
# uncomment the below line to set own cache 
# directory (default is ~/.ccache)
export USE_CCACHE=1
#export CCACHE_DIR=~/android/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 32G

# Adjust TOOLCHAIN path for MSM8916
export KERNEL_TOOLCHAIN=$PWD/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin
export KERNEL_TOOLCHAIN_PREFIX=arm-eabi-

# comment below line, if you want to build 
# without root baked in
export WITH_SU=true

# Normalize build metadata
export KBUILD_BUILD_USER=android
export KBUILD_BUILD_HOST=localhost

# Initiate env and start build
source build/envsetup.sh
brunch osprey

