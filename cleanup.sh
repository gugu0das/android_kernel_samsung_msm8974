#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Cyanogenmod_13.0/ramdisk.cpio.gz
rm -f gugu0das/Cyanogenmod_13.0/boot_hltekor.img
rm -f gugu0das/Cyanogenmod_13.0/boot_hlteeur.img
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot_hltekor.img
rm -f gugu0das/Touchwiz/boot_hlteeur.img
rm -f gugu0das/gugu0das_kernel-CM-13.0-hltekor-Release-3/boot.img
rm -f gugu0das/gugu0das_kernel-TW-M-hltekor-Release-3/boot.img
rm -f gugu0das_kernel-CM-13.0-hltekor-Release-3.zip
rm -f gugu0das_kernel-TW-M-hltekor-Release-3.zip
rm -f gugu0das/gugu0das_kernel-CM-13.0-hlteeur-Release-3/boot.img
rm -f gugu0das/gugu0das_kernel-TW-M-hlteeur-Release-3/boot.img
rm -f gugu0das_kernel-CM-13.0-hlteeur-Release-3.zip
rm -f gugu0das_kernel-TW-M-hlteeur-Release-3.zip
