# Install Homebrew (http://brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
brew update

# Install brews
brew install $(cat Brewfile|grep -v "#")

source 'symlink-dotfiles.sh'

curl -L https://get.oh-my.fish | fish
