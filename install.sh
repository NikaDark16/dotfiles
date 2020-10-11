#!/bin/sh

remake_ln(){
  arg1=$1
  arg2=$2
  rm ~/"$arg1"
  ln -s $PWD/"$arg1" ~/"$arg2"
}

remake_ln .bin .
remake_ln .config/sway .config
remake_ln .gitconfig .
remake_ln .local/share/packages .local/share
remake_ln .zshrc .

pip install ia256utilities