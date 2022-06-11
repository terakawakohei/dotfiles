#!/bin/zsh

# add submodule
git submodule update --init --recursive

# prezto導入
#.zpreztoの位置に注意(dotfiles内にある)
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/dotfiles/.zprezto/runcoms/^README.md(.N); do
 ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# symlink dotfiles
# $HOMEにシンボリックリンクを貼る
ln -sf ~/dotfiles/.zprezto ~/.zprezto
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/dotfiles/.vim ~/.vim

# change shell
chsh -s $(which zsh)

#powerlevel10kの設定ファイルを$HOMEにコピー
cp ~/dotfiles/zsh/.p10k.zsh ~/

source ~/dotfiles/.zshrc
source ~/dotfiles/.zpreztorc


