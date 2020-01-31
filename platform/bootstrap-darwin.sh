# Install Homebrew (http://brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
/usr/local/bin/brew update

# Install brews
/usr/local/bin/brew install \
    fish \
    git \
    go \
    msmtp \
    # neofetch \
    # ncdu \
    neomutt \
    notmuch \
    offlineimap \
    # rbenv \
    # swiftformat \
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
~/go/bin/viaduct git
~/go/bin/viaduct neomutt
~/go/bin/viaduct offlineimap
~/go/bin/viaduct msmtp
~/go/bin/viaduct nvim
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim
~/go/bin/viaduct xcode

# Fonts are special, we copy those
cp fonts/* ~/Library/Fonts/