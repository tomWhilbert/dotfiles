# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#* Add to PATH
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$HOME/.local/share:$PATH"

#* Exported Variables
export RCLONE_PASSWORD_COMMAND="security find-generic-password -a $USER -s rclone -w"

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

# Source paths for zsh plugins
DOTS=$HOME/.dotfiles
ZSH=$HOME/bin/plugins/ohmyzsh
PLUGINS=$HOME/bin/plugins
source $ZSH/lib/directories.zsh #* enables 'd' directory stack
source $ZSH/plugins/z/z.plugin.zsh
source $ZSH/plugins/taskwarrior/taskwarrior.plugin.zsh
source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source paths for aliases and functions
source $DOTS/.zshrc_aliases
source $DOTS/.zshrc_functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#* load ssh keys into the macOS ssh agent
ssh-add --apple-load-keychain > /dev/null 2>&1 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#* Pyenv Config
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


