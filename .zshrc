#!/bin/bash
#* Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#* Initialization code that may require console input (password prompts, [y/n]
#* confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$HOME/bin/Scripts:/home/tom/.cargo/bin"
export RCLONE_PASSWORD_COMMAND="pass rclone"    #* See https://rclone.org/docs/#configuration-encryption
export BAT_THEME="Dracula"


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

#* Add git completions
# zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
# fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

#* Aliases, Themes and plugins

ZSH=~/bin/ohmyzsh/
#ZSH_CUSTOM=$ZSH/custom
source $ZSH/plugins/z/z.plugin.zsh    #* Frecency plugin
source $ZSH/lib/directories.zsh       #* Adds the 'd' show recent directories

setopt prompt_subst

#* Deviation from previous locations - On Linux, plugins are installed via AUR so no walk-pull needed...
source ~/.zshrc_aliases
source ~/.zshrc_functions
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme #* Installed via Yay
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/site-functions  #* sources the completion functions
source /usr/share/zsh/vendor-completions/_rclone  

#* To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* zsh bindkeys
bindkey '`' autosuggest-accept
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey "^[[3~" delete-char

