# This is my personal config (dotfiles) github repo

## PATHS:

vscode = `~/.config/Code/User/`
polybar = `/etc/polybar/` or `~/.config/polybar/`
i3 = `~/.config/i3/` or `/etc/i3/config` for autoload
put-in-.config = `~/.config`
.xprofile = put in `~`, this is to integrate KDE themes + settings with i3-wm
## DEPENDENCIES:

For i3: 
`polybar`, `feh`, `j4-dmenu-desktop`, `dolphin`, `picom`

## NOTE(S):
I don't know why, but please backup your Opera cookies because somehow Opera
clears cookies in i3wm. The cookies are stored at `~/.config/Opera/`, in a file
called `Cookies`. Run:

```
cd ~/.config/Opera && cp Cookies ./Cookies.backup
```
To restore:
```
cd ~/.config/Opera && rm Cookies && cp Cookies.backup ./Cookies
```