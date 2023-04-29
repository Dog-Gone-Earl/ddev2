#!/bin/bash

#bash script_name
#eval "$(curl https://raw.githubusercontent.com/Dog-Gone-Earl/ddev2/main/setup.sh)"

sudo apt update -y && sudo apt upgrade -y
#install pyenv
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl python-all-dev git \
unixodbc unixodbc-dev tdsodbc libunwind-dev liblz4-dev python-pip python3-pip

curl -s https://pyenv.run | bash

sudo sed -i '1 i\eval "$(pyenv init --path)"' ~/.bashrc
sudo sed -i '1 i\command -v pyenv >/dev/null' ~/.bashrc
sudo sed -i '1 i\export PATH="$PYENV_ROOT/bin:$PATH"' ~/.bashrc
sudo sed -i '1 i\export PYENV_ROOT="$HOME/.pyenv"' ~/.bashrc
sudo sed -i '1 i\eval "$(pyenv virtualenv-init -)"' ~/.bashrc

source ~/.bashrc

#install python 3.8.0
pyenv update
pyenv install 3.8.0

pyenv global 3.8.0

python -m pip install --user pipx
python3 -m pipx ensurepath

pip install --upgrade pip
python3 -m pip install memray

git clone https://github.com/DataDog/integrations-core.git
git clone https://github.com/DataDog/integrations-extras.git

#Docker Install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER

pip install datadog-checks-dev[cli]

#open a new terminal with 'cmd+t'
#vagrant ssh
#pipx install ddev
#ddev config set core /home/vagrant/integrations-core
#ddev config set extras /home/vagrant/integrations-extras

#to upgrade 
#pip install --upgrade datadog-checks-dev[cli]
