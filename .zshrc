if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=blue,bold,underline'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=magenta,bold'

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

if [[ -f ~/.dircolors ]] ; then
    eval $(dircolors -b ~/.dircolors)     
elif [[ -f /etc/DIR_COLORS ]] ; then
    eval $(dircolors -b /etc/DIR_COLORS)
fi


alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $HOME/.config/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle agkozak/zsh-z
antigen apply
