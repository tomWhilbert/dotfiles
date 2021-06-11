#!/bin/bash
#* Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#* Initialization code that may require console input (password prompts, [y/n]
#* confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi                             

#* Enivronment Variables 

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$HOME/bin/Scripts:$HOME/bin/Scripts/misc:/home/tom/.cargo/bin"
export RCLONE_PASSWORD_COMMAND="pass rclone"    #* See https://rclone.org/docs/#configuration-encryption
export BAT_THEME="Dracula"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

autoload -Uz compinit && compinit

#* Aliases, Themes and plugins
#* Original Method: Used .plugins cloned from git repos. Now they are installed via AUR, no walk-pull needed.

source $ZDOTDIR/z.plugin.zsh  #* copied from omz
source $ZDOTDIR/directories.zsh #* copied from omz
source $ZDOTDIR/.zshrc_aliases
source $ZDOTDIR/.zshrc_functions
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme #* Installed via Yay
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/site-functions  #* sources the completion functions


#* History
#[ -z "$HISTFILE" ] && HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

#* Completions
setopt prompt_subst
setopt auto_cd
setopt dot_glob  #*allows for ** globs
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

#* To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* zsh bindkeys
bindkey -e  #* Sets line edit behavior to emacs (ctrl+e beginning of line etc.)
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3~" delete-char
