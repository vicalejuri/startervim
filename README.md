Startervim
==========

### Rusted & Abandoned project

This project is long abandoned, and i don't even use this on vim anymore. I use [spf13-vim](https://github.com/spf13/spf13-vim) and [Atom](https://atom.io/) nowadays...

![occupy-mah-code](http://i.imgur.com/ODoT6Bb.jpg "occupy-mah-code")

## Bla bla bla

Startervim is a collection of vim scripts, plugins and configurations that provides vim with sensible defaults and 
a sane plugin management system using pathogen.

The included bundles at the moment are:

    * Vundle
    * nerdtree
    * nerdcommenter
    * snipmate
    * tabular
    * syntastic
    * delimitMate
    * vim-fugitive 

Installation
------------

First you need to clone `startervim` and it's core dependencies:

    $ git clone git://github.com/Frangossauro/startervim.git
    $ git submodule update --init

Ok, we recommended you to make a backup ; that will be stored at `~/.vim-backup` and install:

    $ make backup
    $ make install

And you're done! You now may wanna edit your `~/.vimrc`, `~/.vimrc-keymaps` and add your own bundles
and tweaks to it.

Managing plugins/bundles
------------------------
   
Startervim uses [Vundle](https://github.com/gmarik/vundle) to manage it's bundles. You can safely install/
remove bundles without using any external helper and you can maintain your scripts always updated. 

You have to be aware that `Vundle` doesn't fetch plugins listed on the www.vim-scripts.org page. If you
need to install a plugin from vim-scripts page, you can use [this github mirror](http://github.com/vim-scripts).

### How do i install new bundles?

Open your `vimrc` and add the following line

    #       repo on github or vim-scripts mirror
    Bundle 'tpope/vim-fugitive'

And now run `:BundleInstall` inside vim.

### How do i remove a bundle ?

Open your `vimrc` and remove the specific bundle line. Run `:BundleClean`, and you're  done :)

### What about updating my bundles ?

Just run `:UpdateBundles!` inside vim.

Kudos
-----

* [tpope](http://github.com/tpope/vim-pathogen) for cleaning the mess with vim plugins (pathogen).
* [gmarik](https://github.com/gmarik/vundle) for providing a native plugin manager for vim.
* [bronsom](http://github.com/bronson/) to his incredible work on `vim-scripts` mirror.
