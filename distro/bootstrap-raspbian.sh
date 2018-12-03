U=$(whoami)

sudo apt -y install fish
sudo chsh -s /usr/bin/fish $U

# Install linuxbrew
sudo apt -y install build-essential curl file git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# Update Homebrew
brew update

# Install brews
brew install \
    git \
    go \
    midnight-commander \
    tig \
    tmux \
    vim \
    urlview \
    wget \

# Symlink everything we need
go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/go/bin/viaduct fish
~/go/bin/viaduct mc
~/go/bin/viaduct omf
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim

curl -L https://get.oh-my.fish | fish