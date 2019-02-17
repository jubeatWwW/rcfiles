#for ubuntu only
#!/bin/bash

zsh_path=`which zsh`

if [ -z $zsh_path ]
then
    sudo apt-get -y install zsh
    chsh -s $zsh_path
fi

curl_path=`which curl`

if [ -z $curl_path ]
then
    sudo apt-get -y install curl
fi


cp -R ./zsh $HOME
cp ./.zshrcAuto $HOME/.zshrc
cp ./.screenrc $HOME
cp ./.vimrc $HOME

source $HOME/.zshrc

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"gnzh\"/g' ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(\n git\n git-flow-avh\n node\n npm\n pip\n python\n yarn\n zsh-autosuggestions\n)/g' ~/.zshrc

sudo apt-get -y install vim exuberant-ctags git python-pip
pip install dbgp vim-debug pep8 flake8 pyflakes isort
vim

