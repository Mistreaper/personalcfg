; Description: Settings For MinimalStatus Bar
; AUTHOR:      CTURNER314
; Licence:     Creative Commons Attribution - Non - Commercial - Share Alike 3.0
; Version:     1.0


[Variables]
;+++++++++++++++++++++++++++++++	
; GENERAL
HideStrength=0


;+++++++++++++++++++++++++++++++++
; COLOR SETTINGS
; ALL COLLORS USE FORMAT rrr,ggg,bbb,aaa (red,green,blue,alpha) where each value has a range 0-255
; BARCOLOR - No description needed - alpha of less than 255 will result in bar where signal strength is. Can hide strength above
BarColor=20,20,20,255
; ACCENTCOLOR - Color Of Images and Text Shown On the Bar
AccentColor=255,255,255,255
; SUBMETERCOLOR - BG Color Of Any Sub Meters
SubMeterColor=0,0,0,255
; SUBMETERACCENTCOLOR - Color Of Images and Text Shown on any Sub Meters
SubMeterAccentColor=255,255,255,255
; NOTTHISMONTHCOLOR - Color Of dates on the calendar that appear within the 42 squares, but not from current month.
NotThisMonthColor=180,180,180,180
; SELECTED COLOR - Color of any selected buttons
SelectedColor=0,80,255,200
; TODAYSELECTED - Color of todays date in the calendar
TodaySelected=100,100,100,255
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; FONT OF ANY WRITING ON BAR
BarFont=Nexa Light

; PATHS
; OPTIONS PATH: - Windows 10 settings : 'ms-settings:'
;                - control panel: 'control'
OptionsPath=ms-settings:
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; QUICK APPS SETTINGS

; QUICK APP LABELS - Name Of quick apps
QuickAppLabel1=Google Chrome
QuickAppLabel2=Spotify Music
QuickAppLabel3=Photoshop
QuickAppLabel4=MS Word
QuickAppLabel5=Skype
QuickAppLabel6=E-Mail

; QUICK APP ICONS - Use Path To Image File
QuickAppIcon1="#@#Images\Chrome.png"
QuickAppIcon2="#@#Images\Spotify.png"
QuickAppIcon3="#@#Images\Photoshop.png"
QuickAppIcon4="#@#Images\Word.png"
QuickAppIcon5="#@#Images\Skype.png"
QuickAppIcon6="#@#Images\Mail.png"

; QUICK APP PATHS - Path To Program Or File To Open
QuickAppPath1="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
QuickAppPath2="C:\Users\#UserName#\AppData\Roaming\Spotify\Spotify.exe"
QuickAppPath3="C:\Program Files\Adobe\Adobe Photoshop CC 2015.5\Photoshop.exe"
QuickAppPath4="C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
QuickAppPath5="C:\Program Files (x86)\Skype\Phone\Skype.exe"
QuickAppPath6="shell:AppsFolder\microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail"
; shell:RecycleBinFolder for recycle bin

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; QUICK NOTES
QuickNote1=CLICK ME
QuickNote2=TO EDIT 
QuickNote3==========
QuickNote4=QUICKLY TAKE NOTES
QuickNote5=ANYWHERE
QuickNote6=ABOUT ANYTHING
;++++++++++++++++++++++++++++++++++

; CALENDAR SETTINGS - MAKE SURE THESE ARE RIGHT IF THE CALENDAR APPEARS WRONG

; DECADE - The decade of the current year; for 2017, 1 as the 3rd digit is a 1
Decade=1
; YEARUNIT - The last digit of the current year; for 2017, 7.
yearUnit=7


UserName=[MeasureUserName]
[MeasureUserName]
Measure=Plugin
Plugin=SysInfo
SysInfoType=USER_NAME
UpdateDivider=-1
[BatteryRaw]
Measure=Plugin
Plugin=PowerPlugin
PowerState=Percent
[MeasureCharging]
Measure=Plugin
Plugin=PowerPlugin
PowerState=ACLine
