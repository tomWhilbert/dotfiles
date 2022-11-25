#!/usr/bin/env zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

#* Add to PATH
export RCLONE_PASSWORD_COMMAND="security find-generic-password -a $USER -s rclone -w"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50000
SAVEHIST=50000
setopt autocd beep extendedglob nomatch notify hist_ignore_dups hist_ignore_space inc_append_history_time sharehistory
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/thomaswhilbert/.zshrc'
autoload -Uz compinit
compinit 
# End of lines added by compinstall

# Source paths for zsh plugins
ZSH=$HOME/bin/plugins/ohmyzsh
PLUGINS=$HOME/bin/plugins
source $ZSH/lib/directories.zsh #* enables 'd' directory stack
source $ZSH/plugins/z/z.plugin.zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source paths for aliases and functions
source ~/.dotfiles/.zshrc_aliases
source ~/.dotfiles/.zshrc_functions
source ~/bin/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

ssh-add --apple-load-keychain > /dev/null 2>&1 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#* Bat Command help function
# in your .bashrc/.zshrc/*rc

help() {
    "$@" --help 2>&1 | bathelp
}

#* CDPATH
export CDPATH=:$HOME:$HOME/bin/

#* eval "$(starship init zsh)"

