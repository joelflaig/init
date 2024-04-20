# sudo apt update -y && sudo apt upgrade -y
sudo pacman -Su

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# empty ~
cd ~
cd ..
rm -rf joel
mkdir joel
cd joel

git clone 'https://github.com/joelflaig/dotfiles.git'
cd dotfiles
stow .
exec bash

