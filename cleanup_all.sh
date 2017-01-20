#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -r -f armeb-linux-gnueabihf-linaro_6.2.1-2016.11/
rm -r -f arm-eabi-ubertc_7.0-2016.04/
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot.img
rm -f gugu0das/Touchwiz/kernel
rm -f gugu0das/gugu0das_kernel-NX_TW-M-ks01lteskt-Release-1/boot.img
rm -f gugu0das_kernel-NX_TW-M-ks01lteskt-Release-1.zip
