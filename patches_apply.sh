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


cd $THISDIR

