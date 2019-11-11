# New Setup
#zsh 
https://github.com/tomwhilbert/dotfiles

Refer to this doc and the Bear note "ZSH -  Setup"

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
15. ** PREFERED over RUBY method ** alternate to the ruby version:  https://github.com/Peltoche/lsd *** 
16. **add to .zshrc_aliases** alias ls='lsd' and remove the `G` from the ll = ls -lahG

17. 11/9/19: trying out FSH @ https://github.com/zdharma/fast-syntax-highlighting 
	Install notes:
	Clone the Repository (put in the same `scripts` directory as the other plugins)
		git clone https://github.com/zdharma/fast-syntax-highlighting ~/path/to/fsh
	And add the following to your zshrc file. (comment out the current zsh syntax highlighitng)
		source ~/path/to/fsh/fast-syntax-highlighting.plugin.zsh


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
