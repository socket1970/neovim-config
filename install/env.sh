#!/bin/bash

# Install Python
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo apt-get install python3-venv -y

sudo apt-get install pkg-config -y

# Install npm
sudo apt-get install npm -y

# # Install php and composer
# sudo apt-get install php-cli -y
# curl -sS https://getcomposer.org/installer -o composer-setup.php
# sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
# sudo composer self-update

# # Install dotnet
# sudo snap install dotnet-sdk --classic

# # Insttall golang 1.22.2
# sudo mkdir ~/go
# cd ~/go


# curl -OL https://golang.org/dl/go1.22.2.linux-amd64.tar.gz
# sudo tar -C /usr/local -xvf go1.22.2.linux-amd64.tar.gz
# echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
# source ~/.profile
# sudo rm -rf ~/go/

# # Install Rust
# curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
# source ~HOME/.cargo/env