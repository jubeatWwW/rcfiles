#!/bin/sh

cp ./.bash_profile ~/.bash_profile
cp ./.bashrc ~/.bashrc
source ~/.bash_profile
source ~/.bashrc


apt-get -y install vim exuberant-ctags git python-pip
pip install dbgp vim-debug pep8 flake8 pyflakes isort
cp ./.vimrc ~/.vimrc
vim
