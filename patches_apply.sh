#!/bin/bash

THISDIR=$PWD

cd ..
TOPDIR=$PWD

cd build
echo "Patching $PWD (user/host metadata)"
patch -p1 < $THISDIR/patch_001_build.patch
cd $TOPDIR

cd external/svox
echo "Patching $PWD (SVOX CVE-2017-13285)"
patch -p1 < $THISDIR/patch_002_svox-buffers.patch
cd $TOPDIR

cd frameworks/base
echo "Patching $PWD (microG Patch)"
patch -p1 < $THISDIR/patch_004_microG-MM.patch
cd core/res/res/values
rm *orig
cd $TOPDIR

cd $THISDIR
