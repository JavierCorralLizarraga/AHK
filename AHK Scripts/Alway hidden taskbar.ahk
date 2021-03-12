#SingleInstance Force

taskBarState=0
 F2::
 global taskBarState
    if (taskBarState =1) {
        WinHide ahk_class Shell_TrayWnd
        WinHide Start ahk_class Button
        taskBarState:=0
    }
    else {
        WinShow ahk_class Shell_TrayWnd
        WinShow Start ahk_class Button
        taskBarState:=1
    }
 return