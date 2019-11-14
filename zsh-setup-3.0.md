#Install Instructinos assume 10.15++ (zsh default shell)#

1. Post Catalina or greater macOS install(Linux instructions are almost identical - if not will make alternate doc)
2. Install Homebrew 
3. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. `brew doctor`
5. `brew install zsh`
6. `brew cask install iterm2`
7. Launch iterm2
8. `which zsh` to confirm that `/usr/local/bin/zsh` brew version is installed
9. `sudo vim /etc/shells` and add `/usr/local/bin/zsh`
10.`chsh -s $(which zsh)`
11. Authenticate, then close and reopen `iterm2`.
    ***Clone and Create the necessary folders***  
12. oh-my-zsh: [OMZ repo](~https://github.com/robbyrussell/oh-my-zsh~)
  `git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh`
13. pk10: [p10k repo](~https://github.com/romkatv/powerlevel10k~)
    `git clone https://github.com/romkatv/powerlevel10k.git .powerlevel10k`
14. Plugins: **copy and paste this block in your terminal:**
    ```mkdir .plugins && cd .plugins
    git clone https://github.com/zsh-users/zsh-completions 
    git clone https://github.com/zsh-users/zsh-history-substring-search 
    git clone https://github.com/zdharma/fast-syntax-highlighting```
15.  mkdir `.dotfiles` 
16.  **mkdir .ssh/** then `ssh-keygen -t rsa -b 4096` next `cat ~/.ssh/id_rsa.pub | pbcopy` and paste key to github ssh keys(anyone else can use the http         clone option).
17.  `mkdir .dotfiles && cd .dotfiles && git init && git remote add origin git@github.com:tomWhilbert/.dotfiles.git && git pull origin macOS`
18.  **BAM!!!** enter passphrase for for ssh key if one was set.
19.  `cp ~/.dotfiles/.zshrc .zshrc_aliases .p10k.zsh`
20. Add colors to shell output:  `brew install lsd`  **this should already be there in the dotfiles clone but if not**) add `alias ls='lsd'` to                .zshrc_aliases 
21. Install the `MesloLGS NF Regular` font that cloned down from the .dotfiles repo.
22. Set the font to the text font in iTerm.
23. ##  zsh history substring search bindkeys ##
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
24. Run git-completions script:
    # Create the folder structure
    mkdir -p ~/.zsh
    cd ~/.zsh
    # Download the scripts
    curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
25. Restore word jump (Command + left,right arrow) 
    In iTerm2 go  to **Preferences…** > **Profiles** > **Keys**
    Press **Load Preset…**
    Select **Natural Text Editing**
