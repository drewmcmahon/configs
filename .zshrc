# Prompt
autoload -U promptinit; promptinit
prompt pure
PURE_PROMPT_SYMBOL='>'

# Case insensitive autocomplete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Personal Aliases
projDir="/home/drew/projects/homepage/"
alias lw1="i3-msg 'workspace2; exec firefox'"
alias lw2="i3-msg 'workspace 1; exec i3-sensible-terminal -cd $projDir; exec i3-sensible-terminal -cd $projDir; workspace 2; exec firefox; workspace 1'"

# System Aliases
alias ll="ls -trlhA --color"
alias ls="pwd;ls --color"
alias ..="cd .."
alias fhere="find . -iname"
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps aux"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"
alias top="htop"

# Pacman aliases
alias pac="sudo /usr/bin/pacman -S" # default action - install one or more packages
alias pacu="sudo /usr/bin/pacman -Syu" # [u]pdate - upgrade all packages to newest versions
alias pacr="sudo /usr/bin/pacman -Rns" # [r]emove - uninstall one or more packages
alias pacs="sudo /usr/bin/pacman -Ss" # [s]earch - search for a package using one or more keywords
alias paci="sudo /usr/bin/pacman -Si" # [i]info - show information about a package
alias paclo="sudo /usr/bin/pacman -Qdt" # [l]ist [o]rphans - list all packages which are orphaned
alias pacc="sudo /usr/bin/pacman -Scc" # [c]lean cache - delete all not currently install package files
alias paclf="sudo /usr/bin/pacman -Ql" # [l]ist [f]iles - list all files installed bu a given package


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/drew/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# init nvm for node versions
source /usr/share/nvm/init-nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
