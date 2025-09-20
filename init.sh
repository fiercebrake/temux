#!/bin/bash

pkg update -y && pkg upgrade -y

pkg install -y python python-pip mlocate bash-completion pkgfile rsync git wget less gzip tar zlib openssh screen gnupg cronie

touch ~/.ssh/id_rsa
