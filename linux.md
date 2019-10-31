# Shell Command
## ssh-agent
Agent who automatically deals with SSH public-key authentication follows you.

- Launch
```
Mac
  running by default
Linux
  $ eval `ssh-agent` 
```

- Registration
```
$ ssh-add id_rsa
    Type its pass-phrase
$ ssh-add -l # check registration
```

- Usage
```
$ ssh -A server # -A activate agent to follow you
or
$ vi ~/.ssh/config
    add the following:
        ForwardAgent yes
$ ssh server
```

## GNU parallel
Execute jobs in parallel easily.

- Initialization
```
$ brew install parallel
$ parallel --bibtex # to erase message
    type 'will cite'
```
- Example
```
$ parallel echo x {} y ::: 11 12 ::: 21 22
x 11 21 y
x 11 22 y
x 12 21 y
x 12 22 y
```

## Note
- rsync doesn't distinguish uppercase and lowercase.

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

## Python
```
    # AutoPyGui
    $ sudo apt install python3 scrot python3-tk python3-dev
    $ pip3 install python3-xlib Image pillow pyscreeze PyTweening opencv_python pyautogui
```
