# zmodload zsh/zprof
# Enable zmodload at tope and bottom to profile startup time

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
export PATH="/opt/homebrew/opt/uutils-coreutils/libexec/uubin:$PATH"
# export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
export PATH="$HOME/bin/scripts/:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/bin/oh-my-bash:$PATH"

#* Environment Variables
export RCLONE_PASSWORD_COMMAND="security find-generic-password -a $USER -s rclone -w"
export RESTIC_PASSWORD="security find-generic-password -a $USER -s restic -w"
export BAT_THEME="gruvbox-dark"

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
bindkey -e #* use emacs mode for line navigation
# End of lines configured by zsh-newuser-install

#* Bindkey for line word jump
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
source $OMZ/plugins/nmap/nmap.plugin.zsh
source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh


# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#* load ssh keys into the macOS ssh agent
ssh-add --apple-load-keychain 2> /dev/null  

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* Source aliases and functions
source $DOTS/.zshrc_aliases
source $DOTS/.zshrc_functions



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tom/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tom/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tom/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tom/bin/google-cloud-sdk/completion.zsh.inc'; fi

# zprof