#IfWinActive LongTermViewer

global datas := ""
global datae := ""

F8::
    WinMaximize, LongTermViewer

    salveaza("01", "9&", 500, 30000, 3000)
    salveaza("02", "10&", 500, 30000, 3000)
    salveaza("03", "11&", 500, 30000, 3000)
    salveaza("04", "12&", 500, 30000, 3000)
    salveaza("05", "13&", 500, 30000, 3000)
    salveaza("06", "14&", 500, 30000, 3000)
    salveaza("07", "15&", 500, 30000, 3000)

    salveaza("08", "16&", 500, 30000, 3000)
    salveaza("09", "17&", 500, 30000, 3000)
    salveaza("10", "4&", 500, 30000, 3000)
    salveaza("11", "5&", 500, 30000, 3000)
    salveaza("12", "6&", 500, 30000, 3000)
    salveaza("13", "7&", 500, 30000, 3000)

    salveaza("dumi", "55&", 500, 30000, 3000)
Return

; fn - filename
; mp - menu position
; s1,s2,s3 - delays(milisecs)
salveaza(fn,mp,s1,s2,s3)
    {
        SetKeyDelay, 50, 50
        SetControlDelay -1

        ; Sel raport
        WinMenuSelectItem, A, , 2&, 1&, % mp
        Sleep, % s1

        ; Set Range
        ControlClick, x764 y942, A
        Sleep, % s1

        ; start data, end data
        if (datas <> "")
            {
                ControlFocus, SysDateTimePick322, A
                ControlSend, SysDateTimePick322, % datas, A
                Sleep, % s1

                ControlFocus, SysDateTimePick323, A
                ControlSend, SysDateTimePick323, % datae, A
                Sleep, % s1
            }

        ; Start Time
        ControlFocus, SysDateTimePick321, A
        ControlSend, SysDateTimePick321, 01:00:00, A
        Sleep, % s1

        ; End Time
        ControlFocus, SysDateTimePick324, A
        ControlSend, SysDateTimePick324, 00:00:00, A
        Sleep, % s1

        ; Set Range - OK
        ControlClick, OK, A
        Sleep, % s2

        ; Menu-File-CSVExport
        WinMenuSelectItem, A, , File, CSV Export...
        Sleep, % s1

        ; Choose Hourly
        ControlClick, ComboBox1, Trend data CSV export
        Sleep, % s1

        ControlSend, ComboBox1, {h}{ENTER}, Trend data CSV export
        Sleep, % s1

        ; Save to file
        ControlClick, Button3, A
        Sleep, % s1

        ; Set file name
        ControlSetText, Edit1, % fn, A
        Sleep, % s1

        ; Save
        ControlClick, Button2, A
        Sleep, % s3

        ; Success
        ControlClick, Button1, A
        Sleep, % s1

        ; Close CSV Export
        ControlClick, Button1, A
        Sleep, % s1

        ; Close Window
        Click, 1273 32
        Sleep, % s1
    }

#IfWinActive LongTermViewer