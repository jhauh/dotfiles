#!/usr/bin/sh

# create symbolic links between the hand-crafted config files in
# dotfiles/configs and where they're expected to be 

# move the current set of dotfiles somewhere so they dont get
# written over, and in case you don't like the new configs
mkdir -p ~/dotfiles_old

mv ~/.config/compton.conf ~/dotfiles_old
mv ~/.vimrc ~/dotfiles_old
mv ~/.i3/i3status.conf ~/dotfiles_old
mv ~/.i3/i3exit.sh ~/dotfiles_old
mv ~/.i3/config ~/dotfiles_old
mv ~/.tmux.conf ~/dotfiles_old

echo 'dont worry if some mv commands failed above'

# now symlink the shiny new config files
ln -s ~/dotfiles/configs/vimrc ~/.vimrc
ln -s ~/dotfiles/configs/i3status.conf ~/.i3/i3status.conf
ln -s ~/dotfiles/configs/i3exit.sh ~/.i3/i3exit.sh
ln -s ~/dotfiles/configs/config ~/.i3/config
ln -s ~/dotfiles/configs/compton.conf ~/.config/compton.conf
ln -s ~/dotfiles/configs/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/scripts/get_ws.sh ~/.i3/get_ws.sh
ln -s ~/dotfiles/scripts/rename_ws.sh ~/.i3/rename_ws.sh

# this is pretty manual, could loop but idk this is easier


