# update
sudo pacman -Su

# install homebrew -- my preferred package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo pacman -S base-devel

# git -- version control (only if not installed)
# sudo pacman -S git # pacman
# brew install git # brew

# gcc -- c compiler
sudo brew install gcc

# nim -- nim language
sudo brew install nim

# tmux -- terminal multiplexer
sudo brew install tmux

# neovim -- editor
sudo brew install neovim

# bat -- cat with syntax highlighting
sudo brew install bat

# eza -- ls replacement
sudo brew install eza

# lazygit -- git client
sudo brew install lazygit

# delta -- diff tool
sudo brew install git-delta

# fzf -- fuzzy finder
sudo brew install fzf

# ripgrep -- grep replacement
sudo brew install ripgrep

# stow -- symlink manager
sudo brew install stow

# starship -- shell prompt
sudo brew install starship

# pipes.sh -- animated pipes terminal screensaver
sudo brew install pipes-sh

# thefuck -- corrects command mistakes
sudo brew install thefuck

# gh -- github cli
sudo brew install gh

# configure dotfiles
cd ~
sudo rm *
git clone https://github.com/joelflaig/dotfiles.git ~/dotfiles
cd dotfiles
stow .

# nitch
cd ~/.config/nitch
nimble build

exec zsh

