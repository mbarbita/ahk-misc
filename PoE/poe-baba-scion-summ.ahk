#SingleInstance Ignore
#IfWinActive Path of Exile
#KeyHistory, 0

`::
Send, 12345
Return

~w::
Send, t
Sleep, 500
Send, w
Return

~e::
Send, e
Sleep, 200
Send, ^e
Return


F4::
BlockInput, On
Send, {Enter}
Send /Hideout{Enter}
Return

clipboard := ""
F5::
Send, {Enter}
SendRaw, %clipboard%
Return

F6::
loop
{
Sleep, 180000
MouseMove, 20, 0, 50, R
Sleep, 180000
MouseMove, -20, 0, 50, R
}
Return

F11::Reload
F12::Suspend
#IfWinActive Path of Exile