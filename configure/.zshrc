
export EDITOR=vim

alias ll='ls -ahtlr'
alias sudo='sudo '
alias vizsh="$EDITOR ~/.zshrc;. ~/.zshrc"
alias tmux='LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/tmux'
#alias mytmux='tmux a -t0'
alias mytmux='tmux list-sessions || tmux;tmux a -t0'

where git 1>/dev/null 2>&1 && alias st='git status'


PROMPT="%? %n@%m %~
%# "
HISTFILE="$HOME/.zsh_history"
setopt share_history
setopt hist_ignore_space

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

bindkey -e
setopt nobeep


# 色設定
export LSCOLORS=exfxcxdxbxegedabagacad

precmd() {
    if [ $? -eq 0 ]
    then
        PROMPT="%F{cyan}%n@%m:%~%f
%# "
    else
        PROMPT="%F{yellow}%? %n@%m:%~%f
%# "
    fi
}

export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

