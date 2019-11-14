# ZSH Setup and Configuration # 
### Install Instructions assume macOS 10.15+ or Linux  
modified on 11/3/19
 
1. In terminal _for now_ Install Homebrew 
2. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
3. `brew doctor`
4. `brew install zsh`
5. `brew cask install iterm2`
6. `which zsh`  to confirm that  `/usr/local/bin/zsh` brew version is installed
7. `sudo vim /etc/shells`  and append to the end of the file  `/usr/local/bin/zsh`
8. `chsh -s $(which zsh)`
9.  Authenticate, then close `terminal` and open `iterm2`.
10. oh-my-zsh: [OMZ repo](~https://github.com/robbyrussell/oh-my-zsh~)
    **In $HOME** `git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh`
11. pk10: [p10k repo](~https://github.com/romkatv/powerlevel10k~)
    **IN $HOME** `git clone https://github.com/romkatv/powerlevel10k.git .powerlevel10k`
12. Plugins: **copy and paste this block in your terminal:**
    ```
    mkdir .plugins && cd .plugins
    git clone https://github.com/zsh-users/zsh-completions 
    git clone https://github.com/zsh-users/zsh-history-substring-search 
    git clone https://github.com/zdharma/fast-syntax-highlighting
    ```
13.  **mkdir .ssh/** then  `ssh-keygen -t rsa -b 4096`  next  `cat ~/.ssh/id_rsa.pub | pbcopy`  and paste key to github     ssh keys(anyone else can use the http clone option).
14. `mkdir .dotfiles && cd .dotfiles && git init && git remote add origin git@github.com:tomWhilbert/.dotfiles.git &&        git pull origin macOS`
15.  **BAM!!!** enter passphrase for for ssh key if one was set.
16.  `cp ~/.dotfiles/.zshrc .zshrc_aliases .p10k.zsh ~/`
17. Add colors to shell output:  `brew install lsd`  **this should already be there in the dotfiles clone but if not**) add `alias ls='lsd'` to                .zshrc_aliases 
18. Install the `MesloLGS NF Regular` font that cloned down from the .dotfiles repo.
19. Set the font to the `MesloLGS NF Regular` in iTerm.
20. **zsh history substring search bindkeys**
    ```
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
    ```
21. Run git-completions script:
    
    **Create the folder structure**
    ```
    mkdir -p ~/.zsh
    cd ~/.zsh
    ```
    **Download the scripts**
    ```
    curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
    ```
22. Restore word jump (Command + left,right arrow) 
        
    In `iTerm2` go to 

    `Preferences…** > **Profiles** > **Keys`

    Press `Load Preset…`

    Select `Natural Text Editing`
