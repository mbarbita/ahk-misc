#KeyHistory, 0

Gui, Add, Text, vCountW, W: 100
Gui, Add, Text, vCountE, E: 100
Gui, Show, w200 x1445 y957

CountW := 100
CountE := 100

#IfWinActive Path of Exile

~RButton::   ;Default behavior is to block keystroke, ~ allows it to pass through

BlockInput, On

if ((CountW > 3) or (CountE > 5)) {
SoundPlay, %A_WinDir%\Media\chord.wav, Wait
}

;SetTimer, Steel, -2500 ; Wait for more presses within a 400 millisecond window.

	;Send, t

;	KeyWait, h  ;Wait for h to be released
	
	CountW := CountW - 1
	CountE := CountE - 1
	
	GuiControl,,CountW, W: %CountW%	
	GuiControl,,CountE, E: %CountE%
	
	if (CountW = 0) {
	;SoundPlay, %A_WinDir%\Media\speech on.wav, Wait
	CountW := 3
	Sleep, 1000
	Send, w
	GuiControl,,CountW, W: %CountW%
	}
	
	if (CountE = 0) {
	;SoundPlay, %A_WinDir%\Media\chord.wav, Wait
	CountE := 5
	Sleep, 1000
	Send, e
	GuiControl,,CountE, E: %CountE%
	}
Return

~WheelDown::
BlockInput, On
Send, t
Return

;~LAlt::
;BlockInput, Send
;Send, t
;BlockInput, Send
;CountW := 0
;CountE := 0
;GuiControl,,CountW, W: %CountW%
;GuiControl,,CountE, E: %CountE%
;return

~w::
BlockInput, On
CountW := 3
GuiControl,,CountW, W: %CountW%
return

~e::
BlockInput, On
CountE := 5
GuiControl,,CountE, E: %CountE%
return

Steel:
BlockInput, On
Send, {LControl Down}q{LControl Up}
return

1::
BlockInput, On
;Send, r
Send, {LShift down}12345{LShift up}
;Sleep, 400
;Send, t
Return

~2::
;BlockInput, On
Send, {LCtrl down}q{LCtrl up}
;Send, t
Return

~3::
;BlockInput, On
Send, {LCtrl down}w{LCtrl up}
Return

~4::
;BlockInput, On
Send, {LCtrl down}e{LCtrl up}
Return

F4::
BlockInput, On
;SetKeyDelay, 0, 70
Send, {Enter}
Send /Hideout{Enter}
Return

F6::
SetKeyDelay, 0, 70
Click, Right
Send, {Home}
Send, Heist {Enter}
Return

`::
BlockInput, On
CountW := 100
CountE := 100
GuiControl,,CountW, W: %CountW%
GuiControl,,CountE, E: %CountE%
Return

#IfWinActive Path of Exile

F12::Suspend
F11::Reload

GuiClose:
  ExitApp
Return
