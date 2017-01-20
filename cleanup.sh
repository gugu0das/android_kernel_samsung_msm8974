#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-ks01lteskt-Release-1/boot.img
rm -f gugu0das_kernel-NX_TW-M-ks01lteskt-Release-1.zip
