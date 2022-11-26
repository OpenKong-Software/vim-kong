#!/bin/bash

read -p "Are you sure you want to install VimKong? This will remove your current ~/.config/im settings [Y/n]" res_sure
if [ "$res_sure" = "Y" ]; then
  if ! command -v git &> /dev/null
  then
    echo "git could not be found"
    read -p "Do you want to install git? [Y/n]" res_git
    if [ "$res_git" = "Y" ]; then
      apt install git
    else
      echo "No changes made"
      exit
    fi
  fi

 if ! command -v nvim &> /dev/null
  then
    echo "nvim could not be found"
    read -p "Do you want to install nvim? [Y/n]" res_nvim
    if [ "$res_git" = "Y" ]; then
      apt install nvim
    else
      echo "No changes made"
      exit
    fi
  fi

  if [ -d ~/.config/nvim ]; then
    rm -rf ~/.config/nvim/*
  else
    mkdir ~/.config/nvim
  fi

  cp -r nvim/* ~/.config/nvim
else
  echo "No changes made"
fi
