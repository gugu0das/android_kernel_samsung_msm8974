#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/arm-cortex-linux-gnueabi-linaro_4.9.4-2015.06/bin/arm-cortex-linux-gnueabi-

mkdir output

make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_jactive_skt_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
