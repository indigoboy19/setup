#!/bin/zsh

# Sources
## Aliases
source "${XDG_CONFIG_HOME}/shell/aliases"
## Functions
for FILES in $HOME/.local/bin/functions/*; do source $FILES; done
## Plugins
source ~/.XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.XDG_CONFIG_HOME/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.XDG_CONFIG_HOME/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# Customization
# Options
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.XDG_CACHE_HOME/zsh/history

unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

autoload -U compinit 
compinit

bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

zstyle ':completion:*' menu select

## History substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

ZSH_AUTOSUGGEST_STRATEGY=(history completion)