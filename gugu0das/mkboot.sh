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
find ./ ! -name ramdisk.cpio.gz | cpio -H newc -o | gzip -9 > ramdisk.cpio.gz
mv ramdisk.cpio.gz ../ramdisk.cpio.gz
cd $dir

# Touchwiz hltekor Value
echo "Generating Touchwiz hltekor Boot Image"
./mkbootimg --kernel "$dir/Touchwiz/kernel_hltekor" \
--ramdisk "$dir/Touchwiz/ramdisk.cpio.gz" \
--dt "$dir/Touchwiz/dt_hltekor.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Touchwiz/boot_hltekor.img
cd $dir/Touchwiz
echo -n "SEANDROIDENFORCE" >> boot_hltekor.img;

cd $dir

# Touchwiz hlteeur Value
echo "Generating Touchwiz hlteeur Boot Image"
./mkbootimg --kernel "$dir/Touchwiz/kernel_hlteeur" \
--ramdisk "$dir/Touchwiz/ramdisk.cpio.gz" \
--dt "$dir/Touchwiz/dt_hlteeur.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Touchwiz/boot_hlteeur.img
cd $dir/Touchwiz
echo -n "SEANDROIDENFORCE" >> boot_hlteeur.img;


#
# Cyanogenmod_13.0/LineageOS_13.0 Kernel
#

# Create ramdisk.cpio.gz
cd $dir/Cyanogenmod_13.0/ramdisk
find ./ ! -name ramdisk.cpio.gz | cpio -H newc -o | gzip -9 > ramdisk.cpio.gz
mv ramdisk.cpio.gz ../ramdisk.cpio.gz
cd $dir

# Cyanogenmod_13.0/LineageOS_13.0 hltekor Value
echo "Generating Cyanogenmod_13.0 hltekor Boot Image"
./mkbootimg --kernel "$dir/Cyanogenmod_13.0/kernel_hltekor" \
--ramdisk "$dir/Cyanogenmod_13.0/ramdisk.cpio.gz" \
--dt "$dir/Cyanogenmod_13.0/dt_hltekor.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Cyanogenmod_13.0/boot_hltekor.img
cd $dir/Cyanogenmod_13.0
echo -n "SEANDROIDENFORCE" >> boot_hltekor.img;

cd $dir

# Cyanogenmod_13.0/LineageOS_13.0 hlteeur Value
echo "Generating Cyanogenmod_13.0 hlteeur Boot Image"
./mkbootimg --kernel "$dir/Cyanogenmod_13.0/kernel_hlteeur" \
--ramdisk "$dir/Cyanogenmod_13.0/ramdisk.cpio.gz" \
--dt "$dir/Cyanogenmod_13.0/dt_hlteeur.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Cyanogenmod_13.0/boot_hlteeur.img
cd $dir/Cyanogenmod_13.0
echo -n "SEANDROIDENFORCE" >> boot_hlteeur.img;

# Move Kernel
echo "Generating gugu0das Kernel Flashing File"
cd $dir
mv Cyanogenmod_13.0/boot_hltekor.img gugu0das_kernel-CM-13.0-hltekor-Release-3/boot.img
mv Touchwiz/boot_hltekor.img gugu0das_kernel-TW-M-hltekor-Release-3/boot.img

mv Cyanogenmod_13.0/boot_hlteeur.img gugu0das_kernel-CM-13.0-hlteeur-Release-3/boot.img
mv Touchwiz/boot_hlteeur.img gugu0das_kernel-TW-M-hlteeur-Release-3/boot.img

# Compression
cd $dir/gugu0das_kernel-CM-13.0-hltekor-Release-3
zip -r gugu0das_kernel-CM-13.0-hltekor-Release-3.zip ./*
cd $dir/gugu0das_kernel-TW-M-hltekor-Release-3
zip -r gugu0das_kernel-TW-M-hltekor-Release-3.zip ./*

cd $dir/gugu0das_kernel-CM-13.0-hlteeur-Release-3
zip -r gugu0das_kernel-CM-13.0-hlteeur-Release-3.zip ./*
cd $dir/gugu0das_kernel-TW-M-hlteeur-Release-3
zip -r gugu0das_kernel-TW-M-hlteeur-Release-3.zip ./*

# Move Kernel Flashing File
cd $dir/gugu0das_kernel-CM-13.0-hltekor-Release-3
mv gugu0das_kernel-CM-13.0-hltekor-Release-3.zip $kernel_dir/gugu0das_kernel-CM-13.0-hltekor-Release-3.zip
cd $dir/gugu0das_kernel-TW-M-hltekor-Release-3
mv gugu0das_kernel-TW-M-hltekor-Release-3.zip $kernel_dir/gugu0das_kernel-TW-M-hltekor-Release-3.zip

cd $dir/gugu0das_kernel-CM-13.0-hlteeur-Release-3
mv gugu0das_kernel-CM-13.0-hlteeur-Release-3.zip $kernel_dir/gugu0das_kernel-CM-13.0-hlteeur-Release-3.zip
cd $dir/gugu0das_kernel-TW-M-hlteeur-Release-3
mv gugu0das_kernel-TW-M-hlteeur-Release-3.zip $kernel_dir/gugu0das_kernel-TW-M-hlteeur-Release-3.zip
