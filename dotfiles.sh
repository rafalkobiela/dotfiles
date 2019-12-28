#!/bin/bash

apt-get update && apt-get upgrade
apt-get autoremove
apt-get install curl

#zsh
apt-get install zsh
# set zsh as default shell
chsh -s $(which zsh)
#zsh addons
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"last
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
sed -i "s/%c/%d/g" ~/.oh-my-zsh/themes/robbyrussell.zsh-theme
sed -i "s/^plugins=.*$/plugins=(git history history-substring-search dircycle dirhistory fasd vi-mode last-working-dir zsh-autosuggestions zsh-syntax-highlighting)/g" ~/.zshrc
sudo apt-get install fonts-powerline
sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc

#make zsh history bigger
echo "export HISTSIZE=999999999" >> ~/.zshrc
echo "export SAVEHIST=$HISTSIZE" >> ~/.zshrc

#fzf (ctrl-R ctrl-T)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#vim
apt-get install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh
echo ":set number" >> ~/.vimrc

# tmux
cd
apt-get install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

#pip3
sudo apt install python3-venv python3-pip

#venv
sudo pip3 install virtualenv

#tig
apt-get install tig

