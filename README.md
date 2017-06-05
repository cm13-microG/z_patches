# z_patches

## Before starting the build, apply the necessary patches 
cd into directory **z_patches** and run `./patches_apply.sh`

## Sample build scripts
copy the *'build_*'* scripts into the root directory of your
build tree and adapt them according to your needs.

## Synchronize the build tree
to synchronize the repository (`repo sync`), it is advisable to revoke the patches
first and re-apply them afterwards. To do so, run the following commands:

```Shell session
cd z_patches
./patches_reverse.sh
cd ..
repo sync
cd z_patches
./patches_apply.sh
```
