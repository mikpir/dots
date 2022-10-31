#!/usr/bin/env bash

function syncDots() {
    rsync --include "./**/.*" --exclude ".git/" \
        -avh --no-perms . ~;
    source ~/.bash_profile;
}

syncDots;