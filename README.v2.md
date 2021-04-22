# ZSH Setup and Configuration # 
### Install Instructions assume macOS 10.15+ or Linux  
Alternate method explored on 4-22-21

 
1. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. 
3. `brew install zsh`
4. `brew cask install iterm2`
5. `which zsh`  to confirm that  `/usr/local/bin/zsh` brew version is installed
6. `sudo vim /etc/shells`  and append to the end of the file  `/usr/local/bin/zsh`
7. `chsh -s $(which zsh)`
8.  Authenticate, then close `terminal` and open `iterm2`.
    
9.  OMZ
    **In $HOME/bin/**     `git clone https://github.com/ohmyzsh/ohmyzsh.git`
    Only use for 'd' directory pop/push and 'z' frecency.

10. Powerlevel10k    
    **IN $HOME/bin/**  `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/bin/powerlevel10k`
   Add to `.zshrc` `source ~/powerlevel10k/powerlevel10k.zsh-theme`

12. Plugins: Use the plugins available in Brew. No longer clone directly from "zsh-users".

13. Generate a Github SSH key pair and copy the `.pub` file to Github

14. ```
     git init && git remote add origin git@github.com:tomWhilbert/.dotfiles.git && git pull origin macOS
    ```
15. ```
    git clone https://github.com/tomWhilbert/.dotfiles.git
    ```
16. `cp ~/.dotfiles/.zshrc .zshrc_aliases .p10k.zsh ~/`d
    
17.	Add colors to shell output:  `brew install exa'
    Aliases for exa are in .zshrc_aliases
    
19. Install the Fonts, 
    `cd ~/.dotfiles && open MesloLGS NF Regular.ttf`  this should open in Font Book, click install.
    ***Note** macOS seems to require a reboot to recognize the font.

20. Set the font to the `MesloLGS NF Regular` in iTerm.

21.   Restore word jump (Command + left,right arrow) 
     
    In **`iTerm2`** go to 

    `Preferences…** > **Profiles** > **Keys`

    Press `Load Preset…`

    Select `Natural Text Editing`

22.  Set a color profile in iTerm if you like.   
     **DONE!!**
   