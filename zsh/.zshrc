#!/usr/bin/env zsh

source_file()
{
    [[ -f "$1" ]] && . "$1"
}

source_file ~/.vars
source_file ~/.gitlabber
source_file ~/.zsh_general
source_file ~/.zsh_plugins
source_file ~/.zsh_theme
source_file $ZSH/oh-my-zsh.sh
source_file ~/.aliases
source_file ~/.functions
source_file ~/.grep_color
source_file ~/.zsh_keys
source_file ~/.fzf.zsh
source_file ~/.nwd/preexec.sh
source_file ~/.zsh_pip_completion
source_file /etc/grc.zsh
source_file ~/.nix-profile/etc/profile.d/nix.sh # added by Nix installer
source_file ~/.zsh_start
