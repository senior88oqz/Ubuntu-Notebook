# Ubuntu Setup Guide

## First Time Setup

### Run `sudo` command without a password
  1. Backup `/etc/sudoers` file by:

  ```bash
  sudo cp /etc/sudoers /root/sudoers.bak
  ```

  2. Enable `NOPASSWD` for `sudo` group:

  ```bash
  echo "%sudo  ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
  ```
    
### Install system wide tools/application

- [ ] [Chrome](https://www.google.com/chrome/)
- [ ] [Visual Studio Code](https://code.visualstudio.com/)
- [ ] [Sublime Text](https://www.sublimetext.com/3)
 
```bash
sudo apt install vim git -y
```

### Configurate [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

* Installation
```bash
sudo apt install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
sudo shutdown -r 0
```

* Change default [themes](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes) & Enable plugins (i.e. [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md))
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
vim ~/.zshrc
ZSH_THEME='amuse'
plugins=(
  git
  zsh-autosuggestions
)
source ~/.zshrc
```
* Note
  * 'themes' directory: `~/.oh-my-zsh/themes/`
  * 'plugins' directory: `~/.oh-my-zsh/plugins/`

## References

* [Installing Ubuntu 18.04 along with Windows 10](https://hackernoon.com/installing-ubuntu-18-04-along-with-windows-10-dual-boot-installation-for-deep-learning-f4cd91b58557)
