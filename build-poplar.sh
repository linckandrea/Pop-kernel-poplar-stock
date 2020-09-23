echo
echo "Setup"
echo 

mkdir -p out
export ARCH=arm64
make O=out clean
make O=out mrproper

echo
echo "Issue Build Commands"
echo

export PATH=/home/andrea/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9/bin:$PATH
export CROSS_COMPILE=aarch64-linux-android-
export KBUILD_DIFFCONFIG=poplar_diffconfig

echo
echo "Set DEFCONFIG"
echo 
make pop-kernel-stock_defconfig O=out

echo
echo "Build The Good Stuff"
echo 

make O=out -j$(nproc --all)
