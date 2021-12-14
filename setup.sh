#!/bin/bash

# Add .vimrc path to .bashrc
echo "export VIMINIT='source \$MYVIMRC'" >> ~/.bashrc
echo "export MYVIMRC='~/.vim/.vimrc'" >> ~/.bashrc

# Clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Run PluginInstall
vim +PluginInstall +qall
