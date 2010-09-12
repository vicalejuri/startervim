Startervim
==========

Startervim is a collection of vim scripts, plugins and configurations to make vim suck less. A modern vim
approach is used, including pathogen and automatic update of plugins (aka as bundles).

The included bundles at the moment are:

* `syntastic` (http://github.com/scrooloose/syntastic)
* `nerdtree` (http://github.com/scrooloose/nerdtree)
* `lusty` (http://github.com/sjbach/lusty)
* `delimitMate` (http://github.com/Raimondi/delimitMate)
* `snipMate` (http://github.com/msanders/snipmate.vim)
* `supertab` (http://github.com/ervandew/supertab)
* `vimshell` (http://github.com/Shougo/vimshell)
* `matchit` (http://github.com/edsono/vim-matchit)
* `align` (http://github.com/tsaleh/vim-align)

Installation
------------

You need an standalone ruby interpreter. Automatic download/update of bundles is handled by a ruby script.
It's fine to have a vim without ruby support.

Installation is performed by user, and not system-wide. Your old `.vim/` and `.vimrc` files are saved
as `~/.$file-name.%date%.bak` . To install, simple issue this commands:

    $ git@github.com:Frangossauro/startervim.git
    $ cd startervim
    $ ./install.sh

And you're done! You may wanna edit your `~/.vimrc` or `~/.vimrc-keymaps` , but i've already provided it
with sensible defaults ;)

Managing plugins/bundles
------------------------
   
This is a modern vim, you know? This means that that horrible mess sitting in your `.vim/` folder is not
there anymore. Each plugin (i like to call it `bundles`) resides in it own container, inside `bundle/bundle-name`.
Nice isn't? 

A helper is included to manage bundles and stay them always updated. This is provided by the useful ruby
script [vim-update-bundles](http://github.com/bronson/vim-update-bundles), which works with git
repositories. A [mirror](http://github.com/vim-scripts) is provided to all plugins in `www.vim.org`, 
so you can use all plugins from `www.vim.org` without further problems. 

### How do i install new bundles?

First, you need to make sure that the bundle you want is in a git repository. 
Try to find your plugin/bundle [here](http://github.com/vim-scripts).

Now, open your `vimrc` and add the following line

    # --- BUNDLE http://path-to-the-git-repository

And now run `:UpdateBundles` inside vim.

### How do i remove a bundle ?

Open your `vimrc` and remove the specific bundle line. Run `:UpdateBundles` again, and you're 
done :)

### What about updating my bundles ?

Just run `:UpdateBundles` inside vim.

### How do i know what bundles/versions are installed?

    :help bundles

Kudos
-----

* [tpope](http://github.com/tpope/vim-pathogen) for cleaning the mess with vim plugins (pathogen)
* [bronsom] (http://github.com/bronson/) to his incredible work on `vim-update-bundles` and `vim-scripts` mirror.
