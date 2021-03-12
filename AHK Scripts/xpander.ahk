#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

:co:FF::\frac{{}{}}{{}{}}
;imap {{ \left\{<enter>\begin{array}{ll}<enter><tab><++>&<++>&<++>\\<enter><++>&<++>&<++><enter><backspace>\end{array}<enter>\right.
:co:RR::\sqrt{[}{]}{{}{}}
:o:;_::_{{}{}}
:o:;^::^{{}{}}
:o:|^::\Uparrow
:o:|v::\Downarrow
:o:^}::\overbrace{{}{}}{{}{}}
:o:_}::\underbrace{{}{}}{{}{}}
:o:->::\rightarrow
:o:=>::\Rightarrow
:o:<-::\lefarrow
:o:<->::\leftrightarrow
:o:<=>::\Leftrightarrow
:o:>=::\geq
:o:=<::\leq
:o:<=::\leq
:o:_|_::\perp
:o:||::\parallel
:o:=/=::\neq
:o:=~::\approx
:o:;;::\
;"intento de imap -- buscar el "\" e insertar al lado un n para significar que ese simbolo
;"se niega
;-- <esc>/<leader><enter>i<right>n
:o::.::\therefore 
:o:/>::\nearrow
:o:\>::\searrow
:co:AA::\forall
:co:EE::\exists
:o:losreales::\mathbb{{}R{}}
:o:losnaturales::\math{{}N{}}
:o:....::\cdots
:co:SS::\int
:co:SUMA::\sum
:o:+-::\pm
:o:/_ ::\angle
:co:ALFA::\alpha 
:co:BETA::\beta
:co:DELTA::\delta
:co:TETA::\theta 
:co:PI::\Pi
:o:,,::$${left}

Gui, 3:Default  ; Avoid the need to specify 3: for each command below.
Gui, -MinimizeBox -MaximizeBox
Gui, Font, s15, Times New Roman
Gui, Add, Text,, I spent hours building this GUI, honest!
Gui, Font, s9
Gui, Add, Button, W80 Default, OK
Gui, Show,, MsgQuadrilateral
SoundPlay, *-1
Gui, +LastFound
WinWaitClose
ExitApp

3GuiEscape:     ; Needs 3 prefix to work with Gui 3.
3ButtonOK:
Gui, Destroy    ; No need for 3: since that is the default in this thread.
return

3GuiSize:       ; Needs 3 prefix to work with Gui 3.
;Gui, 3:Default ; No need, see above.
GuiControlGet, Button1, Pos
; No need for 3: in the line below because it is the default in this thread AND because Gui, 3:Default covers it:
GuiControl, Move, Button1, % "x" (A_GuiWidth-Button1W)//2
return
:X:aiuda::MsgBox, FF->\frac{}{}`n RR->\sqrt{}{}`n;_->_{}{}`n;^::^{}{}`n|^::\Uparrow`n|v::\Downarrow`n^}::\overbrace{}{}`n_}::\underbrace{}{}`n->::\rightarrow`n=>::\Rightarrow`n<-::\lefarrow`n<->::\leftrightarrow`n<=>::\Leftrightarrow`n>=::\geq`n=<::\leq`n<=::\leq`n_|_::\perp`n||::\parallel`n=/=::\neq`n=~::\approx`n;;::\`n:.::\therefore`n />::\nearrow`n\>::\searrow`nAA::\forall`nEE::\exists`nlosreales::\mathbb{R}`nlosnaturales::\math{N}`n....::\cdots`nSS::\int`nSUMA::\sum`n+-::\pm`n/_ ::\angle`nALFA::\alpha `nBETA::\beta`nDELTA::\delta`nTETA::\theta `nPI::\Pi`n,,::$${left}`n
