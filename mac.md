# MAC

## Programs
### Tex
- Install
```
  $ brew cask reinstall mactex # contains TeX Live
    # combination of brew management and independent installation of TeX Live may result in error.
```

- Add packages
```
  $ kpsewhich listing.sty # find directory containing a package
  <sty_dir>/listing.sty
  $ sudo cp jlisting.sty <sty_dir> # copy new package to where Tex references
  $ sudo mktexlsr # reflects settings
```

### MS Office
- History
(For Excel) You must log in to any account to enable usage history.

- Font theme
    - Put a theme file in `~/Library/Group Containers/UBF8T346G9.Office/User Content.localized/Themes.localized/Theme Fonts`
        - An example of the file is found on https://researchmap.jp/jox7s44se-52108/
    - How to read the theme: `View - Slide Master - Fonts - choose Your Theme`

- Shortcut(PPT)
    - Increase the font size: `cmd sft >`
    - Decrease the font size: `cmd sft <`
    - Open the font window: `cmd t`


## Partiiton
### Clean volume
1. Open `/Applications/Utilities/Disk Utility.app`
1. Choice target volume and click `Erase`

## Migration
### How to migrate
You can migrate data between Macs easily. Follow the guidance in your initial setup. (MBP) Use a USB-C cable to connect the PCs, though not a charging USB-C calbe that comes with MBP.

### Needed manual settings
#### System Preferences
- Security & Privacy
Accessibility, Full Disk Access
- Users & Groups
Login Items

#### Google Chrome
Use Sync or addon `Export links of all extensions`.

#### Google Drive
Resynchronize everything(?)

#### Launchpad
Organize apps.

### Initialize Mac
1. Sign out App Store, iTunes, iCloud, iMessage
1. Delete data on disc
    1. Restart Mac with pusshing `Command+r`
    1. Select `Dist Utility` on pannel `macOS Utilities`
    1. Select `Internal - Machintosh HD` and click `Erase` and click `Erase`
1. Reinstall OS
    1. Select `Reinstall macOS` on pannel `macOS Utilities`
    1. Follow the one-way instruction

### MS Office
License. If reinstall is needed, remove only .app files in Library.

### Others
- Reset Time Machine setting. ( The setting is inherited but it works wrong. )
