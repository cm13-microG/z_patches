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

cd external/sqlite
echo "--------------------------------------------------------"
echo "Patching $PWD (SECURE DELETE)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_002_securedelete-sqlite.patch
echo "--------------------------------------------------------"
cd $TOPDIR

cd frameworks/base
echo "--------------------------------------------------------"
echo "Patching $PWD (SECURE DELETE)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_002_securedelete-base.patch
echo "--------------------------------------------------------"
echo "Patching $PWD (microG restricted)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_003_microG-restr-base.patch
echo "--------------------------------------------------------"
echo "Patching $PWD (SET_TIME_ZONE)"
echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
patch -p1 < $THISDIR/patch_004_timezone-base.patch
echo "--------------------------------------------------------"
cd core/res/res/values
rm *orig
cd $TOPDIR

#cd frameworks/native
#echo "--------------------------------------------------------"
#echo "Patching $PWD (/proc hidepid=2)"
#echo ".  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . "
#patch -p1 < $THISDIR/patch_005_hidepid-native.patch
#echo "--------------------------------------------------------"
#cd $TOPDIR

cd $TOPDIR


cd $THISDIR

