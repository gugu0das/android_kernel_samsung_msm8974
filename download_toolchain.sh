#!/bin/bash

# Clean
rm -r -f armeb-linux-gnueabihf-linaro_6.2.1-2016.11
rm -r -f gcc-linaro-6.2.1-2016.11-x86_64_armeb-linux-gnueabihf
rm -f gcc-linaro-6.2.1-2016.11-x86_64_armeb-linux-gnueabihf.tar.xz

# Download Linaro 6.2.1
wget https://releases.linaro.org/components/toolchain/binaries/6.2-2016.11/armeb-linux-gnueabihf/gcc-linaro-6.2.1-2016.11-x86_64_armeb-linux-gnueabihf.tar.xz

# Extract ToolChain
tar -xvf gcc-linaro-6.2.1-2016.11-x86_64_armeb-linux-gnueabihf.tar.xz
rm gcc-linaro-6.2.1-2016.11-x86_64_armeb-linux-gnueabihf.tar.xz

# Set Name
mv gcc-linaro-6.2.1-2016.11-x86_64_armeb-linux-gnueabihf armeb-linux-gnueabihf-linaro_6.2.1-2016.11
