#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/armeb-linux-gnueabihf-linaro_7.1.1-2017.05/bin/armeb-linux-gnueabihf-
# export CROSS_COMPILE=$(pwd)/arm-eabi-ubertc_7.0-2016.04/bin/arm-eabi-

mkdir output
make -C $(pwd) O=output cm_msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_hlte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output
