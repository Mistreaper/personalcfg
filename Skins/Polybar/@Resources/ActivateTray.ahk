<<<<<<< HEAD
#NoTrayIcon

X = %1%
Y = %2%
direction = %3%

IfWinExist, ahk_class NotifyIconOverflowWindow
   WinHide, ahk_class NotifyIconOverflowWindow
Else
{
  DetectHiddenWindows, On
  WinGetPos,,,WidthOfTray,HeightOfTray,ahk_class NotifyIconOverflowWindow
  TrueX := X-WidthOfTray/2
  TrueY := Y-HeightOfTray*direction
  WinMove, ahk_class NotifyIconOverflowWindow, , %TrueX%, %TrueY%
  WinShow, ahk_class NotifyIconOverflowWindow
  WinActivate, ahk_class NotifyIconOverflowWindow
  WinWaitNotActive, ahk_class NotifyIconOverflowWindow
  WinHide, ahk_class NotifyIconOverflowWindow
=======
#NoTrayIcon

X = %1%
Y = %2%
direction = %3%

IfWinExist, ahk_class NotifyIconOverflowWindow
   WinHide, ahk_class NotifyIconOverflowWindow
Else
{
  DetectHiddenWindows, On
  WinGetPos,,,WidthOfTray,HeightOfTray,ahk_class NotifyIconOverflowWindow
  TrueX := X-WidthOfTray/2
  TrueY := Y-HeightOfTray*direction
  WinMove, ahk_class NotifyIconOverflowWindow, , %TrueX%, %TrueY%
  WinShow, ahk_class NotifyIconOverflowWindow
  WinActivate, ahk_class NotifyIconOverflowWindow
  WinWaitNotActive, ahk_class NotifyIconOverflowWindow
  WinHide, ahk_class NotifyIconOverflowWindow
>>>>>>> f785345b6bf27406ea4790f0f4810ded4443fbb5
}