# What is this?
Note about settings of Windows 10 and installation&setup of Ubuntu LTS 18.04 as subsystem of Windows 10.

# Windows 10
## Representation
Enable dark mode:  
`"Settings" > "Personalization" > "Color" > Choose "Dark" in "Choose your default app mode" section`

## Function
Add tabs in file explorer:  
1. Install "QTTabBar"
1. Activation
    1. Open explorer
    1. "View" > Click on bottom panel of "Option" > Click on "QTTabBar"
    1. "View" > Click on bottom panel of "Option" > "Change folder and search options" > "View" tab > Click on "Apply to Folders"

## Programs
Visual Studio Code: Editor having dark background  

# Ubuntu as subsystem of Windows 10
## Install
### Activation
Activate developer mode on Windows 10:   
`"Start Button" > "Setting" > "Update & Security" > "For Developers" > check "Developer Mode"`

Activate "Windows Subsystem for Linux":   
`right click on "Starb Button" > "App & Func" > "Program & Func" > "activate or deactivate..." > check "Windows Subsystem for Linux"`

### Get
Get Ubuntu from Store, then installation is automatically started.

## Setup
### bashrc
```
  # representation
  PS1='\u@\h \W $ ' # shell prompt 
```
### Basic
#### Change home directory path on Windows
You can use directory structure on Windows as `/mnt/<drive letter>/xxx`
```
  $ sudo vi aaa

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
#### Update
```
  $ sudo apt update
  $ sudo apt upgrade
```

#### Programs
```
  $ sudo apt install build-essential

  $ sudo apt install python-pip
  $ sudo apt install python3-pip

  For Neovim
  $ sudo apt install unzip
  $ sudo apt install pkg-config
  $ sudo apt install cmake
  $ sudo apt install lua5.3
  $ sudo apt install libtool
  $ sudo apt install libtool-bin
  $ sudo apt install automake
  $ sudo apt install gettext

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


