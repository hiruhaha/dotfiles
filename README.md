```sh
git clone --bare https://github.com/hiruhaha/dotfiles.git $HOME/.dotfiles
alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
df config --local status.showUntrackedFiles no

df checkout

cd ~
brew bundle install

# update Brewfile
brew bundle dump --force
```