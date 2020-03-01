dotfiles
========

**Update: Moved to Gitlab**: https://gitlab.com/jhauh/dotfiles

A collection of my excessively curated configuration files. Uses `GNU Stow <http://www.gnu.org/software/stow/>`_ to manage symlinks so you don't have to.

Usage
-----
Clone this repo to your home folder, cd into it and run::

    stow vim
    stow tmux
    ...

..To pick and choose which config files you want to try out. To undo any of these, run::

    stow -D vim

Individual package notes
------------------------

i3-gaps
*******
Install `i3-gaps <https://github.com/Airblader/i3>`_ following the instructions on the repo's GitHub page.

Vim
***
Plugins are managed using `Vundle <https://github.com/VundleVim/Vundle.vim>`_. Install by following the instructions on the repo's GitHub page, and then once you've stowed the vim config files, run ``:PluginInstall`` inside vim to set up the rest of the plugins.


