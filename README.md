# Initialization Script
This may not work as script.
I recommend executing the commands and following possible on-screen instructions

```bash
# acquire admin privileges
sudo su

# update
pacman -Su

# zsh -- shell environment
brew install zsh
chsh -s $(which zsh)

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

# git -- version control
brew install git

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

# gh -- github cli
brew install gh

# configure dotfiles
cd ~
git clone https://github.com/joelflaig/dotfiles.git ~/dotfiles
stow .

# nitch
cd ~/.config/nitch
nimble build

```
