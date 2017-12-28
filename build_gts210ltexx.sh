#!/bin/bash

# Sample script to build the LOS 13 Osprey ROM (microG build)
# Copy into the root dir of your build tree and feel free to 
# adapt to your own needs
# ----------------------------------------------------------

# Initiate environment
source build/envsetup.sh

# CCache
# ------
# uncomment the below line to set own cache 
# directory (default is ~/.ccache)
export USE_CCACHE=1
#export CCACHE_DIR=~/android/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 32G

# un-comment below line, if you want to build with root baked in
# export WITH_SU=true

# microG build
export RELEASE_TYPE=microG

# Normalize build metadata
export KBUILD_BUILD_USER=android
export KBUILD_BUILD_HOST=localhost

# start build
brunch gts210ltexx

