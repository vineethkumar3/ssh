#!/bin/bash
gpg --recv-keys --keyserver hkp://pgp.mit.edu ED444FF07D8D0BF6
gpg --export -armor ED444FF07D8D0BF6 | sudo apt-key add -
sudo service ssh start
sudo systemctl enable ssh
sudo adduser vineeth
sudo usermod -aG sudo vineeth
