#IfWinActive Path of Exile

F9::
InputBox, UserInput, Buy:, , , 200, 150, , , , ,3
if ErrorLevel
    ;MsgBox, CANCEL was pressed.
else
    ;MsgBox, You entered "%UserInput%"
	Loop %UserInput% {
	Click, Right
	Sleep 1000
	}

Return


#IfWinActive