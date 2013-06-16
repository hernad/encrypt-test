#!/bin/bash

#git submodule init
#git submodule add https://github.com/shadowhand/git-encrypt.git
#git submodule update

echo unesi sudo password:

sudo ln -s "git-encrypt/$(pwd)/gitcrypt" /usr/local/bin/gitcrypt

gitcrypt init		 
