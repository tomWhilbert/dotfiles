# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space

#* Enivronment Variables 
export PATH="$PATH:$HOME/bin:/home/tom/bin/scripts/walk-pull"
export RCLONE_PASSWORD_COMMAND="pass rclone/config"  
export BAT_THEME="Monokai Extended Bright"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export PLUGINS=/home/tom/bin/plugins
export OMZ=/home/tom/bin/plugins/ohmyzsh
export DOTS=/home/tom/.dotfiles

#* Aliases, Themes and plugins - return to git clone and scripted update method

source $DOTS/.zshrc_aliases
source $DOTS/.zshrc_functions
source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh
source $OMZ/plugins/z/z.plugin.zsh    #* source from omz cloned directory
source $OMZ/lib/directories.zsh #* source from omz cloned directory
source $OMZ/plugins/firewalld/firewalld.plugin.zsh



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* zsh bindkeys
bindkey -e  #* Sets line edit behavior to emacs (ctrl+e beginning of line etc.)
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[3~" delete-char
