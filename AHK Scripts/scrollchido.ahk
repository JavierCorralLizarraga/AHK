CoordMode, Mouse, Screen  ; MUST BE on top!

~LWin::TouchpadScroll("LWin", 2.5) ; !2 times in line, 2.5 is speed multiplier
~RWin::TouchpadScroll("RWin", 2.5) ; -- or add line with Alt (don't work in IE)

TouchpadScroll(Key, Speed = 2)
{
  MouseGetPos, old_x, old_y
  While GetKeyState(Key, "P")
  {
    Sleep, 10
    MouseGetPos, x, y
    if (y > old_y || y < old_y)
        ScrollInactive(Round((old_y - y) * Speed))
    MouseMove, old_x, old_y, 0
  }
}

WheelUp::ScrollInactive(120)
WheelDown::ScrollInactive(-120)

ScrollInactive(WHEEL_DELTA = 120)  ; 120 - up, -120 - down
{
  MouseGetPos, m_x, m_y
  hw_m_target := DllCall( "WindowFromPoint", "int", m_x, "int", m_y )
  SendMessage, 0x20A, WHEEL_DELTA << 16, ( m_y << 16 )|m_x,, ahk_id %hw_m_target%  ; WM_MOUSEWHEEL
}
