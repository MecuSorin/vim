#!/bin/bash
#direct acces by url: https://raw.githubusercontent.com/MecuSorin/vim/master/vimSetup_linux.sh

mkdir -p ~/.vim ~/.vim/.undo ~/.vim/.swp ~/.vim/.backup ~/.vim/autoload ~/.vim/bundle ~/.vim/old_vimrc
git clone https://github.com/MecuSorin/vim.git ~/.vim/todelete
cp ~/.vimrc ~/.vim/old_vimrc
cp ~/.vim/todelete/.vimrc ~/.vimrc
cp -r ~/.vim/todelete/startup ~/.vim
cp -r ~/.vim/todelete/colors ~/.vim
rm -rf ~/.vim/todelete
dos2unix ~/.vim/startup/*
dos2unix ~/.vimrc


# Install plugins, if is used with sed to disable this step
if [ 1 -ne 0 ] 
	then
		curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim	
		cd ~/.vim/bundle
		git clone https://github.com/kien/ctrlp.vim.git
		git clone https://github.com/scrooloose/nerdcommenter.git
		git clone https://github.com/scrooloose/nerdtree.git
		git clone https://github.com/scrooloose/syntastic.git
		git clone https://github.com/bling/vim-airline
		git clone git://github.com/altercation/vim-colors-solarized.git
		git clone https://github.com/fatih/vim-go.git
fi
