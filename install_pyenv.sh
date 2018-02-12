#!/bin/bash

sudo apt-get install python-setuptools
sudo easy_install virtualenv virtualenvwrapper
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.profile
echo 'export WORKON_HOME=/media/h/pyenv' >> ~/.profile
source /usr/local/bin/virtualenvwrapper.sh

