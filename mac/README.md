# MAC

## Basic settings
### Time Machine
#### Ordinaly
- Use `TimeMachineEditor` app to control your backup schedule.
- Backup data in a volume is also used when you re-select the volume.
- Don't choose `New backup`.

#### Encrypt
- Before backup setting, format your disc with encrypted file system format by Disk Utility.

#### Option
```
Speed up
On
$ sudo sysctl debug.lowpri_throttle_enabled=0
Off
$ sudo sysctl debug.lowpri_throttle_enabled=1
```


<!--
### In getting message "Time machine must create a new backup for you"
```
$ ll /Volumes/{name of your network share}
$ sudo chflags -R nouchg /Volumes/{name of your network share}/{name of}.sparsebundle   # erase unchangable frag
$ hdiutil attach -nomount -noverify -noautofsck /Volumes/{name of your network share}/{name of}.sparsebundle   # attach image without mount, verify, and repair
/dev/diskN            GUID_partition_scheme           
/dev/diskNsX          EFI                             
/dev/diskNsY          Apple_HFS     # this is the target of repair
$ fsck_hfs -drfy /dev/diskNsY       # repair attach disc. 
$ hdiutil detach /dev/diskNsY
$ vi /Volumes/{name of your network share}/{name of}.sparsebundle/com.apple.TimeMachine.MachineID.plist
    delete successive two lines
        <key>VerificationState</key>
        <date>[date]</date>
    replace from
        <integer>2</integer>
    to
        <integer>0</integer>
```
-->

### Network
#### Wi-Fi trouble
- When mac connects to router but does not connect to internet  
1. Backup and delete com.apple.airport.preferences.plist, com.apple.network.identification.plist, com.apple.wifi.message-tracer.plist, NetworkInterfaces.plist, and preferences.plist in `/Library/Preferences/SystemConfiguration/`
2. Relaunch (to initialize settings)

(ref https://www.fonepaw.jp/tutorials/fix-mac-internet-wifi-error.html)

### Others
- `Apple`-`About This Mac`-`Storage`-`Manage`-`Empty Trash Automatically`

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

| To | Press |
   :--- | :---:
| Increase the font size | cmd sft > |
| Decrease the font size | cmd sft < | 
| Open the font window   | cmd t     |

- TIPS (Word)
    - Figure on text
        - Group
        - Wrap Text - Fix Position on Page
        - Write caption on Text Box

### Numbers
Convert to csv format throught excel file format.

## Partition
### Clean volume
1. Open `/Applications/Utilities/Disk Utility.app`
1. Choice target volume and click `Erase`

## Migration
### How to migrate
You can migrate data between Macs easily. Follow the guidance in your initial setup. (MBP) Use a USB-C cable to connect the PCs, though not a charging USB-C cable that comes with MBP.

### Needed manual settings
#### System Preferences
- Security & Privacy
Accessibility, Full Disk Access
- Users & Groups
Login Items

#### Google Chrome
Use Sync or add-on `Export links of all extensions`.

#### Google Drive
Resynchronize everything(?)

#### Launchpad
Organize apps.

### Initialize Mac
1. Sign out App Store, iTunes, iCloud, iMessage
1. Delete data on disc
    1. Restart Mac with pushing `Command+r`
    1. Select `Dist Utility` on panel `macOS Utilities`
    1. Select `Internal - Machintosh HD` and click `Erase` and click `Erase`
1. Reinstall OS
    1. Select `Reinstall macOS` on panel `macOS Utilities`
    1. Follow the one-way instruction

### MS Office
License. If reinstall is needed, remove only .app files in Library.

### Others
- Reset Time Machine setting. ( The setting is inherited but it works wrong. )
