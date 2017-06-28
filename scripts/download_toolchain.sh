#!/bin/bash

# Clean
rm -r -f armeb-linux-gnueabihf-linaro_7.1.1-2017.05
rm -r -f gcc-linaro-7.1.1-2017.05-x86_64_armeb-linux-gnueabihf
rm -f gcc-linaro-7.1.1-2017.05-x86_64_armeb-linux-gnueabihf.tar.xz

rm -r -f arm-eabi-ubertc_7.0-2016.04
rm -r -f UBERTC-arm-eabi-7.0-4aa57320e55b
rm -f UBERTC-arm-eabi-7.0-4aa57320e55b.zip

# Download Linaro 7.1.1 / UBERTC 7.0
wget https://releases.linaro.org/components/toolchain/binaries/7.1-2017.05/armeb-linux-gnueabihf/gcc-linaro-7.1.1-2017.05-x86_64_armeb-linux-gnueabihf.tar.xz
wget https://bitbucket.org/UBERTC/arm-eabi-7.0/get/4aa57320e55b.zip

# Extract ToolChain
tar -xvf gcc-linaro-7.1.1-2017.05-x86_64_armeb-linux-gnueabihf.tar.xz
rm gcc-linaro-7.1.1-2017.05-x86_64_armeb-linux-gnueabihf.tar.xz
unzip 4aa57320e55b.zip
rm 4aa57320e55b.zip

# Set Name
mv gcc-linaro-7.1.1-2017.05-x86_64_armeb-linux-gnueabihf armeb-linux-gnueabihf-linaro_7.1.1-2017.05
mv UBERTC-arm-eabi-7.0-4aa57320e55b arm-eabi-ubertc_7.0-2016.04
