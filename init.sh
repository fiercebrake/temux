#!/bin/bash

pkg update -y && pkg upgrade -y

pkg install -y python python-pip vim mlocate bash-completion pkgfile rsync git wget less gzip tar zlib xz openssh screen sudo gnupg bind cronie

touch ~/.ssh/id_rsa
