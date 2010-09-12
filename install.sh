#!/usr/bin/env sh

# Baking up old files
echo "Saving old files..."
for file in ~/.vim ~/.vimrc ~/.vimrc-keymaps; do
	if [ -h file ]; then
		echo "baking up your .vim folder"
		mv file "$file.`date +%s`.bak" 
	fi
    echo "Saved!"
done

echo "Linking .vim , .vimrc and .vimrc-keymaps to startervim"
ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vimrc-keymaps ~/.vimrc-keymaps

echo "Installing bundles..."
ruby `pwd`/vim/bin/vim-update-bundles.rb
echo "Startervim! installed with success."
