sudo dnf install util-linux-user fish git
sudo chsh -s /bin/fish blomma

# Set standard settings
source 'symlink-dotfiles.sh'

curl -L https://get.oh-my.fish | fish
omf install
