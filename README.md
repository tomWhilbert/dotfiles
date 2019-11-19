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

_**Public Users: You will not have access to set an SSH key in this repo. Skip to Clone option #15 to clone**_

13. **mkdir .ssh/** then  `ssh-keygen -t rsa -b 4096`  next  `cat ~/.ssh/id_rsa.pub | pbcopy`   
    and paste key to github ssh keys

14. ```
    mkdir .dotfiles && cd .dotfiles && git init && git remote add origin git@github.com:tomWhilbert/.dotfiles.git && git pull origin macOS
    ```
15. ```
    mkdir .dotfiles && cd .dotfiles && git init && git clone https://github.com/tomWhilbert/.dotfiles.git
    ```
16. `cp ~/.dotfiles/.zshrc .zshrc_aliases .p10k.zsh ~/`
18. Add colors to shell output:  `brew install lsd`  **this should already be there in the dotfiles clone but if not**) add `alias ls='lsd'` to                         .zshrc_aliases 
19. Install the Fonts, `cd ~/.dotfiles && open MesloLGS NF Regular.ttf` this should open in Font Book, click install.
20. Set the font to the `MesloLGS NF Regular` in iTerm.

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
22.   Restore word jump (Command + left,right arrow) 
     
    In `iTerm2` go to 

    `Preferences…** > **Profiles** > **Keys`

    Press `Load Preset…`

    Select `Natural Text Editing`
3.  Run `p10k configure` and walk through the powerleve10k theme setup.(not necessary as the theme is picked up by the settings file `p10k.zsh`          that was cloned, but run if you want to make adjustments)
4.   Set a color profile in iTerm if you like.
        
          Done!!!