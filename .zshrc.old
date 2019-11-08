# OSX antigen file
# POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
# antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen apply
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh 

```
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
```
#/usr/share/zsh-antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Load the theme
#antigen theme refined
antigen theme romkatv/powerlevel10k
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle docker
#antigen bundle compleat
#antigen bundle git-extras
#antigen bundle git-flow
#antigen bundle npm
antigen bundle osx
#antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# NVM bundle
# export NVM_LAZY_LOAD=true
# antigen bundle lukechilds/zsh-nvm
# antigen bundle Sparragus/zsh-auto-nvm-use
# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
# Tell Antigen that you're done.
antigen apply
# Setup zsh-autosuggestions
#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# # Load custom aliases
# [[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word
. ~/.zshrc_aliases

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:
# /Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/lib:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/autojump:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z:/Users/thomaswhilbert/.antigen/bundles/zsh-users/zsh-syntax-highlighting:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/themes:/Users/thomaswhilbert/.antigen/bundles/bhilburn/powerlevel9k:/Users/thomaswhilbert/.antigen/bundles/denysdovhan/spaceship-zsh-theme:/Users/thomaswhilbert/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/bin/phpunit:$PATH"
# export PATH="/usr/local/opt/python/libexec/bin/:$PATH"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export PATH="/usr/local/sbin:$PATH"
# source ~/powerlevel10k/powerlevel10k.zsh-theme
filepath() { for f in "$@"; do echo ${f}(:A); done }

# You can customize your prompt by editing ~/.p10k.zsh.
# To run Powerlevel10k configuration wizard, type 'p9k_configure'.
source ~/.p10k.zsh
