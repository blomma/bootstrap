U=$(whoami)

# Install linuxbrew
sudo apt -y install build-essential curl file git
git clone https://github.com/Linuxbrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin
eval $(~/.linuxbrew/bin/brew shellenv)

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

sudo apt -y install fish
sudo chsh -s /usr/bin/fish $U

curl -L https://get.oh-my.fish | fish