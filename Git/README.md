# Git Notes

## Initial Setup
```bash
sudo apt install git
git config --global user.email "arsheung112@gmail.com"
git config --global user.name "Hongxiang Yang"
git config --global core.excludesfile ~/.gitignore_global
```

## Add the key to the ssh-agent

1. To start the agent, run the following:

```bash
eval `ssh-agent`
```

1. Enter ssh-add followed by the path to the private key file:

```bash
## macOS
$ ssh-add -K ~/.ssh/<private_key_file>

## Linux
$ ssh-add ~/.ssh/<private_key_file>
```

1. (macOS only) So that your computer remembers your password each time it restarts, open (or create) the ~/.ssh/config file and add these lines to the file:

```init
Host *
  UseKeychain yes
```

## [Connecting to GitHub with SSH](https://help.github.com/articles/connecting-to-github-with-ssh/)
