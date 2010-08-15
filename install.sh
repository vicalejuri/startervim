#!/usr/bin/env sh

# Baking up old files
for file in ~/.vim ~/.vimrc ~/.vimrc-keymaps; do
	if [ -h file ]; then
		echo "baking up your .vim folder"
		mv file "$file.`date +%s`.bak" 
	fi
done

ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vimrc-keymaps ~/.vimrc-keymaps

ruby `pwd`/vim/bin/vim-update-bundles.rb

echo "Startervim! installed with success."
