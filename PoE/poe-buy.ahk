#IfWinActive Path of Exile

F2::
InputBox, UserInput, Buy ,Nr , ,50 ,100 , , , , , 100
if ErrorLevel
    MsgBox, CANCEL was pressed.
else
{
	;x := UserInput + 1
    ;MsgBox % "You entered" . %x%
    ;MsgBox, You entered %x%
	Send, {Control down}
	Loop, %UserInput%
	{
	
	if GetKeyState("End", "P")
		break

	MouseClick, left
	;SendInput q
	Sleep, 150
	}
	Send, {Control up}
}

#IfWinActive