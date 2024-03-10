#IfWinActive Path of Exile
#KeyHistory, 0

;~RButton::
;Click
;Return

;~q::
;Sleep 400
;BlockInput, On
;Send, w
;Return

~w::
;BlockInput, On
;Send, {Ctrl down}q{Ctrl up}
;BlockInput, Off
;Sleep 400
;BlockInput, On
;Send, 6
Return

1::
BlockInput, On
;Send, r
Send, {Shift Down}12345{Shift Up}
Return

2::
BlockInput, On
Send, {Ctrl down}q{Ctrl up}
Return

3::
BlockInput, On
Send, {Ctrl down}w{Ctrl up}
BlockInput, Off
Sleep 400
Send, 6
Return

4::
BlockInput, On
Send, {Ctrl down}e{Ctrl up}
Return

F4::
BlockInput, On
;SetKeyDelay, 0, 70
Send, {Enter}
Send /Hideout{Enter}
Return

clipboard := ""
F5::
Send, {Enter}
SendRaw, %clipboard%
Return

F6::
loop
{
Sleep, 180000
MouseMove, 20, 0, 50, R
Sleep, 180000
MouseMove, -20, 0, 50, R
}
Return

F7::
SetKeyDelay, 0, 70
Send, {Enter}
SendRaw, x
Return

`::
Send, {Shift Down}1{Shift Up}
;Click, right
Return

;~w::
;Sleep, 250
;Send, q
;Return

~WheelDown::
BlockInput, On
Send, t
Return

#IfWinActive Path of Exile
F12::Suspend
F11::Reload