WinActivate, ahk_class Shell_TrayWnd  ; may be needed if auto-hide is on
PostMessage, 0x112, 0xF000,,, ahk_class Shell_TrayWnd  ; SC_SIZE
Send {Right}
Send {left 2} 
Send ^{left 30}
Send {Enter}