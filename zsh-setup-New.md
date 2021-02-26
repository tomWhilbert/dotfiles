# ZSH Setup and Configuration 

## Install Instructions assume macOS 10.15+ or Linux  

### Modified on 2-3-2021.  

>This "new" method uses brews installation of the zsh completions plugins vs cloning  zsh-users into a .plugins directory.  This allows for a 'cleaner' home dir and removes the need to run the 'walk-pull' script to update the repos. Of course it relies on the brew packages for updates, so updates are not nearly as frequent - good and bad. 
 
1. Open `terminal` Install Homebrew 
   `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. Get **Homebrew** ready: `brew doctor`
4. Instal Zsh: `brew install zsh`
5. Instal iTerm2: `brew cask install iterm2`
6. Run `which zsh`  to verify that `/usr/local/bin/zsh` brew version is installed
7. `sudo vim /etc/shells`  and add to the end of the file  `/usr/local/bin/zsh`
8. `chsh -s $(which zsh)`
9.  Authenticate, then close `terminal` and open `iterm2`.
10. Run through the default Zsh New-User-Install.  This adds some defaults to your `.zshrc`


12. pk10: [p10k repo](~https://github.com/romkatv/powerlevel10k~)
    
    **IN $HOME**     `git clone https://github.com/romkatv/powerlevel10k.git .powerlevel10k`



**Public Users: You will not have access to set an SSH key in this repo. Skip to Clone option #15 to clone**

14. **mkdir .ssh/** then  `ssh-keygen -t rsa -b 4096`  next  `cat ~/.ssh/id_rsa.pub | pbcopy`   
    and paste key to github ssh keys

15. ```
     git init && git remote add origin git@github.com:tomWhilbert/.dotfiles.git && git pull origin macOS
    ```
16. ```
    git clone https://github.com/tomWhilbert/.dotfiles.git
    ```
17. `cp ~/.dotfiles/.zshrc .zshrc_aliases .p10k.zsh ~/`d
    
18. Add colors to shell output:  `brew install lsd`  
    
19. Install the Fonts, 
        `cd ~/.dotfiles && open MesloLGS NF Regular.ttf`  this should open in Font Book, click install.

20. Set the font to the `MesloLGS NF Regular` in iTerm.
    
21.   Restore word jump (Command + left,right arrow) 
     
    In **`iTerm2`** go to 

    `Preferences…** > **Profiles** > **Keys`

    Press `Load Preset…`

    Select `Natural Text Editing`

22. Run `p10k configure` and walk through the powerleve10k theme setup.(not necessary as the theme is picked up by the settings file `p10k.zsh` that was cloned, but run if you want to make adjustments)
    
23.  Set a color profile in iTerm if you like.   
     This one is good:  [Dracula Theme](https://draculatheme.com/)

     **DONE!!**
    

    ## Plugins alternatives for z Frecency and d Directories - See old method or linux version.
    1.  oh-my-zsh: [OMZ repo](~https://github.com/robbyrussell/oh-my-zsh~)
    **In $HOME**     `git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh`

    2. Plugins: **copy and paste this block in your terminal:**
    ```
    mkdir .plugins && cd .plugins
    git clone https://github.com/zsh-users/zsh-completions 
    git clone https://github.com/zsh-users/zsh-history-substring-search 
    git clone https://github.com/zdharma/fast-syntax-highlighting
    cd ..
    ```

    3. Run git-completions script:
    
   _Create the folder structure & Download the scripts_
    
    mkdir -p ~/.zsh
    cd ~/.zsh
   
    curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    
    curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh