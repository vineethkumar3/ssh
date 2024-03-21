#!/bin/bash
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "gpg key"
gpg --recv-keys --keyserver hkp://pgp.mit.edu ED444FF07D8D0BF6
gpg --export -armor ED444FF07D8D0BF6 | sudo apt-key add -
sudo service ssh start
echo "ssh started"
sudo systemctl enable ssh
sudo service ssh restart
echo "User created"
sudo adduser vineeth
sudo usermod -aG sudo vineeth
