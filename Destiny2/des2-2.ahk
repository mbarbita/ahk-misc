#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_class CEFCLIENT") 
LCtrl::{
    Send "{w down}"
    Send "9"
    ; Send "{LShift down}{LShift up}"
    Sleep 200
    Send "0"
    ; Send "{LCtrl down}{LCtrl up}"
    sleep 100
    Send "e"
    sleep 200
    Send "e"
    Send "{w up}"
    Send "0"
    ; Send "{LCtrl}{LCtrl up}"
}
#HotIf