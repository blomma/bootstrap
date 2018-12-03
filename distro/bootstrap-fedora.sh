U=$(whoami)

sudo dnf -y install util-linux-user fish git sudo which
sudo chsh -s /bin/fish $U

# Install linuxbrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# Update Homebrew
brew update

# Install brews
brew install \
    git \
    go \
    midnight-commander \
    msmtp \
    neofetch \
    ncdu \
    neomutt \
    notmuch \
    offlineimap \
    rbenv \
    swiftformat \
    tig \
    tmux \
    vim \
    urlview \
    wget \
    lbdb \

# Symlink everything we need
go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/go/bin/viaduct fish
~/go/bin/viaduct mc
~/go/bin/viaduct neomutt
~/go/bin/viaduct nvim
~/go/bin/viaduct omf
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim

# Fonts are special, we copy those
#cp fonts/* ~/Library/Fonts/

curl -L https://get.oh-my.fish | fish
