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
    "echo stty -ixon" >> .bashrc

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

