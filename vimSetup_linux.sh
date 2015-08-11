#!/bin/bash

mkdir -p ~/.vim ~/.vim/undoHistory ~/.vim/autoload ~/.vim/bundle ~/.vim/old_vimrc
git clone https://github.com/MecuSorin/vim.git ~/.vim/todelete
cp ~/.vimrc ~/.vim/old_vimrc
cp ~/.vim/todelete/base.vimrc ~/.vimrc
cp -r ~/.vim/todelete/startup ~/.vim
rm -rf ~/.vim/todelete
dos2unix ~/.vim/startup/*

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/bling/vim-airline
git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/fatih/vim-go.git
