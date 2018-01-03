# salt-stack-udemy

## Salt repository
wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main' | sudo tee /etc/apt/sources.list.d/saltstack.list
sudo apt-get update

## Install salt-master
sudo apt-get install salt-master salt-cloud salt-doc

## Config salt-master
mkdir -p {keys,pillar,reactor,salt,cloud}
mkdir -p salt/{ssh/files,users/files,common,mysql,nginx,php7,supervisor}
mkdir -p cloud/{cloud.providers.d,cloud.profiles.d}
touch keys/.keep reactor/.keep

## Install salt-minion (update salt-repository first)
sudo apt-get install salt-minion
