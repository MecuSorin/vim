if has('win32') || has ('win64')
    let $VIMHOME = $VIM."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif

"source $VIMHOME/old_vimrc/.vimrc
source $VIMHOME/startup/master.vim
