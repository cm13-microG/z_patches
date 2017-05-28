#!/bin/bash

THISDIR=$PWD

cd ..
TOPDIR=$PWD

cd build
echo "Patching $PWD (user/host metadata)"
patch -p1 < $THISDIR/patch_001_build.patch
cd $TOPDIR

cd kernel/motorola/msm8916
echo "Patching $PWD (MSM8916 STACKPROTECTOR)"
patch -p1 < $THISDIR/patch_002_kernel-motorola-msm8916.patch
cd $TOPDIR

cd vendor/motorola
echo "Patching $PWD (w/o TimeService.apk)"
patch -p1 < $THISDIR/patch_003_vendor-motorola.patch
cd $TOPDIR

cd frameworks/base
echo "Patching $PWD (microG Patch)"
patch -p1 < $THISDIR/patch_004_microG-MM.patch
cd core/res/res/values
rm *orig
cd $TOPDIR

cd $THISDIR
