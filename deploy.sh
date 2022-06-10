#!/bin/bash

#設置したい設定ファイル
dotfiles=(.zshrc )

#dotfilesに記入した設定ファイルのシンボリックリンクをホームディレクトリ直下に作成する

for file in "${dotfiles[@]}"; do
	ln -sv $file ~/
done
