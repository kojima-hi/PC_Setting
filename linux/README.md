# Environment
```
# stop bash tab-completion escaping '$'
shopt -s direxpand
```

# Programs
## Bash-completion
- Install
```
    $ brew install bash-completion
    $ vi ~/.bash_profile
        add the following:
            if [ -f $(brew --prefix)/etc/bash_completion ]; then
                . $(brew --prefix)/etc/bash_completion
            fi
```

- Make self-completion

See commented example in ./bash_completion/

# Shell Command
## ssh-agent
Agent who automatically deals with SSH public-key authentication follows you.

- Launch
```
Mac
  running by default
WSL2
  $ sudo apt-get install keychain
  $ /usr/bin/keychain -q --nogui $HOME/.ssh/id_rsa
  $ source $HOME/.keychain/<host-name>-sh
```

- Registration
```
$ ssh-add id_rsa    # add the key temporary
$ ssh-add -K id_rsa # On macOS, add the key to Keychain
    Type its pass-phrase
$ ssh-add -l # check registration
$ ssh-add -d id_rsa # delete the key
```

Use macOS Keychain for ssh-add to use registered keys in Keychain.
```
$ vi ~/.ssh/config
    add the following:
          UseKeychain yes
          AddKeysToAgent yes
```

- Usage
```
SSH without paraphrase
$ ssh server

Activate ssh-agent to follow you
$ ssh -A server
or
$ vi ~/.ssh/config
    add the following:
        ForwardAgent yes
$ ssh server
```

## When public key authentication doesn't work
- See /var/log/secure if you can.
- Check permission of files:
```
On guest server
$ chmod 700 $HOME/.ssh
$ chmod 600 $HOME/.ssh/id_rsa

On host server
$ chmod 755 $HOME
$ chmod 700 $HOME/.ssh
$ chmod 600 $HOME/.ssh/authorized_keys
```

## In error
- Xauth
    - xauth:  timeout in locking authority file /home/xxx/.Xauthority
```
$ rm .Xauthority-*
$ :> .Xauthority
$ chmod 600 .Xauthority
```

## Note
- rsync doesn't distinguish uppercase and lowercase.

## TIPS
- Suddenly unable to connect a server with encryption key... Check permission of home directory on the server. Scp from Windows Machine to the home directory can change its permission.

# Service
## GitHub
1. Initial setting
- Write the following in ~/.gitconfig
```
[user]
  name = <User name>
  email = <Mail address>

[color]
  ui = auto

[diff]
  tool = vimdiff
```
- Register publick key to account of GitHub

`Log in > go to https://github.com/settings/keys > register the key`

- Configurate SSH connection: write the following in ~/.ssh/config
```
Host github git
    User git
    Hostname github.com
    IdentityFile ~/.ssh/id_rsa
```

2. Get repository from GitHub
```
$ git clone git:user-name/repository-name
```
If you get a repository through HTTP connection, user-name and password are required when you push revise to GitHub.

### hub: extend git command
```
$ brew install hub      # install
$ vi ~/.bash_profile    # alias git command as hub command
    add the following:
        eval "$(hub alias -s)"
```

example
```
Create a private repository on GitHub using command line.
$ git init
$ git create -p "test" # you can use this command by hub
```

## Python
Use anaconda
```
AutoPyGui
$ sudo apt install python3 scrot python3-tk python3-dev
$ pip3 install python3-xlib Image pillow pyscreeze PyTweening opencv_python pyautogui

Before use matplotlib
$ conta install qt
```
