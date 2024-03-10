#IfWinActive Path of Exile

1::
SendInput 12345
Return

;F1::
;Send +{e}
;sleep 300
;Send t
;Return

f::
SendInput {shift down}
Click
SendInput {shift up}
Return

[::
SendInput f
Return

;RButton::
;Send +{Click, right}
;sleep 300
;Send r
;Return

;!RButton::
;Send +{Click, right}
;Return

;t::
;Send +{e}
;sleep 300
;Send r
;Return

#IfWinActive