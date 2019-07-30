U=$(whoami)

# Install linuxbrew
sudo apt -y install build-essential curl file git vim tmux golang fish

# Symlink everything we need
go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/bin/linux-arm-7-viaduct fish
~/bin/linux-arm-7-viaduct mc
~/bin/linux-arm-7-viaduct omf
~/bin/linux-arm-7-viaduct ssh
~/bin/linux-arm-7-viaduct tmux
~/bin/linux-arm-7-viaduct vim

sudo chsh -s /usr/bin/fish $U
