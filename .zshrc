# zmodload zsh/zprof
# Enable zmodload at top and bottom to profile startup time

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# printf '\n%.0s' {1..100}
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#* Declare some path variables
DOTS=$HOME/.dotfiles
OMZ=$HOME/bin/plugins/ohmyzsh
PLUGINS=$HOME/bin/plugins

#* Add to PATH
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
export PATH="$HOME/bin/scripts/:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
# Created by `pipx` on 2024-04-09 15:09:26
export PATH="$PATH:/Users/tom/.local/bin"

#* Environment Variables
export RCLONE_PASSWORD_COMMAND="security find-generic-password -a $USER -s rclone -w"
export RESTIC_REPO=/Volumes/Restic_Backups/mbp14-tom-home
export RESTIC_PASSWORD=$(security find-generic-password -a $USER -s restic -w)
export BAT_THEME="gruvbox-dark"
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications caskroom=$HOME/Applications"

#* brew zsh completions init
 if type brew &>/dev/null
 then
   FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
   autoload -Uz compinit
   compinit
 fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile    
HISTSIZE=50000
SAVEHIST=50000
setopt autocd beep extendedglob nomatch notify inc_append_history_time sharehistory
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
bindkey -e #* use emacs mode
# End of lines configured by zsh-newuser-installd

#* Bindkey for line word jump
#* Tab Autocomplete
# bindkey '^I' autosuggest-accept

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

bindkey '^[^[[A' history-substring-search-up
bindkey '^[^[[B' history-substring-search-down

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit 
# End of lines added by compinstall

#* Pyenv Config (put before ohmyzsh plugin to avoid error)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Source paths for zsh plugins
source $OMZ/lib/directories.zsh #* enables 'd' directory stack
source $OMZ/plugins/z/z.plugin.zsh
source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh

#* load ssh keys into the macOS ssh agent
ssh-add --apple-load-keychain 2> /dev/null  

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* Source aliases and functions
source $DOTS/.zshrc_aliases
source $DOTS/.zshrc_functions


