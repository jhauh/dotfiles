# dotfiles
## Setup and config files for a nicer looking linux install
I have a penchant for the tiling window manager [i3](https://i3wm.org/). It's great, and it's all competely configured using plain text files. 

What I _don't_ enjoy is setting it up again every time I spin up a new virtualbox or chroot. So here we are.

## Installation
Assuming you're running some Ubuntu or Debian based distro (something that uses apt-get), and that you've got your proxies and whatnot configured, clone this repo into `/home/$USER/` (I think it should work from anywhere else, give it a try if you hate clutter).

```
cd /home/$USER
git clone https://github.com/fluffactually/dotfiles.git
cd dotfiles
sudo ./makeme.sh
```

This will install the list of packages in pkglist.txt, as well as the gaps fork of i3 from
[https://github.com/Airblader/i3](https://github.com/Airblader/i3)

All being well you should only have to run this once ever.

Some packages I'd like to have automated the install of but couldn't (because they require adding PPAs) are
- compton: a lightweight compositing manager (determines how stuff gets drawn on your screen)
- dmenu2: an upgrade for dmenu, the tiny launcher bundled with i3 (think Windows+r)

Have a google and see if you can grab them. If not, no worries, life will go on.


## Config files
Now you've got the necessary packages to be a linux pro, all you need are the carefully curated configuration files to try, tinker with, and perfect. They're all in `dotfiles/configs/`. To get them out of there, to where they're supposed to be, simply run `dotfiles/symlink_dotfiles.sh`. It'll move any pre-existing dotfiles out of the way so you don't lose them.

If you fancy updating to see what I'm currently rocking, just `git pull`. To be sure you're not missing out on any extra goodies, rerun symlink_dotfiles.sh

## i3 on startup
Everything is in place, now all you have to do is switch your current Desktop Environment off and tell i3 to start on login by default. This varies depending on your current DE; here's what I do for Xubuntu (with Xfce):
[i3 tiling window manager with XFCE](https://forum.manjaro.org/index.php?topic=6831.0)



Good luck! Hopefully by the end you'll have something that looks a little like this:
![Seriously, how good does this look?](https://github.com/fluffactually/dotfiles/raw/master/Screenshot_2015-07-01.png)
