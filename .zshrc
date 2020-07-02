#!/bin/bash
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#export PATH="/usr/local/bin:$PATH"
#export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:"/home/tom/Scripts/Walk-and-Pull"
export EDITOR=/usr/bin/vim
export RCLONE_CONFIG_PASS=%jMrsNt2ndtJ^d
#export RCLONE_CONFIG_PASS="pass rclone-config"
export RCLONE_PASSWORD_COMMAND="pass rclone-config"

#* History
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

#* Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

#* Completions
setopt dot_glob  #allows for ** globs
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

#* added git completions

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

#* Aliases, Themes and plugins
#* source OMZ
ZSH=~/.oh-my-zsh
#ZSH_CUSTOM=$ZSH/custom
source $ZSH/plugins/z/z.plugin.zsh
source $ZSH/lib/directories.zsh  # Adds the 'd' show recent directories
#source $ZSH/plugins/systemd/systemd.plugin.zsh

# fpath+=$ZSH/plugins/ dir path not needed....
# git -C $ZSH pull  ***Uncomment and source .zshrc to upate OMZ

setopt prompt_subst
source ~/.zshrc_aliases
source ~/.zshrc_functions

source ~/.plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh
source ~/.plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.powerlevel10k/powerlevel10k.zsh-theme

#* To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* zsh history substring search bindkeys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -e
bindkey '^R' history-incremental-search-backward

#* Test out keybindings see: https://wiki.archlinux.org/index.php/Zsh#Key_bindings

#* Set SSH Env Var
eval $(ssh-agent)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
