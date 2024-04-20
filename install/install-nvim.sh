#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install make -y
sudo apt-get install cmake -y
sudo apt-get install unzip -y
sudo apt-get install gettext -y

sudo apt-get install ripgrep -y

sudo curl -LO https://github.com/neovim/neovim/archive/refs/tags/v0.9.5.tar.gz

tar -xvf v0.9.5.tar.gz
sudo rm v0.9.5.tar.gz

cd neovim-0.9.5

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd ../
sudo rm -rf neovim-0.9.5
