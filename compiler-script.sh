export ARCH=arm64 && export SUBARCH=arm64
export CROSS_COMPILE=/home/andrea/uber-64-4.9/bin/aarch64-linux-android-
mkdir -p out
make O=out clean
make O=out mrproper
make O=out Pop_kernel_poplar_defconfig
make O=out -j4
