U=$(whoami)

sudo dnf -y install util-linux-user fish git go
sudo chsh -s /bin/fish $U

# Set standard settings
source 'symlink-dotfiles.sh'

curl -L https://get.oh-my.fish | fish
