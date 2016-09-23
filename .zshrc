###############################################################################
# Autocomplete / ls
###############################################################################

# Nice colours
autoload -Uz colors && colors

# Both BSD and Linux variants required for ZSH and LS respectively
# http://geoff.greer.fm/lscolors/
export LSCOLORS="ExFxCxBxGaegxdabagacad"
export LS_COLORS='di=1;34:ln=1;35:so=1;32:pi=1;31:ex=1;36;40:bd=34;46:cd=0;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# Enable ls colors
ls --color -d . &>/dev/null 2>&1 && alias ls='ls -F --color=tty' || alias ls='ls -GF'
# More extensive tab completion
autoload -U compinit
compinit

# Complete the bit to the left of cursor if cursor is in middle of word
bindkey '^i' expand-or-complete-prefix

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word  # tab completion from both ends
setopt always_to_end
setopt auto_param_slash

zstyle ':completion:*:*:*:*:*' menu select

# Case insensitive (all), partial-word and substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# Zsh to use the same colors as ls
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Colours in completions
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# Better globs (eg. **/*.txt to find all txt files)
setopt extendedglob
unsetopt caseglob

###############################################################################
# History
###############################################################################

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory # share between all open shells
setopt extendedhistory

###############################################################################
# Vim mode
###############################################################################

# Turn on vim mode
bindkey -v

# Nice history search with vim keys
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

# Change prompt on vim mode
function zle-line-init zle-keymap-select {
    VIM_NORMAL="%{$fg_bold[cyan]%}${STATUS_TOKEN}"
    VIM_INSERT="${RET_STATUS}${STATUS_TOKEN}"
    VIM_PROMPT="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/$VIM_INSERT}"
    PROMPT="${VIM_PROMPT}%{$reset_color%} ${PROMPT_DIR_GIT}"
    zle reset-prompt
}
# Attach vim functions
zle -N zle-line-init
zle -N zle-keymap-select

###############################################################################
# Git
###############################################################################

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd() { vcs_info }

setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats "%b " # Just put branch name in msg_0

# Git status
function git_prompt_info() {
    st=$(git status 2> /dev/null | tail -n 1)
    if [[ $st == "nothing to commit, working directory clean" ]];
        then echo "%{$fg_bold[green]%}$vcs_info_msg_0_%{$reset_color%}"
        else echo "%{$fg_bold[red]%}$vcs_info_msg_0_%{$reset_color%}"
    fi
}

###############################################################################
# Prompt
###############################################################################

# Return status
RET_STATUS="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%}%s)"
# Token to display return/vim status
STATUS_TOKEN="λ"
# Current directory
CURRENT_DIR="%{$fg_bold[cyan]%}%c"
# Default prompt (after token which is set by vim functions)
PROMPT_DIR_GIT='${CURRENT_DIR} $(git_prompt_info)%{$reset_color%}'
PROMPT=$PROMPT_DIR_GIT

###############################################################################
# Misc
###############################################################################

# Display CPU usage on commands running for longer than 10s
REPORTTIME=10
