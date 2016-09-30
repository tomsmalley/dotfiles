#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
    rsync --exclude ".gitignore" \
          --exclude ".git" \
          --exclude ".DS_Store" \
          --exclude ".macos" \
          --exclude "bootstrap.sh" \
          --exclude "README.md" \
          --exclude "LICENSE*" \
          --exclude "*.swp" \
          -avh --no-perms . ~;
    source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
