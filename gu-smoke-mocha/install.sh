#!/bin/bash

#Install Node + NPM

if ! dpkg -s nodejs; then
     sudo apt-get install nodejs 
     sudo ln -s /usr/bin
     nodejs /usr/bin/node 
else
     echo Node already installed!
fi
curl https://npmjs.org/install.sh | sudo sh

#install Mocha + flotsam and jetsam
sudo npm  install -g mocha
sudo npm install should --save-dev
