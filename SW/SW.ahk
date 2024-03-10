#IfWinActive Secret World
#KeyHistory, 0

#Persistent

F9::
Loop {
MouseMove, 0, -15, 100, R ; Relative move
Sleep, 60000
MouseMove, 0, 15, 100, R ; Relative move
}
return

#IfWinActive Secret World
F12::Suspend
F11::Reload
