# Get rid of unmatch error messages
unset nomatch
unsetopt no_match

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=/opt/cxoffice/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
export PATH=$HOME/.bin:$PATH
export PATH="/opt/ActiveTcl-8.6/bin:$PATH"

# default editor
export EDITOR=nvim

# colors
export TERM="screen-256color"

export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

unalias k 2>/dev/null

plugins=(
  colored-man-pages
  git
  k
  fzf-zsh
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# source /etc/profile.d/rvm.sh
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# theme configuration
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{black} $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') %F{black}"
POWERLEVEL9K_DIR_HOME_BACKGROUND='033'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='033'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='033'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'

POWERLEVEL9K_CUSTOM_MACHINE_NAME="echo host"
POWERLEVEL9K_CUSTOM_MACHINE_NAME_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_MACHINE_NAME_FOREGROUND="red"

POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_SHOW_CHANGESET=false
POWERLEVEL9K_VCS_BACKGROUND='040'
POWERLEVEL9K_VCS_FOREGROUND="black"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(newline custom_machine_name dir_writable dir nodeenv virtualenv anaconda pyenv chruby rbenv aws_eb_env docker_machine vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time history time)

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[cursor]='bold'

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

alias k='k -h'
alias ccat=/bin/cat
alias cat='pygmentize -O style=monokai -f console256 -g'
alias fzfa="find * -type f | fzf"
alias vim=nvim
alias vi=nvim
alias editor=nvim
alias calc='gnome-calculator'
alias tailf='tail -f'
alias exa='exa -l'

export AUTOMATED_TESTS_DIR=~/automated_tests
export VM_INSTALL_DIR=~/vm
export TSP_FOLDER=~/vm
alias installTsp='sudo python $AUTOMATED_TESTS_DIR/acs_tools/mps_tools/vm_scripts/installTsp.py'
alias robot='sudo $AUTOMATED_TESTS_DIR/venv/bin/robot'
alias robot_TSP='robot --variable TSP_FOLDER:$VM_INSTALL_DIR'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Variables definitions.
if [ -f ~/.bash_vars ]; then
    . ~/.bash_vars
fi

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

## GREP COLORS

# Reset
grep_color_Color_Off="0"       # Text Reset

# Regular Colors
grep_color_Black="0;30"        # Black
grep_color_Red="0;31"          # Red
grep_color_Green="0;32"        # Green
grep_color_Yellow="0;33"       # Yellow
grep_color_Blue="0;34"         # Blue
grep_color_Purple="0;35"       # Purple
grep_color_Cyan="0;36"         # Cyan
grep_color_White="0;37"        # White

# Bold
grep_color_BBlack="1;30"       # Black
grep_color_BRed="1;31"         # Red
grep_color_BGreen="1;32"       # Green
grep_color_BYellow="1;33"      # Yellow
grep_color_BBlue="1;34"        # Blue
grep_color_BPurple="1;35"      # Purple
grep_color_BCyan="1;36"        # Cyan
grep_color_BWhite="1;37"       # White

# Underline
grep_color_UBlack="4;30"       # Black
grep_color_URed="4;31"         # Red
grep_color_UGreen="4;32"       # Green
grep_color_UYellow="4;33"      # Yellow
grep_color_UBlue="4;34"        # Blue
grep_color_UPurple="4;35"      # Purple
grep_color_UCyan="4;36"        # Cyan
grep_color_UWhite="4;37"       # White

# Background
grep_color_On_Black="40"       # Black
grep_color_On_Red="41"         # Red
grep_color_On_Green="42"       # Green
grep_color_On_Yellow="43"      # Yellow
grep_color_On_Blue="44"        # Blue
grep_color_On_Purple="45"      # Purple
grep_color_On_Cyan="46"        # Cyan
grep_color_On_White="47"       # White

# High Intensty
grep_color_IBlack="0;90"       # Black
grep_color_IRed="0;91"         # Red
grep_color_IGreen="0;92"       # Green
grep_color_IYellow="0;93"      # Yellow
grep_color_IBlue="0;94"        # Blue
grep_color_IPurple="0;95"      # Purple
grep_color_ICyan="0;96"        # Cyan
grep_color_IWhite="0;97"       # White

# Bold High Intensty
grep_color_BIBlack="1;90"      # Black
grep_color_BIRed="1;91"        # Red
grep_color_BIGreen="1;92"      # Green
grep_color_BIYellow="1;93"     # Yellow
grep_color_BIBlue="1;94"       # Blue
grep_color_BIPurple="1;95"     # Purple
grep_color_BICyan="1;96"       # Cyan
grep_color_BIWhite="1;97"      # White

# High Intensty backgrounds
grep_color_On_IBlack="0;100"   # Black
grep_color_On_IRed="0;101"     # Red
grep_color_On_IGreen="0;102"   # Green
grep_color_On_IYellow="0;103"  # Yellow
grep_color_On_IBlue="0;104"    # Blue
grep_color_On_IPurple="10;95"  # Purple
grep_color_On_ICyan="0;106"    # Cyan
grep_color_On_IWhite="0;107"   # White


# Reset
alias grep_Color_Off='GREP_COLOR=$grep_color_Color_Off'

# Regular Colors
alias grep_Black='GREP_COLOR=$grep_color_Black'
alias grep_Red='GREP_COLOR=$grep_color_Red'
alias grep_Green='GREP_COLOR=$grep_color_Green'
alias grep_Yellow='GREP_COLOR=$grep_color_Yellow'
alias grep_Blue='GREP_COLOR=$grep_color_Blue'
alias grep_Purple='GREP_COLOR=$grep_color_Purple'
alias grep_Cyan='GREP_COLOR=$grep_color_Cyan'
alias grep_White='GREP_COLOR=$grep_color_White'

# Bold
alias grep_BBlack='GREP_COLOR=$grep_color_BBlack'
alias grep_BRed='GREP_COLOR=$grep_color_BRed'
alias grep_BGreen='GREP_COLOR=$grep_color_BGreen'
alias grep_BYellow='GREP_COLOR=$grep_color_BYellow'
alias grep_BBlue='GREP_COLOR=$grep_color_BBlue'
alias grep_BPurple='GREP_COLOR=$grep_color_BPurple'
alias grep_BCyan='GREP_COLOR=$grep_color_BCyan'
alias grep_BWhite='GREP_COLOR=$grep_color_BWhite'

# Underline
alias grep_UBlack='GREP_COLOR=$grep_color_UBlack'
alias grep_URed='GREP_COLOR=$grep_color_URed'
alias grep_UGreen='GREP_COLOR=$grep_color_UGreen'
alias grep_UYellow='GREP_COLOR=$grep_color_UYellow'
alias grep_UBlue='GREP_COLOR=$grep_color_UBlue'
alias grep_UPurple='GREP_COLOR=$grep_color_UPurple'
alias grep_UCyan='GREP_COLOR=$grep_color_UCyan'
alias grep_UWhite='GREP_COLOR=$grep_color_UWhite'

# Background
alias grep_On_Black='GREP_COLOR=$grep_color_On_Black'
alias grep_On_Red='GREP_COLOR=$grep_color_On_Red'
alias grep_On_Green='GREP_COLOR=$grep_color_On_Green'
alias grep_On_Yellow='GREP_COLOR=$grep_color_On_Yellow'
alias grep_On_Blue='GREP_COLOR=$grep_color_On_Blue'
alias grep_On_Purple='GREP_COLOR=$grep_color_On_Purple'
alias grep_On_Cyan='GREP_COLOR=$grep_color_On_Cyan'
alias grep_On_White='GREP_COLOR=$grep_color_On_White'

# High Intensty
alias grep_IBlack='GREP_COLOR=$grep_color_IBlack'
alias grep_IRed='GREP_COLOR=$grep_color_IRed'
alias grep_IGreen='GREP_COLOR=$grep_color_IGreen'
alias grep_IYellow='GREP_COLOR=$grep_color_IYellow'
alias grep_IBlue='GREP_COLOR=$grep_color_IBlue'
alias grep_IPurple='GREP_COLOR=$grep_color_IPurple'
alias grep_ICyan='GREP_COLOR=$grep_color_ICyan'
alias grep_IWhite='GREP_COLOR=$grep_color_IWhite'

# Bold High Intensty
alias grep_BIBlack='GREP_COLOR=$grep_color_BIBlack'
alias grep_BIRed='GREP_COLOR=$grep_color_BIRed'
alias grep_BIGreen='GREP_COLOR=$grep_color_BIGreen'
alias grep_BIYellow='GREP_COLOR=$grep_color_BIYellow'
alias grep_BIBlue='GREP_COLOR=$grep_color_BIBlue'
alias grep_BIPurple='GREP_COLOR=$grep_color_BIPurple'
alias grep_BICyan='GREP_COLOR=$grep_color_BICyan'
alias grep_BIWhite='GREP_COLOR=$grep_color_BIWhite'

# High Intensty backgrounds
alias grep_On_IBlack='GREP_COLOR=$grep_color_On_IBlack'
alias grep_On_IRed='GREP_COLOR=$grep_color_On_IRed'
alias grep_On_IGreen='GREP_COLOR=$grep_color_On_IGreen'
alias grep_On_IYellow='GREP_COLOR=$grep_color_On_IYellow'
alias grep_On_IBlue='GREP_COLOR=$grep_color_On_IBlue'
alias grep_On_IPurple='GREP_COLOR=$grep_color_On_IPurple'
alias grep_On_ICyan='GREP_COLOR=$grep_color_On_ICyan'
alias grep_On_IWhite='GREP_COLOR=$grep_color_On_IWhite'

##

grephl()
{
  grep --color=always -E "$1|?"
}


# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

# bind keys
# Ctrl-o opens zsh at the current location, and on exit, cd into ranger's last location.
ranger-cd() {
  tempfile=$(mktemp)
  ranger --choosedir="$tempfile" "${@:-$(pwd)}" < $TTY
  test -f "$tempfile" &&
  if [ "$(/bin/cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
    cd -- "$(/bin/cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
  # hacky way of transferring over previous command and updating the screen
  VISUAL=true zle edit-command-line
}
zle -N ranger-cd
bindkey '^o' ranger-cd

# Ctrl-f opens fzf and buffers its output to the shell input
open-fzf() {
  LBUFFER+=$(fzf < $TTY)
}
zle -N open-fzf
bindkey '^f' open-fzf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Theme
  # /bin/echo -e "
  # \e]P0282a2e
  # \e]P1a54242
  # \e]P28c9440
  # \e]P3de935f
  # \e]P45f819d
  # \e]P585678f
  # \e]P65e8d87
  # \e]P7707880
  # \e]P8373b41
  # \e]P9cc6666
  # \e]PAb5bd68
  # \e]PBf0c674
  # \e]PC81a2be
  # \e]PDb294bb
  # \e]PE8abeb7
  # \e]PFc5c8c6
  # "
  # # get rid of artifacts
  # clear

# virsh to virt-manager matching
export LIBVIRT_DEFAULT_URI="qemu:///system"
export SPICE_NOGRAB=1

# if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
#    exec startx
#el
if [ "$TMUX" = "" ]; then
    tmux new-session -A -n monitor -s Dashboard ; exit
fi

[[ -f ~/.nwd/preexec.sh ]] && source ~/.nwd/preexec.sh
