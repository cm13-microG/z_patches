#!/bin/bash

THISDIR=$PWD

cd ..
TOPDIR=$PWD

cd build
echo "--------------------------------------------------------"
echo "Patching $PWD (user/host metadata)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_001_metadata-build.patch
echo "--------------------------------------------------------"
cd $TOPDIR

cd external/svox
echo "--------------------------------------------------------"
echo "Patching $PWD (SVOX CVE-2017-13285)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_002_svox-buffers.patch
echo "--------------------------------------------------------"
cd $TOPDIR



cd $THISDIR

