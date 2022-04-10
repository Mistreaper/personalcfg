# This is my personal config (dotfiles) github repo


## Use i3 with KDE, a match made in HEAVEN

Thanks to https://github.com/heckelson/i3-and-kde-plasma, I am able to do this. You just need to do this 
to create a plasma + i3 session. Obviously you need `i3-gaps` and `plasma`.

Simply write the following to `/usr/share/xsessions/plasma-i3.desktop`:
```
[Desktop Entry]
Type=XSession
Exec=env KDEWM=/usr/bin/i3 /usr/bin/startplasma-x11
DesktopNames=KDE
Name=Plasma with i3
Comment=Plasma with i3
```
The rest is already covered in the i3 config, so no need to worry about that :).
## PATHS:

vscode = `~/.config/Code/User/`

polybar = `/etc/polybar/` or `~/.config/polybar/`. Put the files other than `config.ini` into `/etc/polybar`.

source for `kde-virtual-desktops-polybar`: https://github.com/KevinThomas0/kde-virtual-desktops-polybar 

i3 (optimized when mixing i3 + KDE) = `~/.config/i3/` or `/etc/i3/config` for autoload

put-in-.config = `~/.config`

i3-alt-tab.py = `/usr/bin`

everything in folder home: `~/`
.xprofile = put in `~`, this is to integrate KDE themes + settings with i3-wm


## DEPENDENCIES:

For i3 config itself: 
`polybar`, `feh`, `j4-dmenu-desktop`, `dolphin`, `picom`, `redshift`

For i3 + plasma: `i3-gaps`, `plasma`

For .zshrc: 

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
For .p10k.zsh: install `nerd-fonts-droid-sans-mono` and run:

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
Set `DroidSansMono Nerd Font` as your terminal font. To set it in VSCode, go to settings > JSON > then append this

```
"terminal.integrated.fontFamily": "DroidSansMono Nerd Font",
```

## i3-gaps basics

First, let's learn about shortcuts. On the top left, you will see a number. That's called a workspace. To switch between workspaces, just 
press $mod+number. 

$mod is your mod key set in your i3 config (~/.config/i3/config). I prefer Win as my mod key, but you can change Mod4 to Mod1 
if you would like to set alt as your mod key. It's located near the top of the file:
```
set $mod Mod4 # change to Mod1
```
Workspaces are the best way to manager windows. To open an application, you may press the application launcher button (KDE) or press $mod+d (dmenu). Type in anything you like, and press enter. 

To exit your i3 session, just run $mod+shift+e. This will log you out. Another way to do it is to open the application launcher and log out. 

There are many more, but you can google them yourself. Most of them are just how to position windows. To set a window 'floating', simply press $mod+shift+space. Press the same combination to toggle it back. Press $mod+leftclickdrag to move a window during floating mode, and $mod+rightclickdrag to resize a window during floating mode.

There's also a "resize mode" that you can toggle with $mod+r. Use your `j, k, l, ;` keys to resize windows and $mod+r to toggle it back to normal.

You can switch workspaces with $mod+number, right? But, you can also put a window in a workspace. Press $mod+shift+numberofworkspace to move a window to that workspace.
## NOTE(S):

I don't know why, but please backup your Opera cookies because somehow Opera
clears cookies in vanilla i3wm. The cookies are stored at `~/.config/Opera/`, in a file
called `Cookies`. Run:

```
cd ~/.config/Opera && cp Cookies ./Cookies.backup
```
To restore:
```
cd ~/.config/Opera && rm Cookies && cp Cookies.backup ./Cookies
```