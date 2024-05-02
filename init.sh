# acquire admin privileges
sudo su

# update
pacman -Su

# install homebrew -- my preferred package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
pacman -S base-devel

# git -- version control (only if not installed)
# sudo pacman -S git # pacman
# brew install git # brew

# gcc -- c compiler
brew install gcc

# nim -- nim language
brew install nim

# tmux -- terminal multiplexer
brew install tmux
tmux

# neovim
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

# ripgrep -- grep replacement
brew install ripgrep

# stow -- symlink manager
brew install stow

# starship -- shell prompt
brew install starship

# pipes.sh -- animated pipes terminal screensaver
brew install pipes-sh

# thefuck -- corrects command mistakes
brew install thefuck

# gh -- github cli
brew install gh

# configure dotfiles
cd ~
rm *
git clone https://github.com/joelflaig/dotfiles.git ~/dotfiles
cd dotfiles
stow .

# nitch
cd ~/.config/nitch
nimble build

exec zsh

