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

# Nice colours
autoload -Uz colors && colors

# Return status
RET_STATUS="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%}%s)"
# Token to display return/vim status
STATUS_TOKEN="λ"
# Current directory
CURRENT_DIR="%{$fg_bold[cyan]%}%c"
# Default prompt (after token which is set by vim functions)
PROMPT_DIR_GIT='${CURRENT_DIR} $(git_prompt_info)%{$reset_color%}'
PROMPT=$PROMPT_DIR_GIT
