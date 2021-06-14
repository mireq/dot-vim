My VIM dir
==========

This is my personal .vim directory.

Install
-------

    cd ~
    git clone --recursive https://github.com/mireq/dot-vim.git .vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd .vim
    mkdir backup
    mkdir spell
    mkdir tmp
    mkdir undodir
    echo "stty -ixon" >> ~/.bashrc
    cd bundle/YouCompleteMe
    ./install.py
    cd ~

Shortcuts
---------

* `Ctrl-S` -- Save
* `F3` -- Buffer list
* `F7` -- Gundo tree
* `F9` -- Compile
* `F11` -- Toggle tag bar
* `F12` -- Alternate buffer (switch .c / .h)
* many more

