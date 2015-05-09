#!/usr/bin/env bash

#----------config a host-only interface------------#
# edit /etc/network/interfaces
# auto eth1
# iface eth1 inet static
# address 192.168.56.11
# netmask 255.255.255.0
# reboot

#-----------config ssh----------------#
# apt-get install openssh-server
# ssh-keygen
# ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host
# edit .ssh/config

# Host jessie
#    Hostname 192.168.56.11
#    IdentityFile ~/.ssh/virt_rsa
#    User xxx
#    Port xxx

sudo apt-get update

sudo apt-get install -y vim curl zsh build-essential
chsh -s /bin/zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

fasd_version="1.0.1"
p=`pwd`
wget "https://github.com/clvv/fasd/tarball/${fasd_version}" && tar xvzf "${fasd_version}" -C /tmp \
    && cd /tmp/clvv-fasd-4822024 && sudo make install && cd "${p}"
