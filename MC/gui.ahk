Gui, Add, Radio, gCheck vR1 Checked, None
Gui, Add, Radio, gCheck vR2, Combat
Gui, Add, Radio, gCheck vR3, Mining
Gui, Add, Radio, gCheck vR4, Fishing
Gui, Show, W200
Gui, Submit, NoHide
; MsgBox, %Suspend%
Suspend, On
; ss = 1
Return
 
GuiClose:
ExitApp


Check:
    Gui, Submit, NoHide
    if (R1){
        Suspend, On
    }

    if (R2){
        Suspend, Off
    }

    if (R3){
        Suspend, Off
    }
    if (R4){
        Suspend, Off
    }
Return



#IfWinActive Minecraft
Toggle1 = 0
Toggle2 = 0
#MaxThreadsPerHotkey 2
q::
    if (R1) {
        Send, q
        }

    if (R2) {
        Toggle1 := !Toggle1
        While Toggle1{
            Click
            ; Send, a
            sleep 200
        }
    }
        
    if (R3) {
        Toggle2 := !Toggle2
        if (Toggle2) {
        Send {LButton Down}
        }
        if (!Toggle2) {
        Send {LButton Up}
        }

    ; Send {LButton Up}
    }

    if (R4) {
    ; Click, right
    ; Send, {Numpad0}
    }
Return

`::
    Click, right
Return

F4::
    Send, /
    Sleep, 70
    ; SetKeyDelay, 0, 70
    Send, pets{Enter}
Return

F8::
    Send, /
    Sleep, 70
    ; SetKeyDelay, 0, 70
    Send, wardrobe{Enter}
Return

; F6::
;     SetKeyDelay, 0, 70
;     Send, /shop{Enter}
; Return

F6::
SetKeyDelay, 0, 70
Send, /warpforge{Enter}
Return

F7::
SetKeyDelay, 0, 70
Send, /effects{Enter}
Return

; F8::
    ; SetKeyDelay, 0, 70
    ; Send, /warp dungeon_hub{Enter}
    ; Send, /warp home{Enter}
; Return

; F9::
    ; SetKeyDelay, 0, 70
    ; Send, /p leave{Enter}
    ; Send, /warp home{Enter}
; Return


F12::
    Suspend
Return