#IfWinActive Forge of Empires
#KeyHistory, 0

resetxycount()

speed := 5

resetxycount()
{
    global x := 325
    global y := 1045
    global count := 0
    Return
}

jx()
{
    random, jx, -8, 8
    Return jx
}

jx2()
{
    random, jx2, -3, 3
    Return jx2
}

jy()
{
    random, jy, -3, 3
    Return jy
}

`::
    Click
Return

F1::
    MouseMove x + jx(), y + jy(), speed
    Click
    x := x + 114
    count := count + 1
    if (count = 5) {
        ;x := x - 107 * 5
		x := 325
        count := 0
    }
    Return

F2::
    MouseMove x + jx2() + 32, y + jy() - 25, speed
    Click
Return

F3::
    MouseMove 960 + jx(), 995 + jy(), speed
    Click
    resetxycount()
Return

F4::
resetxycount()
MouseMove x, y - 200, speed
Return

;F5::
;MouseMove 310, 615, speed
;Click
;Return

F6::
MouseMove 310, 675, speed
Click
Return

; F12::Suspend
F11::Reload
#IfWinActive Forge of Empires
