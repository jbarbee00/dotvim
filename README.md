#dotvim
Personal repository for managing my Vim confiugration across multiple hosts.

----------
####INSTALLATION
***Linux:***

    cd ~
    git clone http://github.com/bclarkindy/dotvim.git ~/.vim
    ln -s .vim/vimrc .vimrc
    cd .vim
    git submodule update --init
    
***Windows:***

    cd %HOMEPATH%
    git clone http://github.com/bclarkindy/dotvim.git vimfiles
    mklink _vimrc vimfiles/vimrc
    cd vimfiles
    git submodule update --init

That's all for now.
