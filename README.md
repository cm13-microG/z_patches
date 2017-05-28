# z_patches
## Patches to be applied and sample build scripts
cd into directory z_patches and run ./patches_apply.sh

to synchronize the repository, run the following commands:
cd z_patches
./patches_reverse.sh
cd ..
repo sync
cd z_patches
./patches_apply.sh

## Sample build scripts
copy the build_* scripts into the root directory of your
build tree and adapt them according to your needs.

