# Vim configuration set for PHP backend development


## Introduction

The goal of this repository is to provide a flexible configuration set, that
turns Vim into a convenient PHP-oriented IDE.

This is just an example of how Vim can be configured, according to the typical
needs of the backend developer writing in PHP. It's a starting point to discover
how VIM can be configured to implement a number IDE-specific features.

Assumed, that you allready have some basic expirience with Vim. If you are new
to Vim's pay attention to [Vim Novice](http://derekwyatt.org/vim/tutorials/novice/)
series by Derek Wyatt, in which a bunch of essential basics of Vim is extremely
good explained.


## Installation

Feel free take a look inside a `.vimrc` file in this repository. It's good for
you to explore its contents for better understanding of the following steps.
It is well structured and has a lot of usefull notes.

To try this configuration by your own follow the instructions:

1. Pull the `.vimrc` file:

  - clone this repo: `git clone https://github.com/vinterskogen/vimconfig.git ~/vimconfig`
  - symlink the `.vimrc` to your home directiory: `ln -s ~/vimconfig/.vimrc ~/.vimrc`

2. Setup the Vundel - Vim's plugin manager

  - install it by cloning: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle.vim`
  - run Vim to install all the plugins listed in `.vimrc` with command: `vim +PluginInstall +qall`
  - wait a few minutes for the plugins are downloaded

3. Run Vim 

  - just type `vim` in shell and all good to go
  - running GUI version of Vim depends on your OS. Vim's GUI version is known as
"gVim" for Linux and "MacVim" for MacOS, if you have that intalled (if not -
google for that with the keyword `vim-gtk` or `macvim` accordingly)


## Plugins

### Core plugins

#### Vundle

[Vundle](https://github.com/vundlevim/vundle.vim) is the Vim's plugin manager.
Vundle automatically manages the runtime path of your installed scripts and
regenerates help tags after installing and updating.

#### Indexer

[Indexer](https://github.com/vim-scripts/indexer.tar.gz) is a Vim plugin that
provides painless transparent tags generation and keeps tags up-to date.

...


## Credit

Vinter Skogen, 2014 - 2017
