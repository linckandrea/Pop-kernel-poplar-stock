export ARCH=arm64
make O=out clean
make O=out mrproper
export PATH=/home/andrea/aarch64-opt-linux-android/bin:$PATH
export CROSS_COMPILE=aarch64-opt-linux-android-
export KBUILD_DIFFCONFIG=poplar_dsds_diffconfig
make Pop-kernel_base_defconfig O=./out
make O=out -j4
