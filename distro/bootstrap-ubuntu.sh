U=$(whoami)

sudo apt update
sudo apt install -y fish git sudo curl
sudo chsh -s /usr/bin/fish $U

# Install linuxbrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# Update Homebrew
brew update

# Install brews
brew install \
    git \
    go \
    midnight-commander \
    neofetch \
    ncdu \
    tig \
    tmux \
    vim \
    wget \

# Symlink everything we need
go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/go/bin/viaduct fish
~/go/bin/viaduct mc
~/go/bin/viaduct nvim
~/go/bin/viaduct omf
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim

# Fonts are special, we copy those
#cp fonts/* ~/Library/Fonts/

curl -L https://get.oh-my.fish | fish
