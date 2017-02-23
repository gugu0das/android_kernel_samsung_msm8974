#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot_ks01lteskt.img
rm -f gugu0das/Touchwiz/boot_ks01lteeur.img
rm -f gugu0das/MIUI8/ramdisk.cpio.gz
rm -f gugu0das/MIUI8/boot_ks01lteskt.img
rm -f gugu0das/MIUI8/boot_ks01lteeur.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-ks01lteskt-Release-1/boot.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-ks01lteeur-Release-1/boot.img
rm -f gugu0das/gugu0das_kernel-NX_MIUI8-M-ks01lteskt-Release-1/boot.img
rm -f gugu0das/gugu0das_kernel-NX_MIUI8-M-ks01lteeur-Release-1/boot.img
rm -f gugu0das_kernel-NX_TW-M-ks01lteskt-Release-1.zip
rm -f gugu0das_kernel-NX_TW-M-ks01lteeur-Release-1.zip
rm -f gugu0das_kernel-NX_MIUI8-M-ks01lteskt-Release-1.zip
rm -f gugu0das_kernel-NX_MIUI8-M-ks01lteeur-Release-1.zip
