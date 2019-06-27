U=$(whoami)

sudo apt update
sudo apt install -y fish git sudo curl build-essential
sudo chsh -s /usr/bin/fish $U

# Install linuxbrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# Update Homebrew
brew update

# Install brews
brew install \
    git \
    go \
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
~/go/bin/viaduct ssh
~/go/bin/viaduct tmux
~/go/bin/viaduct vim

# Fonts are special, we copy those
#cp fonts/* ~/Library/Fonts/
