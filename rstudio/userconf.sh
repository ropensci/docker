#!/bin/bash

useradd -m $USER && echo "$USER:$PASSWORD" | chpasswd
git config --global user.name $USER
git config --global user.email $EMAIL
git config --global credential.helper cache
cp /.gitconfig /home/$USER
chown -R $USER:$USER /home/$USER