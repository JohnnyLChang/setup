#!/bin/bash

rm /tmp/oracle_vbox_2016.asc
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc /tmp/ -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.2
