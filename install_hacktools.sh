#!/bin/bash

# tshark
sudo apt install tshark -y

# usage: pwn [-h] {asm,checksec,constgrep,cyclic,debug,disasm,disablenx,elfdiff,elfpatch,errno,hex<Plug>PeepOpenhd<Plug>PeepOpenwnstrip,scramble,shellcraft,template,unhex,update}
sudo pip install pwntools

# stego tools
sudo gem install zsteg
wget https://github.com/syvaidya/openstego/releases/download/openstego-0.7.2/openstego_0.7.2-1_amd64.deb -P /tmp/
sudo dpkg -i /tmp/openstego_0.7.2-1_amd64.deb
