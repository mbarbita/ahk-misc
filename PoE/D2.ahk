#IfWinActive Destiny
#KeyHistory, 0

#Persistent
#MaxThreadsPerHotkey 2
toggle := False

c UP::
toggle := !toggle

Loop {
    If (!toggle) {
    send,{c UP}
        break
    }
    send,{c DOWN}
sleep 100
}
Return


#IfWinActive Destiny
F12::Suspend
F11::Reload
