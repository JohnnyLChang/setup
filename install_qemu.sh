#!/bin/bash
sudo apt-get install libc6-armel-cross libc6-dev-armel-cross -y
sudo apt-get install gdb-arm-none-eabi libncurses5-dev binutils-arm-linux-gnueabi -y
# qemu will then perform syscall emulation when you run the executable. This works for most ARM binaries but there are a few that may not run correctly.
sudo apt install install gcc-arm-linux-gnueabihf libc6-dev-armhf-cross binfmt-support qemu qemu-user-static qemu-user-static:i386   -y
sudo apt install libstdc++6-armhf-cross -y
