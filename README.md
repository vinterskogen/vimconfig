# Vim configuration set for PHP backend development

<p align="center"><a href="https://github.com/vinterskogen/vimconfig" target="_blank"><img src="https://user-images.githubusercontent.com/8015372/33518612-b9077592-d7a8-11e7-81d4-4a69cb476e92.png"></a></p>


## Introduction

The goal of this repository is to provide a flexible configuration set, that
turns Vim into a convenient PHP-oriented IDE.

This is just an example of how Vim can be configured, according to the typical
needs of the backend developer writing in PHP. It's a starting point to discover
how to tweak VIM to make it privide a number of IDE-specific features.

Assumed, that you allready have some basic experience with Vim. Otherwise first
pay attention to [Vim Novice series](http://derekwyatt.org/vim/tutorials/novice/)
by Derek Wyatt, who explains all Vim's stuff in extremely clear manner.


## Installation

Feel free take a look inside a `.vimrc` file in this repository. It's good for
you to explore its contents for better understanding of the following steps.
It is well structured and has a lot of usefull notes.

To try this configuration by your own follow the instructions:

1. Pull the `.vimrc` file:

  - clone this repo: `git clone https://github.com/vinterskogen/vimconfig.git ~/vimconfig`
  - symlink the `vimrc` file to your home directiory: `ln -s ~/vimconfig/vimrc ~/.vimrc`

2. Setup Vundel (Vim's plugin manager):

  - install it by cloning: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle.vim`
  - install all the plugins listed in `.vimrc` with command: `vim +PluginInstall +qall`
  - wait a few minutes for the plugins are downloaded and installed

3. Run Vim:

  - just type `vim` in your terminal 
  - ...or run GUI version of Vim - it is known as [GVim](https://apps.ubuntu.com/cat/applications/precise/vim-gnome/)
on Linux and [MacVim](http://macvim-dev.github.io/macvim/) on Mac. Check if you
have that intalled.


## Credit

Vinter Skogen, 2014 - 2017
