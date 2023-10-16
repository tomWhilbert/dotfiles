# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# printf '\n%.0s' {1..100}
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#* Add to PATH
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
export PATH="$HOME/bin/scripts/:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
<<<<<<< HEAD
=======
export PATH="/opt/homebrew/sbin:$PATH"
>>>>>>> 6aa37bc5d4c7741c412c6f97d0de7c7b914245c0

#* Exported Variables
export RCLONE_PASSWORD_COMMAND="security find-generic-password -a $USER -s rclone -w"
# export RESTIC_PASSWORD="security find-generic-password -a $USER -s restic -w"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile    
HISTSIZE=50000
SAVEHIST=50000
setopt autocd beep extendedglob nomatch notify hist_ignore_dups hist_ignore_space inc_append_history_time sharehistory
bindkey -e #* use emacs mode for line navigation
# End of lines configured by zsh-newuser-install

#* Bindkey for line word jump
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

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
DOTS=$HOME/.dotfiles
ZSH=$HOME/bin/plugins/ohmyzsh
PLUGINS=$HOME/bin/plugins
source $ZSH/lib/directories.zsh #* enables 'd' directory stack
source $ZSH/plugins/z/z.plugin.zsh
source $ZSH/plugins/taskwarrior/taskwarrior.plugin.zsh
source $ZSH/plugins/pyenv/pyenv.plugin.zsh
source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $ZSH/plugins/fzf/fzf.plugin.zsh
source $ZSH/plugins/nmap/nmap.plugin.zsh

# Source paths for aliases and functions
source $DOTS/.zshrc_aliases
source $DOTS/.zshrc_functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#* load ssh keys into the macOS ssh agent
ssh-add --apple-load-keychain 2> /dev/null  

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
