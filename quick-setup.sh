# Used to quickly load all config files
# Overridess existing config files with a new ones


# If config directory doesn't, exist create one.
if [ -d "~/.config" ]; then
	mkdir ~/.config
fi

# Replace bash config files with new ones
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases

# Replace/Create all config files
cp -r config ~/.config
