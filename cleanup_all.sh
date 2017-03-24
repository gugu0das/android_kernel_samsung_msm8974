#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -r -f armeb-linux-gnueabihf-linaro_6.2.1-2016.11/
rm -r -f arm-eabi-ubertc_7.0-2016.04/
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot_ks01ltekor.img
rm -f gugu0das/Touchwiz/boot_ks01lteeur.img
rm -f gugu0das/MIUI8/ramdisk.cpio.gz
rm -f gugu0das/MIUI8/boot_ks01ltekor.img
rm -f gugu0das/MIUI8/boot_ks01lteeur.img
rm -f gugu0das/Touchwiz/kernel_ks01ltekor
rm -f gugu0das/Touchwiz/kernel_ks01lteeur
rm -f gugu0das/MIUI8/kernel_ks01ltekor
rm -f gugu0das/MIUI8/kernel_ks01lteeur
rm -f gugu0das/gugu0das_kernel-NX_TW-M-ks01ltekor-Release-2-BetaProgram_2017.03.24/boot.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-ks01lteeur-Release-2-BetaProgram_2017.03.24/boot.img
rm -f gugu0das/gugu0das_kernel-NX_MIUI8-M-ks01ltekor-Release-2-BetaProgram_2017.03.24/boot.img
rm -f gugu0das/gugu0das_kernel-NX_MIUI8-M-ks01lteeur-Release-2-BetaProgram_2017.03.24/boot.img
rm -f gugu0das_kernel-NX_TW-M-ks01ltekor-Release-2-BetaProgram_2017.03.24.zip
rm -f gugu0das_kernel-NX_TW-M-ks01lteeur-Release-2-BetaProgram_2017.03.24.zip
rm -f gugu0das_kernel-NX_MIUI8-M-ks01ltekor-Release-2-BetaProgram_2017.03.24.zip
rm -f gugu0das_kernel-NX_MIUI8-M-ks01lteeur-Release-2-BetaProgram_2017.03.24.zip
