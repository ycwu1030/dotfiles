#!/bin/bash

curdir=$(pwd)
# setup on-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# For powerline
pip install powerline-status --user

# For PowerFonts
mkdir tmp
cd tmp
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh

# Solarized color for iterm2
cd ${curdir}
cd tmp
git clone https://github.com/altercation/solarized
echo "Please install solarized color scheme by yourself in ${curdir}/tmp/solarized/iterm2-colors-solarized"

# theme for iterm2
git clone https://github.com/fcamblor/oh-my-zsh-agnoster-fcamblor.git
cd oh-my-zsh-agnoster-fcamblor
./install


cd ${curdir}
ln -s ${curdir}/zshrc ~/.zshrc
ln -s ${curdir}/vim/vimrc ~/.vimrc


# zshrc extra setup
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions

# vim extra setup
cd ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.vim/.backup
mkdir ~/.vim/.swp
mkdir ~/.vim/.undo

cd ${curdir}





