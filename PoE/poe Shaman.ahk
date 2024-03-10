#IfWinActive Path of Exile

MButton::q
Return

F2::
Loop
{
SendInput {Shift Down}
MouseClick, Right, 600, 390
SendInput {Shift Up}

Sleep 1000

SendInput {Shift Down}
MouseClick, Right, 600, 390
SendInput {Shift Up}


GetKeyState, ftrei, F3, P
	if ftrei = D
	{
		MsgBox AFK OFF
		break
		}

Sleep 5000

GetKeyState, ftrei, F3, P
	if ftrei = D
{
		MsgBox AFK OFF
		break
		}

}
Return


~Space & r::
BlockInput ON
SendInput +r
Sleep 600
SendInput d
BlockInput OFF
Return

#IfWinActive