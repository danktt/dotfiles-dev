#!/bin/bash 

echo "############################## Removendo o Firefox ##############################"
sudo snap remove firefox



apt update
apt upgrade -y

echo "############################## Pacotes básicos##############################" 
apt install -y git
apt install -y git-flow
apt install -y openjdk-8-jdk
apt install -y dirmngr
apt install -y gpg
apt install -y automake
apt install -y autoconf
apt install -y libreadline-dev
apt install -y libncurses-dev
apt install -y libssl-dev
apt install -y libyaml-dev
apt install -y libxslt-dev
apt install -y libffi-dev
apt install -y libtool
apt install -y unixodbc-dev
apt install -y unzip
apt install -y curl
apt install -y wget

# echo "Instalando o ASDF"
# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
# echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.bashrc
# echo -e "\n. $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc

# export ASDF_DIR=~/.asdf \
# && export PATH=$PATH:$ASDF_DIR/bin \
# && asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git \
# && asdf install nodejs 16.14.0 \
# && asdf global nodejs 16.14.0

echo "############################## Instalando o Discord ##############################"
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo apt install ~/discord.deb -y

echo "############################## Instalando o Spotify ##############################"
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client -y


echo "Instalando o NVM"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

echo "############################## Exportando o NVM ##############################"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion


echo "############################## Instalando o NodeJS ##############################"
nvm install --lts

echo "############################## Instalando o Yarn ##############################"
npm install -g yarn

echo "Config do Git"
git config --global user.name "danktt"
git config --global user.email "danilomirandaa.15@outlook.com"

echo "############################## Instalando o Postman ##############################"
wget https://gist.githubusercontent.com/SanderTheDragon/1331397932abaa1d6fbbf63baed5f043/raw/postman-deb.sh
sudo install -m0755 postman-deb.sh /usr/local/bin/postman-deb.sh
postman-deb.sh -y

echo "############################## Instalando o Reactotron ##############################"
wget https://github.com/infinitered/reactotron/releases/download/v2.17.1/reactotron-app_2.17.1_amd64.deb
sudo apt install ./reactotron-app_2.17.1_amd64.deb -y


echo "############################## Instalando o Hyper ##############################"
wget -O ~/hyper.deb "https://releases.hyper.is/download/deb"
sudo apt install ~/hyper.deb -y

echo "############################## Instalando o Visual  Studio Code##############################"
wget -O ~/vscode.deb "https://go.microsoft.com/fwlink/?LinkID=760868"
sudo apt install ~/vscode.deb -y

echo "############################## Instalando o Ulauncher ##############################"
sudo add-apt-repository ppa:agornostal/ulauncher -y
sudo apt update
sudo apt install ulauncher -y


echo "############################## Instalando o Mockoon ##############################"
wget https://github.com/mockoon/mockoon/releases/download/v1.18.1/mockoon-1.18.1.deb
sudo apt install ./mockoon-1.18.1.deb -y

echo "############################## Instalando o Google  Chrome##############################"
wget -O ~/google-chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo apt install ~/google-chrome.deb -y


echo "############################## Instalando o Gnome-extensions ##############################"

sudo apt-get install chrome-gnome-shell -y

echo "Instalando o gnome-tweaks"
sudo apt install gnome-tweaks -y

