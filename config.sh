cd ~
sudo rm *
git clone https://github.com/joelflaig/dotfiles.git ~/dotfiles
cd dotfiles
mkdir .tmux
cd .tmux
mkdir plugins
git clone https://github.com/tmux-plugins/tpm tpm
stow .

# build nitch
cd ~/.config/nitch
nimble build

