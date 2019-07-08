U=$(whoami)

sudo dnf -y install \
    util-linux-user \
    fish \
    git \
    sudo \
    which \
    msmtp \
    offlineimap \
    notmuch \
    tmux \
    vim \
    urlview \
    wget \
    golang \
    libxcrypt-compat # compat layer for homebrew

# Install linuxbrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# Update Homebrew
brew update

# Install brews
brew install \
    tig

# Install HEAD brews
brew install \
    diff-so-fancy \
    --HEAD

# Symlink everything we need
go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

~/go/bin/viaduct fish
~/go/bin/viaduct git
~/go/bin/viaduct mc
~/go/bin/viaduct neomutt
~/go/bin/viaduct nvim
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim
~/go/bin/viaduct waybar
~/go/bin/viaduct sway
~/go/bin/viaduct rofi

# Fonts are special, we copy those
cp fonts/* ~/.fonts/

# Change chell to the one and only fish
sudo chsh -s /bin/fish $U