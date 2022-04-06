# This is my personal config (dotfiles) github repo


## Use i3 with KDE, a match made in HEAVEN

Thanks to https://github.com/heckelson/i3-and-kde-plasma, I am able to do this. You just need to do this 
to create a plasma + i3 session.

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

polybar = `/etc/polybar/` or `~/.config/polybar/`

i3 (optimized when mixing i3 + KDE) = `~/.config/i3/` or `/etc/i3/config` for autoload

put-in-.config = `~/.config`

.xprofile = put in `~`, this is to integrate KDE themes + settings with i3-wm

## DEPENDENCIES:

For i3: 
`polybar`, `feh`, `j4-dmenu-desktop`, `dolphin`, `picom`

## NOTE(S):

For dmenu, I set the shortcut to `$mod+shift+d` instead of `$mod+d`. This is because use `$mod+d` for
the KDE application launcher.

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