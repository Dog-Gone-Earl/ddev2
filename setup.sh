#!/bin/bash
#bash script_name

sudo apt update -y && sudo apt upgrade -y
#install pyenv
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

sudo sed -i '1 i\eval "$(pyenv init -)"' ~/.bashrc
#sudo sed -i '1 i\command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' ~/.bashrc
sudo sed -i '1 i\export PATH="$PYENV_ROOT/bin:$PATH"' ~/.bashrc
sudo sed -i '1 i\export PYENV_ROOT="$HOME/.pyenv"' ~/.bashrc
sudo sed -i '1 i\eval "$(pyenv virtualenv-init -)"' ~/.bashrc


#exec "$SHELL"

curl -s https://pyenv.run | bash
pyenv update

#install python 3.8.0
pyenv install 3.8.0

#install pip
sudo apt install python-pip -y
sudo apt install python3-pip -y

pyenv global 3.8.0
python -m pip install --user pipx
python3 -m pipx ensurepath
python3 -m pip install --user -U pipx
source ~/.bashrc
#source  .~/.bashrc

sudo apt-get -y install libunwind-dev
sudo apt-get -y install liblz4-dev
python3 -m pip install memray


pipx install ddev

git clone https://github.com/DataDog/integrations-core.git
git clone https://github.com/DataDog/integrations-extras.git

ddev config set core /home/vagrant/integrations-core
ddev config set extras /home/vagrant/integrations-extras

#Docker Install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
#source ~/.bashrc
