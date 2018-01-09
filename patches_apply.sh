#!/bin/bash

THISDIR=$PWD

cd ..
TOPDIR=$PWD

cd build
echo "--------------------------------------------------------"
echo "Patching $PWD (user/host metadata)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_001_build.patch
echo "--------------------------------------------------------"
cd $TOPDIR

cd external/sqlite
echo "--------------------------------------------------------"
echo "Patching $PWD (SECURE DELETE)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_002_sqlite-secdel.patch
echo "--------------------------------------------------------"
cd $TOPDIR

cd frameworks/base
echo "--------------------------------------------------------"
echo "Patching $PWD (SECURE DELETE)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_003_base-secdel.patch
echo "--------------------------------------------------------"
echo "Patching $PWD (microG Patch)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_004_microG-MM-restricted.patch
echo "--------------------------------------------------------"
cd core/res/res/values
rm *orig
cd $TOPDIR

cd $THISDIR

