#!/bin/bash
# Uploads/updates configurations files.

set -e

while read dotfile
do
	rm -rf $dotfile
	mkdir -p $(dirname $dotfile)
	cp -r $HOME/$dotfile $(dirname $dotfile)
done < dotfiles.txt
