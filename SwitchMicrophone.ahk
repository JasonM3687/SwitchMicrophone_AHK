; Simple microphone switching auto hotkey script (assumes auto hotkey is already installed)
; Change sleep values if needed

; Switching to secondary microphone
*F11:: ; Desired hotkey for secondary microphone
Run, mmsys.cpl ; Opens sound settings (Windows 10)
WinWaitActive,Sound
Control,TabRight, 1, SysTabControl321 ; Selects recording tab
Sleep 10
ControlSend,SysListView321,{Down} ; Selects the first device on the recording list (Unique to your PC, change the down value as needed)
Sleep 10
Send Shift+{F10} ; Right click
Sleep 10
Send {Down 4} ; Down 4 to "Set as Default Communication Device" (Unique to your PC, change the down value as needed)
Send {Enter} ; Selects "Set as Default Communication Device"
Sleep 10
Send {Enter} ; OK
return

;Switching back to primary microphone (Assumes this device is already set as default device , NOT default communication device) 
*F12:: ; Desired hotkey for primary microphone that is already set as default device
Run, mmsys.cpl ; Opens sound settings (Windows 10)
WinWaitActive,Sound
Control,TabRight, 1, SysTabControl321 ; Selects recording tab
Sleep 10
ControlSend,SysListView321,{Down 9} ; Selects the ninth device on the recording list (Unique to your PC, change the down value as needed)
Sleep 10
Send Shift+{F10} ; Right click
Sleep 10
Send {Down 3} ; Down 3 to "Set as Default Communication Device" (Unique to your PC, change the down value as needed)
Send {Enter} ; Selects "Set as Default Communication Device"
Sleep 10
Send {Enter} ; OK
return


