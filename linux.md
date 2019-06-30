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
If you get a repository through HTTP connection, user-name and password is required when you push revision to GitHub.

## Python
```
    # AutoPyGui
    $ sudo apt install python3 scrot python3-tk python3-dev
    $ pip3 install python3-xlib Image pillow pyscreeze PyTweening opencv_python pyautogui
```
