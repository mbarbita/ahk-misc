#IfWinActive Path of Exile
#KeyHistory, 0

;KeyWait, LButton, U

~1::
Send, t
Send, {LShift down}12345{LShift up}
Return

~2::
Send, {LCtrl down}q{LCtrl up}
Return

~3::
Send, {LCtrl down}w{LCtrl up}
Return

~4::
Send, {LCtrl down}e{LCtrl up}
Return

F4::
;SetKeyDelay, 0, 70
Send, {Enter}
Send /Hideout{Enter}
Return

#IfWinActive Path of Exile
F12::Suspend
F11::Reload