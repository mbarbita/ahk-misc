#IfWinActive Minecraft
#KeyHistory, 0

;~$LButton::
;		Sleep 200
;    While GetKeyState("LButton", "P"){
;        Click
;        Sleep 200  ;  milliseconds
;    }
;return



;toggle = 0
;#MaxThreadsPerHotkey 2
;q::
;    Toggle := !Toggle
;     While Toggle{
;        Click
;        sleep 200
;    }
;Return




q::
Sleep, 200
Send {LButton Down}
KeyWait, q, D
Send {LButton Up}
Return

`::
Click, right
Return










;q::
;Click, right
;Sleep, 299
;Click, right
;Return

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

F6::
SetKeyDelay, 0, 70
Send, /warpforge{Enter}
Return

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
F12::Suspend
F11::Reload
