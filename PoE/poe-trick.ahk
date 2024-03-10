#IfWinActive Path of Exile
q::+q
Return

f::
SendInput {enter}/remaining{enter}
Return

[::a
Return

]::s
Return

\::f
Return

s::
SendInput 3
Return

RButton::
a := 800
b := 800
SendInput q
Sleep a
SendInput w
;Sleep b
;SendInput e
Return

#IfWinActive