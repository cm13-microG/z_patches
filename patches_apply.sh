#!/bin/bash

THISDIR=$PWD

cd ..
TOPDIR=$PWD

cd build
echo "Patching $PWD (user/host metadata)"
patch -p1 < $THISDIR/patch_001_build.patch
cd $TOPDIR

cd frameworks/base
echo "Patching $PWD (microG Patch)"
patch -p1 < $THISDIR/patch_004_microG-MM.patch
cd core/res/res/values
rm *orig
cd $TOPDIR

cd packages/apps/Settings
echo "Patching $PWD (Patch level disclaimer)"
patch -p1 < $THISDIR/patch_003_Settings.patch
cd $TOPDIR

cd $THISDIR
