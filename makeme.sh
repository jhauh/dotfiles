#!/usr/bin/sh

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

