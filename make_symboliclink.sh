#!/bin/zsh

shell_dir=$(pwd)

# Zsh
ln -sf ${shell_dir}/Zsh/.zshrc ~
ln -sf ${shell_dir}/Zsh/.zprofile ~

# Oh My Zsh
mkdir -p ~/.oh-my-zsh/themes
ln -sf ${shell_dir}/OhMyZsh/hietan.zsh-theme ~/.oh-my-zsh/themes

# Vim
ln -sf ${shell_dir}/Vim/.vimrc ~

# NeoVim
mkdir -p ~/.config/nvim
ln -sf ${shell_dir}/Vim/.vimrc ~/.config/nvim/init.vim
