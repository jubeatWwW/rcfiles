#for ubuntu only
!#/bin/sh

cp -R ./zsh $HOME
cp ./.zshrcAuto $HOME/.zshrc
cp ./.screenrc $HOME
cp ./.vimrc $HOME

source $HOME/.zshrc

apt-get -y install vim exuberant-ctags git python-pip
pip install dbgp vim-debug pep8 flake8 pyflakes isort
vim

