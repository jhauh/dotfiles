!#/usr/bin/bash

# So you want a nice setup

# how are we gonna set that up?

# first we're gonna say you have some sort of ubuntu/debian base
# so that you can easily apt-get software
# and that you've done all the usual stuff (configured proxies,
# installed the guest additions etc)

# list of things to apt-get should be in a separate text file
# so that we can cat that file into apt-get easily
# you should probs run this script as sudo actually

echo "installing list of packages contained in pkglist.txt"
sudo apt-get install -y $(cat pkglist.txt) 

# we need to install i3 for the dependencies it brings along
# but really we're going to use a fork from github with extras
echo "done! now grabbing a cool fork of the window manager we'll use"
cd ~
# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# do this if you want the stable branch, skip if you want dev branch (gaps-next)
#git checkout gaps && git pull

# compile & install
make
sudo make install

# hopefully that worked.
echo "excelente! now grabbing a cool vim theme!"
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

cd ~/dotfiles

echo "that went swimmingly, you should never have to run me again"
echo "run symlink_dotfiles.sh now to put everything in the right place"
