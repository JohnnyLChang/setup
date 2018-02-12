#!/bin/bash
sudo apt-get install arduino 
me=$USER
sudo usermod -aG dialout $me
groups
