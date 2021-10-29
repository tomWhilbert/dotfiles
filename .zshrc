# Path and Rclone config
export RCLONE_PASSWORD_COMMAND="security find-generic-password -a $USER -s rclone -w"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep extendedglob nomatch notify hist_ignore_dups hist_ignore_space
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/thomaswhilbert/.zshrc'
autoload -Uz compinit
compinit 
# End of lines added by compinstall

# Source paths for zsh plugins and theme
ZSH=$HOME/bin/plugins/ohmyzsh
PLUGINS=$HOME/bin/plugins
source $HOME/bin/powerlevel10k/powerlevel10k.zsh-theme
source $ZSH/lib/directories.zsh #* enables 'd' directory stack
source $ZSH/plugins/z/z.plugin.zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh

# Bindkey for substring search navigation
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Source paths for aliases and functions
source ~/.zshrc_aliases
source ~/.zshrc_functions

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* ssh-add -A > /dev/null 2>&1 


