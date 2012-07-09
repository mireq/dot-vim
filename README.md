My VIM dir
==========

This is my personal .vim directory.

Dependencies
------------

* python 2.7
* ruby
* clang 3.x

Install
-------

    git clone https://github.com/mireq/dot-vim.git .vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd .vim
    git submodule init
    git submodule update
    mkdir backup
    mkdir spell
    mkdir tmp
    mkdir undodir
    "echo stty -ixon" >> .bashrc

    vim local.vim

Shortcuts
---------

* `Ctrl-S` -- Save
* `Ctrl-Space` -- Auto completion
* `F3` -- Buffer list
* `F7` -- Gundo tree
* `F8` -- Toggle project tree
* `F9` -- Compile
* `F11` -- Toggle tag bar
* `F12` -- Alternate buffer (switch .c / .h)
* many more

