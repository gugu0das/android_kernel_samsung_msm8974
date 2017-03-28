#!/bin/bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
kernel_dir=$(pwd)
dir=$(pwd)/gugu0das

#
# Touchwiz Kernel
#

# Create ramdisk.cpio.gz
cd $dir/Touchwiz/ramdisk
find | cpio -o -H newc | gzip -9 > ramdisk.cpio.gz
mv ramdisk.cpio.gz ../ramdisk.cpio.gz
cd $dir

# Touchwiz ks01ltekor Value
echo "Generating Touchwiz Boot Image"
./mkbootimg --kernel "$dir/Touchwiz/kernel_ks01ltekor" \
--ramdisk "$dir/Touchwiz/ramdisk.cpio.gz" \
--dt "$dir/Touchwiz/dt.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Touchwiz/boot_ks01ltekor.img
cd $dir/Touchwiz
echo -n "SEANDROIDENFORCE" >> boot_ks01ltekor.img;

cd $dir

# Touchwiz ks01lteeur Value
echo "Generating Touchwiz Boot Image"
./mkbootimg --kernel "$dir/Touchwiz/kernel_ks01lteeur" \
--ramdisk "$dir/Touchwiz/ramdisk.cpio.gz" \
--dt "$dir/Touchwiz/dt.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Touchwiz/boot_ks01lteeur.img
cd $dir/Touchwiz
echo -n "SEANDROIDENFORCE" >> boot_ks01lteeur.img;

#
# MIUI8 Kernel
#

# Create ramdisk.cpio.gz
cd $dir/MIUI8/ramdisk
find | cpio -o -H newc | gzip -9 > ramdisk.cpio.gz
mv ramdisk.cpio.gz ../ramdisk.cpio.gz
cd $dir

# MIUI8 ks01ltekor Value
echo "Generating MIUI8 Boot Image"
./mkbootimg --kernel "$dir/MIUI8/kernel_ks01ltekor" \
--ramdisk "$dir/MIUI8/ramdisk.cpio.gz" \
--dt "$dir/MIUI8/dt.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/MIUI8/boot_ks01ltekor.img
cd $dir/MIUI8
echo -n "SEANDROIDENFORCE" >> boot_ks01ltekor.img;

cd $dir

# MIUI8 ks01lteeur Value
echo "Generating MIUI8 Boot Image"
./mkbootimg --kernel "$dir/MIUI8/kernel_ks01lteeur" \
--ramdisk "$dir/MIUI8/ramdisk.cpio.gz" \
--dt "$dir/MIUI8/dt.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/MIUI8/boot_ks01lteeur.img
cd $dir/MIUI8
echo -n "SEANDROIDENFORCE" >> boot_ks01lteeur.img;

# Move Kernel
echo "Generating gugu0das Kernel Flashing File"
cd $dir
mv Touchwiz/boot_ks01ltekor.img gugu0das_kernel-TW-M-ks01ltekor-Release-2/boot.img
mv Touchwiz/boot_ks01lteeur.img gugu0das_kernel-TW-M-ks01lteeur-Release-2/boot.img
mv MIUI8/boot_ks01ltekor.img gugu0das_kernel-MIUI8-M-ks01ltekor-Release-2/boot.img
mv MIUI8/boot_ks01lteeur.img gugu0das_kernel-MIUI8-M-ks01lteeur-Release-2/boot.img

# Compression
cd $dir/gugu0das_kernel-TW-M-ks01ltekor-Release-2
zip -r gugu0das_kernel-TW-M-ks01ltekor-Release-2.zip ./*
cd $dir/gugu0das_kernel-TW-M-ks01lteeur-Release-2
zip -r gugu0das_kernel-TW-M-ks01lteeur-Release-2.zip ./*

cd $dir/gugu0das_kernel-MIUI8-M-ks01ltekor-Release-2
zip -r gugu0das_kernel-MIUI8-M-ks01ltekor-Release-2.zip ./*
cd $dir/gugu0das_kernel-MIUI8-M-ks01lteeur-Release-2
zip -r gugu0das_kernel-MIUI8-M-ks01lteeur-Release-2.zip ./*

# Move Kernel Flashing File
cd $dir/gugu0das_kernel-TW-M-ks01ltekor-Release-2
mv gugu0das_kernel-TW-M-ks01ltekor-Release-2.zip $kernel_dir/gugu0das_kernel-TW-M-ks01ltekor-Release-2.zip
cd $dir/gugu0das_kernel-TW-M-ks01lteeur-Release-2
mv gugu0das_kernel-TW-M-ks01lteeur-Release-2.zip $kernel_dir/gugu0das_kernel-TW-M-ks01lteeur-Release-2.zip

cd $dir/gugu0das_kernel-MIUI8-M-ks01ltekor-Release-2
mv gugu0das_kernel-MIUI8-M-ks01ltekor-Release-2.zip $kernel_dir/gugu0das_kernel-MIUI8-M-ks01ltekor-Release-2.zip
cd $dir/gugu0das_kernel-MIUI8-M-ks01lteeur-Release-2
mv gugu0das_kernel-MIUI8-M-ks01lteeur-Release-2.zip $kernel_dir/gugu0das_kernel-MIUI8-M-ks01lteeur-Release-2.zip
