U=$(whoami)

# Install linuxbrew
sudo apt -y install build-essential curl file git vim tmux

# linux brew is to slow atm for a pi since it compiles everything from scratch

# git clone https://github.com/Linuxbrew/brew ~/.linuxbrew/Homebrew
# mkdir ~/.linuxbrew/bin
# ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
# eval $(~/.linuxbrew/bin/brew shellenv)

# Update Homebrew
# brew update

# Install brews
# brew install \
#     git \
#     tmux \
#     vim

# Symlink everything we need
wget https://github.com/blomma/viaduct/releases/download/v0.8/linux-arm-7-viaduct.tar.bz2
tar -jxvf linux-arm-7-viaduct.tar.bz2

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/bin/linux-arm-7-viaduct fish
~/bin/linux-arm-7-viaduct mc
~/bin/linux-arm-7-viaduct omf
~/bin/linux-arm-7-viaduct ssh
~/bin/linux-arm-7-viaduct tmux
~/bin/linux-arm-7-viaduct vim

sudo apt -y install fish
sudo chsh -s /usr/bin/fish $U

curl -L https://get.oh-my.fish | fish