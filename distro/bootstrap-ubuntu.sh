U=$(whoami)

# Install linuxbrew
sudo apt -y install build-essential curl file git vim tmux golang fish

# Symlink everything we need
go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/go/bin/viaduct fish
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim
~/go/bin/viaduct git

# Fonts are special, we copy those
mkdir ~/.fonts/
cp -r fonts/* ~/.fonts/

sudo chsh -s /usr/bin/fish $U
