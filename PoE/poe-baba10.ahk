#IfWinActive Path of Exile
#KeyHistory, 0

1::
BlockInput, Send
Send, r
;Send, {Ctrl down}e{Ctrl up}
Send, {Shift Down}12345{Shift Up}
Return

2::
BlockInput, Send
Send, {Ctrl down}q{Ctrl up}
Return

3::
BlockInput, Send
Send, {Ctrl down}w{Ctrl up}
;Send, +{Click}
Return

4::
BlockInput, Send
Send, {Ctrl down}e{Ctrl up}
;Send, t
Return

;~w::   
;Sleep, 500
;Send, t
;Sleep, 500
;Send, {Ctrl down}w{Ctrl up}
;Return

;~RButton::   
;BlockInput, Send
;Sleep, 500
;Send, {Ctrl down}w{Ctrl up}
;Sleep, 500
;Send, {Ctrl down}q{Ctrl up}
;Return

F4::
BlockInput, Send
Send, {Enter}
Send /Hideout{Enter}
Return

;Alt::Suspend

#IfWinActive Path of Exile
F12::Suspend
F11::Reload