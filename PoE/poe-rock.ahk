#IfWinActive Path of Exile
#KeyHistory, 0

~1::
;Send, 
Send, 12345
Return

2::
Send, 2345
Return

3::
Send, {Ctrl down}e{Ctrl up}
Return

4::
Send, {Ctrl down}q{Ctrl up}
Return

;toggle = 0
;#MaxThreadsPerHotkey 2
;~q::
;    Toggle := !Toggle
;     if Toggle{
;        Click, down, right
;        ;sleep 200
;    }
;     if !Toggle{
;        Click, up, right
;        ;sleep 200
;    }
;return

;~e::
;Send, e
;Sleep, 1000
;Send, {Ctrl down}w{Ctrl up}
;Sleep, 1000
;Send, +{Click}
;Sleep, 1000
;Send, +{Click}
;Sleep, 1000
;Send, +{Click}
;Return

;~2::
;Send, 2345
;Return

;~3::
;Send, 345
;Return

F4::
;SetKeyDelay, 0, 70
Send, {Enter}
Send /Hideout{Enter}
Return

;toggle = 0
;#MaxThreadsPerHotkey 2
;~F1::
;  Toggle := !Toggle
;  While Toggle{
;    Send, +{Click}
;    sleep 10000
;    }
;return

;mining
; x::
; Click % GetKeyState("LButton") ? "Up" : "Down"
; Return

;Fishing
; ~`::
; Click, right
; Sleep, 270
; Click, right
; Sleep, 250

; Click, right
; Sleep, 260
; Click, right
; Sleep, 270

; Click, right
; Sleep, 250
; Click, right
; Sleep, 260
; Return

; `::
; Click, right
; Return


; toggle = 0
; #MaxThreadsPerHotkey 2

; F10::
;     Toggle := !Toggle
;      While Toggle{
;         Click
; ;       Send a
;         sleep 500
;     }
; return



; F4::
; Send, /
; Sleep, 70
; ;SetKeyDelay, 0, 70
; Send, pets{Enter}
; Return

; F8::
; Send, /
; Sleep, 70
; ;SetKeyDelay, 0, 70
; Send, wardrobe{Enter}
; Return


;q::
;Send {LButton Down}
;KeyWait, q, D
;Sleep, 200
;Send {LButton Up}
;Return

;~$LButton::
;    While GetKeyState("LButton", "P"){
;        Click
;        Sleep 100  ;  milliseconds
;    }
;return

;while GetKeyState("LButton")
;    {
;        Click
;        Sleep, 30
;    }
;return

;ScrollLock::
;Click, % GetKeyState("RButton") ? "Up" : "Down", right
;Loop
;{
;Click, down, right
;Sleep 2147483647
;Click, up, right
;Sleep 10
;}
;Return

;F6::
;SetKeyDelay, 0, 70
;Send, /shop{Enter}
;Return

;F7::
;SetKeyDelay, 0, 70
;Send, /challenges{Enter}
;Return

;F8::
;SetKeyDelay, 0, 70
;Send, /warp dungeon_hub{Enter}
;Send, /warp home{Enter}
;Return

;F9::
;SetKeyDelay, 0, 70
;Send, /p leave{Enter}
;Send, /warp home{Enter}
;Return

#IfWinActive Path of Exile
F12::Suspend
F11::Reload