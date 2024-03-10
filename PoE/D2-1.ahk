#IfWinActive Destiny
#KeyHistory, 0

#Persistent
#MaxThreadsPerHotkey 2
toggle := False

; c UP::
;`::
;    toggle := !toggle

;    ; Loop {
;        If (!toggle) {
;        send,{c UP}
;    ;   break
;        }
;    If (toggle) {
;        send,{c DOWN}
;        }
;    ; sleep 100
;    ; }
;Return

F9::
    Loop {
         MouseMove, 0, -15, 100, R ; Relative move
         Sleep, 60000
         MouseMove, 0, 15, 100, R ; Relative move
        }
return

`::
Click, Left, Down
Sleep, 900
Click, Right, Up
Return

F12::Suspend
F11::Reload
#IfWinActive Destiny

