#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Mouse, Screen

~LButton::
    MouseGetPos, begin_x, begin_y
    while GetKeyState("LButton")
    {
        MouseGetPos, x, y
        ToolTip, % begin_x ", " begin_y "`n" Abs(begin_x-x) " x " Abs(begin_y-y)
        Sleep, 10
    }
    ToolTip
return