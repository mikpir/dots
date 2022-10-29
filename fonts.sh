#!/usr/bin/env bash

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir -p temp-fonts
cd temp-fonts
for FONT_NAME in CascadiaCode JetBrainsMono SourceCodePro
do
    SYSDIR=/usr/local/share/fonts/$FONT_NAME
    sudo mkdir -p $SYSDIR

    mkdir -p ./$FONT_NAME
    wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/$FONT_NAME.zip" -O "fonts.zip"
    unzip fonts.zip -d ./$FONT_NAME
    sudo mv ./$FONT_NAME/* /usr/local/share/fonts/$FONT_NAME
   
    sudo chown -R root: $SYSDIR
    sudo chmod 644 $SYSDIR/* 
    sudo restorecon -RF $SYSDIR
done

cd ..
rm -rf temp-fonts

sudo fc-cache -v
