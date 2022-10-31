#!/usr/bin/env bash

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
        --add-repo \
            https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# Add current user to docker group
USER=`whoami`
sudo usermod -aG docker $USER

