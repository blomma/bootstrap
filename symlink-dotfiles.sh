go get -u github.com/blomma/viaduct

git clone --recursive https://github.com/blomma/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

for location in {fish,git,mc,omf,ssh,tmux,vim} ; do
    ~/go/bin/viaduct "$location"
done
