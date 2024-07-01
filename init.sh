# update
sudo pacman -Su

# mandoc -- man pages
sudo pacman -S mandoc

# install homebrew -- my preferred package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/joel/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo pacman -S base-devel

# git -- version control (only if not installed)
# sudo pacman -S git # pacman
# brew install git # brew

# gcc -- c compiler
brew install gcc

# llvm -- compiler framework
brew install llvm

# nim -- nim language
brew install nim

# nodejs -- javascript
brew install node@20

# rustup -- rust language
brew install rustup
rustup-init
. "$HOME/.cargo/env"

# yq -- yaml, json, xml processor
brew install yq

# tmux -- terminal multiplexer
brew install tmux

# tpm -- tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# neovim -- editor
brew install neovim

# bat -- cat with syntax highlighting
brew install bat

# eza -- ls replacement
brew install eza

# lazygit -- git client
brew install lazygit

# delta -- diff tool
brew install git-delta

# fzf -- fuzzy finder
brew install fzf

# yazi -- file manager
brew install yazi

# zoxide -- cd replacement
brew install zoxide

# fd -- find files
brew install fd

# ripgrep -- grep replacement
brew install ripgrep

# stow -- symlink manager
brew install stow

# starship -- shell prompt
brew install starship

# zsh-syntax-highlighting -- syntax highlighting for zsh
brew install zsh-syntax-highlighting

# zsh-autosuggestions -- suggestions for zsh
brew install zsh-autosuggestions

# termium -- codeium autocomplete for shell
curl -L https://github.com/Exafunction/codeium/releases/download/termium-v0.2.0/install.sh | bash

# pipes.sh -- animated pipes terminal screensaver
brew install pipes-sh

# btop++ -- command line task manager
brew install btop

# spotify-tui -- terminal spotify client
cargo install spotify-tui

# thefuck -- corrects command mistakes
brew install thefuck

# gh -- github cli
brew install gh

# git-lfs -- git large file storage
brew install git-lfs
git lfs install
git lfs install --system

# termium authentication
termium auth
termium shell-hook install

echo "To use my config files, you can execute config.sh.
To build nitch execute:
  cd ~/.config/nitch
  nimble build

IMPORTANT: before executing config.sh, make sure all configuration files in $HOME are deleted."

exec zsh

