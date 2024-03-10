#IfWinActive Minecraft
#KeyHistory, 0

;toggle = 0
;#MaxThreadsPerHotkey 2
;q::
;    Toggle := !Toggle
;     While Toggle{
;        Click
;        sleep 200
;    }
;return

; q::
; Click, right
; Sleep, 299
; Click, right
; Return

q::
Sleep, 200
Send {LButton Down}
KeyWait, q, D
Send {LButton Up}
Return

;~$LButton::
;    While GetKeyState("LButton", "P"){
;        Click
;        Sleep 100  ;  milliseconds
;    }
;return

;mining
;q::
;Click % GetKeyState("LButton") ? "Up" : "Down"
;Return

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


;toggle = 0
;#MaxThreadsPerHotkey 2

;F12::
;    Toggle := !Toggle
;     While Toggle{
;        Click
;       Send a
;        sleep 500
;    }
;return


`::
Click, right
Return

F4::
Send, /
Sleep, 70
;SetKeyDelay, 0, 70
Send, pets{Enter}
Return

F8::
Send, /
Sleep, 70
;SetKeyDelay, 0, 70
Send, wardrobe{Enter}
Return

;F6::
;SetKeyDelay, 0, 70
;Send, /shop{Enter}
;Return

F7::
SetKeyDelay, 0, 70
Send, /effects{Enter}
Return

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

#IfWinActive Minecraft
F10::Suspend
F11::Reload
