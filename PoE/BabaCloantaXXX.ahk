#SingleInstance Ignore
#IfWinActive Path of Exile
#KeyHistory, 0

`::
;Send, {Shift Down}1{Shift Up}
Send, 12345
;Click, right
Return


;~q::
;Sleep 400
;BlockInput, On
;Send, w
;Return

w::
;BlockInput, On
Send, we
Sleep, 300
Send, ^e
;BlockInput, Off
;Sleep 400
;BlockInput, On
;Send, 6
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
;Send, {Ctrl down}e{Ctrl up}
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

;F7::
;loop
;{
;Send, r
;Sleep, 3000
;}
;Return

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