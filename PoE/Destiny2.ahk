#IfWinActive Destiny
#KeyHistory, 0

#Persistent
#MaxThreadsPerHotkey 2
toggle := False

; c UP::
`::
    toggle := !toggle

    ; Loop {
        If (!toggle) {
        send,{c UP}
    ;   break
        }
    If (toggle) {
        send,{c DOWN}
        }
    ; sleep 100
    ; }
Return

F9::
    Loop {
         MouseMove, 0, -15, 100, R ; Relative move
         Sleep, 60000
         MouseMove, 0, 15, 100, R ; Relative move
        }
return


coordmode, mouse, screen
mousegetpos, sx, sy
settimer, check, 60000
;return

check:
mousegetpos, cx, cy
if (cx = sx or cy = sy)
{
  ; mouse has not moved
         MouseMove, 0, -15, 100, R ; Relative move
         Sleep, 2000
         MouseMove, 0, 15, 100, R ; Relative move

}      
return

F12::Suspend
F11::Reload
#IfWinActive Destiny

