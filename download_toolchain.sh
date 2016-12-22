#!/bin/bash

# Clean
rmdir armeb-linux-gnueabihf-linaro_5.3.1-2016.05
rmdir gcc-linaro-5.3.1-2016.05-x86_64_armeb-linux-gnueabihf
rm gcc-linaro-5.3.1-2016.05-x86_64_armeb-linux-gnueabihf.tar.xz

# Download Linaro 5.3.1
wget https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/armeb-linux-gnueabihf/gcc-linaro-5.3.1-2016.05-x86_64_armeb-linux-gnueabihf.tar.xz

# Extract ToolChain
tar -xvf gcc-linaro-5.3.1-2016.05-x86_64_armeb-linux-gnueabihf.tar.xz
rm gcc-linaro-5.3.1-2016.05-x86_64_armeb-linux-gnueabihf.tar.xz

# Set Name
mv gcc-linaro-5.3.1-2016.05-x86_64_armeb-linux-gnueabihf armeb-linux-gnueabihf-linaro_5.3.1-2016.05
