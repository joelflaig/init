# update
sudo pacman -Su

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

# nim -- nim language
brew install nim

# tmux -- terminal multiplexer
brew install tmux

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

echo "To use my config files, you can do this:
  cd ~
  rm -rf init
  sudo rm *
  git clone https://github.com/joelflaig/dotfiles.git ~/dotfiles
  cd dotfiles
  stow .

for nitch run:
  cd ~/.config/nitch
  nimble build

"

exec zsh

