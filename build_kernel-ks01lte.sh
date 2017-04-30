#!/bin/bash

export ARCH=arm
#export CROSS_COMPILE=$(pwd)/arm-eabi-ubertc_7.0-2016.04/bin/arm-eabi- 
export CROSS_COMPILE=$(pwd)/armeb-linux-gnueabihf-linaro_6.3.1-2017.02/bin/armeb-linux-gnueabihf-

mkdir output

# Touchwiz / MIUI8 ks01ltekor Kernel
make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_ks01_skt_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/zImage $(pwd)/gugu0das/Touchwiz/kernel_ks01ltekor
cp output/arch/arm/boot/zImage $(pwd)/gugu0das/MIUI8/kernel_ks01ltekor

# Clean
./cleanup.sh

# Create Output Directory
mkdir output

# Touchwiz / MIUI8 ks01lteeur Kernel
make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_ks01eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/zImage $(pwd)/gugu0das/Touchwiz/kernel_ks01lteeur
cp output/arch/arm/boot/zImage $(pwd)/gugu0das/MIUI8/kernel_ks01lteeur

# Make Boot.img
./gugu0das/mkboot.sh
