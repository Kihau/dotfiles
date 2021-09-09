# Used to quickly load all config files
# Overridess existing config files with a new ones


# If config directory doesn't exist, create one.
if [ ! -d "$HOME/.config" ] ; then
	mkdir ~/.config
fi

# Replace bash config files with new ones
cp -f bashrc $HOME/.bashrc
cp -f bash_aliases $HOME/.bash_aliases

# Replace/Create all config files
cp -rf ./config/* $HOME/.config/

# If not existant, create directory and copy wallpaper.
if [ ! -d "$HOME/.wallpapers" ] ; then
	mkdir ~/.wallpapers
	cp ./backgrounds/wallpaper.png ~/.wallpapers/current.png
fi

# If nitrogen config doesn't exist, select new wallpaper
if [ ! -d "$HOME/.config/nitrogen" ] ; then
	nitrogen ~/.wallpapers
fi
