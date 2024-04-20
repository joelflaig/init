# sudo apt update -y && sudo apt upgrade -y
sudo pacman -Su

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo pacman -S base-devel

# only if git is not already installed
# brew install git
brew install neovim
brew install eza
brew install bat
brew install stow
brew install zoxide
brew install fzf
brew install tmux
brew install lazygit
brew install starship
brew install gh

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo su

# empty ~
cd ~
cd ..
rm -rf joel
mkdir joel
cd joel

# config using stow
git clone 'https://github.com/joelflaig/dotfiles.git'
cd dotfiles
stow .
exec bash

# gh config
cd .config
gh auth login
git clone 'https://github.com/joelflaig/gh.git'

exit

