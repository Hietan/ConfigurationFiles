#!/bin/zsh

shell_dir=$(pwd)

# Zsh
ln -sf ${shell_dir}/Zsh/.zshrc ~
ln -sf ${shell_dir}/Zsh/.zprofile ~

# Oh My Zsh
ln -sf ${shell_dir}/OhMyZsh/hietan.zsh-theme ~/.oh-my-zsh/themes
