#SingleInstance Ignore
#IfWinActive Path of Exile
#KeyHistory, 0

`::
;Send, {Shift Down}1{Shift Up}
Send, 12345
;Click, right
Return

e::
;Send, e
Send, ^t
Sleep, 300
Send, ^w
;KeyDown := !KeyDown
;If KeyDown
;	SendInput {e down}
;Else
;	SendInput {e up}
Return

;~q::
;Sleep 400
;BlockInput, On
;Send, w
;Return

;Moshu
;~space & w::
~w::
;GetKeyState, sp, space, P
;	if sp = D
;	{
;		BlockInput, On
;		Send, {space up}
;		}

;BlockInput, On
;Send, {space up}
Send, w
Sleep, 300
Send, ^r
Send, e
Send, ^e
Sleep, 300
Send, ^q
Sleep, 300
;SendInput {space down}
;BlockInput, Off
Return

;1::
;BlockInput, On
;Send, r
;Send, {Shift Down}12345{Shift Up}
;Send, 12345
;Return

;2::
;BlockInput, On
;Send, r
;Send, {Shift Down}2345{Shift Up}
;Send, 1
;Return

;2::
;BlockInput, On
;Send, {Ctrl down}q{Ctrl up}
;Return

;3::
;BlockInput, On
;Send, {Ctrl down}w{Ctrl up}
;Send, +{Click}
;BlockInput, Off
;Sleep 400
;Send, 6
;Return

;4::
;BlockInput, On
;Send, 45
;Return

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
;loop
;{
;Send, w
;Sleep, 20000
;}
Reload
Return

;F7::
;SetKeyDelay, 0, 70
;Send, {Enter}
;SendRaw, x
;Return

;~w::
;Sleep, 250
;Send, q
;Return

;~WheelDown::
;BlockInput, On
;Send, t
;Return

F11::Reload
F12::Suspend
#IfWinActive Path of Exile