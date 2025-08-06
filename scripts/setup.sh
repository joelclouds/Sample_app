#!/usr/bin/env bash

# needed to guarantee that cached depencies are not defaulted too despite changing the req verion
read -p"Delete cached libraries? (y/N)" choice

if [ $choice == "y" ]; then
	buildozer android clean
else
	echo "Keeping buildozer's cached app dependencies"
fi

# buildozer dependencies
sudo apt update
sudo apt install -y git zip unzip openjdk-17-jdk python3-pip autoconf libtool pkg-config zlib1g-dev libncurses5-dev libncursesw5-dev libtinfo5 cmake libffi-dev libssl-dev
pip install --upgrade pip
pip3 install --user --upgrade Cython==0.29.33

# add the following line at the end of your ~/.bashrc file
export PATH=$PATH:~/.local/bin/

pip install -r src/requirements.txt

read -p "Do you wish to create a new buildozer.spec. Needed if new proj or you accidentaly deleted old one?(y/N)" choice

if [ $choice == "y" ]; then
	buildozer init
fi
