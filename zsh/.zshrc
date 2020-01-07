#!/usr/bin/env zsh

[[ -f ~/.vars           ]] && . ~/.vars
[[ -f ~/.zsh_general    ]] && . ~/.zsh_general
[[ -f ~/.zsh_plugins    ]] && . ~/.zsh_plugins
[[ -f ~/.zsh_theme      ]] && . ~/.zsh_theme
[[ -f $ZSH/oh-my-zsh.sh ]] && . $ZSH/oh-my-zsh.sh
[[ -f ~/.aliases        ]] && . ~/.aliases
[[ -f ~/.grep_color     ]] && . ~/.grep_color
[[ -f ~/.keys           ]] && . ~/.keys
[[ -f ~/.nwd/preexec.sh ]] && . ~/.nwd/preexec.sh
[[ -f ~/.zsh_start      ]] && . ~/.zsh_start
