#!/bin/bash

# Bash Colors
COLOR_NONE='\033[0m'
COLOR_BLACK='\033[0;30m'
COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_BROWN='\033[0;33m'
COLOR_BLUE='\033[0;34m'
COLOR_PURPLE='\033[0;35m'
COLOR_CYAN='\033[0;36m'
COLOR_LIGHT_GRAY='\033[0;37m'
COLOR_DARK_GRAY='\033[1;30m'
COLOR_LIGHT_RED='\033[1;31m'
COLOR_LIGHT_GREEN='\033[1;32m'
COLOR_YELLOW='\033[1;33m'
COLOR_LIGHT_BLUE='\033[1;34m'
COLOR_LIGHT_PURPLE='\033[1;35m'
COLOR_LIGHT_CYAN='\033[1;36m'
COLOR_WHITE='\033[1;37m'

#sed -e '2 i\wowowowowowowowowowow' vimrc
#if [ -e ~/.vim/bundle/Vundle.vim ]
#then
#  echo -e ${COLOR_RED} "vundle is already installed"
#else
#  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#fi
#
#echo -e ${COLOR_NONE} "inset vundle in vimrc"

#insert vundle"
#perl -p -i -e'$.==2 and print "set rtp+=~/.vim/bundle/Vundle.vim\n\n\n"' vimrc
#perl -p -i -e'$.==3 and print "call vundle#begin()\n"' vimrc
#perl -p -i -e'$.==4 and print "Plugin 'VundleVim/Vundle.vim'\n"' vimrc

install_light_line() {
  if [ -e ~/.vim/bundle/lightline.vim ]
    then
      echo -e ${COLOR_RED} "light line is already installed"
  else
    git clone https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline.vim
      echo "set runtimepath^=~/.vim/bundle/lightline.vim" >> vimrc

      echo " \" lightline configuration" >> vimrc
      echo "let g:lightline = {" >> vimrc
      echo "      \ 'colorscheme': 'solarized'," >> vimrc
      echo "      \ 'active': {" >> vimrc
      echo "      \ 'left' : [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ]," >> vimrc
      echo "      \ }" >> vimrc
      echo "      \ }" >> vimrc
    echo "set showtabline=2" >> vimrc
    echo "set laststatus=2" >> vimrc
    echo "if !has('gui_running')" >> vimrc
    echo "set t_Co=256" >> vimrc
    echo "endif" >> vimrc

  fi
echo -e ${COLOR_NONE} "========================================================="
}

install_ctrlp() {
  if [ -e ~/.vim/bundle/ctrlp.vim ]
    then
      echo -e ${COLOR_RED} "ctrlp is already installed"
  else
    git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
    fi
      echo -e ${COLOR_NONE} "========================================================="
}


#main

install_light_line
install_ctrlp

cp vimrc ${HOME}/.vimrc
#cp tmux.conf ${HOME}/.tmux.conf
