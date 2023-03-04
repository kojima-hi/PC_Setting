# Windows 10
## for SSD
- disable hybernation
- disable virtual memory (paging file)
- disable indexing

# Windows 10, WSL
## Representation
Enable dark mode:  
`"Settings" > "Personalization" > "Color" > Choose "Dark" in "Choose your default app mode" section`

## Register to startup
`Push "Win+R" > type "shell:startup" (window is open) > Drop program shortcuts to the window`

## Programs for function
- Add tabs in file explorer:  
1. Install "QTTabBar"
1. Activation
    1. Open explorer
    1. "View" > Click on bottom panel of "Option" > Click on "QTTabBar"
    1. "View" > Click on bottom panel of "Option" > "Change folder and search options" > "View" tab > Click on "Apply to Folders"

- Custom keys
1. Install "AutoHotkey"
1. Make file "xxx.ahk" and double click it.
1. Register AutoHotkey to startup

(How to write script: https://sites.google.com/site/autohotkeyjp/reference/KeyList)

## Programs
- Visual Studio Code: Editor having dark background  
- Beeftext: Snippet tool

## How to
### Screen shot of specific area
`Win + Shift + s`

## PowerShell
### Set alias
Setting file is shown by `echo $profile`

# Ubuntu as subsystem of Windows 10
## Install
xxx

## Setup
### install basic tools
```
$ sudo apt-get install keychain
$ sudo apt install -y curl
```

### bashrc
```
# representation
PS1='\u@\h \W $ ' # shell prompt 
```
### Basic
#### Change home directory path on Windows
You can use directory structure on Windows as `/mnt/<drive letter>/xxx`
```
$ sudo vi /etc/passwd

Change from
    uname:x:1000:1000::/home/uname:/bin/bash
to
    uname:x:1000:1000::/mnt/d/xxx:/bin/bash
```

#### To be permission switchable
Cerate `/etc/wsl.conf` and write the following to it:
```
[automount]
enabled = true
options = "metadata"
mountFsTab = false
```

### Functions
#### kill beep
```
$ vi ~/.inputrc
add
    set bell-style none
```
#### Update
```
$ sudo apt update
$ sudo apt upgrade
```

#### Programs
```
$ sudo apt install build-essential

get program from the official page because that by apt is too old
$ wget https://github.com/neovim/neovim/releases/download/v0.6.1/nvim-linux64.tar.gz
$ tar xvzf nvim-linux64.tar.gz
$ mv nvim-linux64 ~/opt/
$ cd ~/opt
$ ln -sf nvim-linux64 nvim
$ vi ~/.bash_profile
add
    alias vim="$HOME/opt/nvim/bin/nvim"
    alias vi="$HOME/opt/nvim/bin/nvim"

$ sudo apt install tmux
Usage:
    init
        $ tmux
    divide panel
        C-b "
        C-b %
    move panel
        C-b <arrow>
```

## Warning
`sh` call dash instead of bash.

