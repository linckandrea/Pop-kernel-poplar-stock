export ARCH=arm64
make O=out clean
make O=out mrproper
export PATH=/home/andrea/uber-64-4.9/bin:$PATH
export CROSS_COMPILE=aarch64-linux-android-
export KBUILD_DIFFCONFIG=poplar_diffconfig
make Pop-kernel_base_defconfig O=./out
make O=out -j4
