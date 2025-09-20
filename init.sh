#!/bin/bash

pkg update -y && pkg upgrade -y

pkg install -y python python-pip mlocate bash-completion pkgfile rsync git wget less gzip tar zlib openssh screen gnupg cronie

touch ~/.ssh/id_rsa

mv /data/data/com.termux/files/usr/bin/vi /data/data/com.termux/files/usr/bin/vi-bak
ln -sf /data/data/com.termux/files/usr/bin/vim /data/data/com.termux/files/usr/bin/vi

cat << EOF > ~/.ssh/config
Host tekne
  HostName tekne.sv
  Port 45100
  User devops
  IdentityFile ~/.ssh/id_rsa

Host themis
  HostName themis.tekne.sv
  Port 45100
  User dvaliente
  IdentityFile ~/.ssh/id_rsa
EOF
