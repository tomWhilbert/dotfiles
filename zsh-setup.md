# New Setup
#zsh 

1. git checkout macOS or linux into local repo

2. clone OMZ: [OMZ repo](https://github.com/robbyrussell/oh-my-zsh)
	https://github.com/robbyrussell/oh-my-zsh.git

3. clone pk10: [p10k repo](https://github.com/romkatv/powerlevel10k)
	https://github.com/romkatv/powerlevel10k.git

4. Make a `scripts` directory and add these repos:

5. git clone https://github.com/zsh-users/zsh-completions.git
6. git clone https://github.com/zsh-users/zsh-history-substring-search.git
7. git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
8. add MesloLGS NF Regular font:
https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf
9. set the font in your terminal application
10. ls /etc/shells
11. confirm /usr/bin/zsh is there
12. which zsh then 
13. set zsh as default shell `chsh -s /usr/bin/zsh`
14. ** fedora `sudo dnf install zsh`
****Added the ruby colors as listed here: https://fedoramagazine.org/tuning-your-bash-or-zsh-shell-in-workstation-and-silverblue/
`sudo gem install colorls`

**add to .zshrc_aliases**

alias ll='colorls -lA --sd --gs --group-directories-first'
alias ls='colorls --group-directories-first'

** alternate to the ruby version:  https://github.com/Peltoche/lsd *** 
<!-- #!/bin/bash 
script draft 1.0

**add clone steps of dotfiles repo**

cd ~/
git clone https://github.com/robbyrussell/oh-my-zsh
git clone https://github.com/romkatv/powerlevel10k
mkdir scripts && cd scripts
git clone https://github.com/zsh-users/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
 -->
