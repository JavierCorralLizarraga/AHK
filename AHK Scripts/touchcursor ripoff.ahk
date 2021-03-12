#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Space & w:: ; space+w
   Loop
   {
      SendInput, % "{up}" ; up
      Sleep, 150
   }
   ; replace "Or" with "And" keywords for to see difference
   Until, !(GetKeyState("w", "P"))
   Return

Space & s:: ; space+s
   Loop
   {
      SendInput, % "{down}" ; down
      Sleep, 150
   }
   ; replace "Or" with "And" keywords for to see difference
   Until, !(GetKeyState("s", "P"))
   Return

Space & a:: ; space+a
   Loop
   {
      SendInput, % "{left}" ; left
      Sleep, 150
   }
   ; replace "Or" with "And" keywords for to see difference
   Until, !(GetKeyState("a", "P"))
   Return

Space & d:: ; space+d
   Loop
   {
      SendInput, % "{right}" ; right
      Sleep, 150
   }
   ; replace "Or" with "And" keywords for to see difference
   Until, !(GetKeyState("d", "P"))
   Return