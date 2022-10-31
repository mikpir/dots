#!/usr/bin/env bash

function syncDots() {
    rsync -avh --no-perms --dry-run dotfiles test_dir;
    source ~/.bash_profile;
}

syncDots;