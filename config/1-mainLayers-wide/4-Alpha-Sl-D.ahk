#HotIf currentLayer = "Alpha-Sl-D"
; ====================================== LETTERS ======================================
*q::{
    SendInput("{Blind}W")
    toggleLayer(previousLayer)
}
*w::{
    SendInput("{Blind}L")
    toggleLayer(previousLayer)
}
*e::{
    SendInput("{Blind}Y")
    toggleLayer(previousLayer)
}
*r::{
    SendInput("{Blind}P")
    toggleLayer(previousLayer)
}
*t::{
    SendInput("{Blind}K")
    toggleLayer(previousLayer)
}
*y::{
    ; SendInput("{Blind}Y")
    toggleLayer(previousLayer)
}
*u::{
    SendInput("{Blind}Z")
    toggleLayer(previousLayer)
}
*i::{
    SendInput("{Blind}M")
    toggleLayer(previousLayer)
}
*o::{
    SendInput("{Blind}O")
    toggleLayer(previousLayer)
}
*p::{
    SendInput("{Blind}U")
    toggleLayer(previousLayer)
}
; *[::{
;     SendInput("{Blind}P")
;     toggleLayer(previousLayer)
; }
*a::{
    SendInput("{Blind}C")
    toggleLayer(previousLayer)
}
*s::{
    SendInput("{Blind}R")
    toggleLayer(previousLayer)
}
*d::{
    SendInput("{Blind}S")
    toggleLayer(previousLayer)
}
*f::{
    SendInput("{Blind}T")
    toggleLayer(previousLayer)
}
*g::{
    SendInput("{Blind}B")
    toggleLayer(previousLayer)
}
*h::{
    ; SendInput("{Blind}H")
    toggleLayer(previousLayer)
}
*j::{
    SendInput("{Blind}F")
    toggleLayer(previousLayer)
}
*k::{
    SendInput("{Blind}N")
    toggleLayer(previousLayer)
}
*l::{
    SendInput("{Blind}E")
    toggleLayer(previousLayer)
}
*;::{
    SendInput("{Blind}I")
    toggleLayer(previousLayer)
}
*'::{
    SendInput("{Blind}A")
    toggleLayer(previousLayer)
}
*z::{
    ; SendInput("{Blind}Z")
    toggleLayer(previousLayer)
}
*x::{
    SendInput("{Blind}V")
    toggleLayer(previousLayer)
}
*c::{
    SendInput("{Blind}D")
    toggleLayer(previousLayer)
}
*v::{
    SendInput("{Blind}G")
    toggleLayer(previousLayer)
}
*b::{
    SendInput("{Blind}J")
    toggleLayer(previousLayer)
}
*n::{
    ; SendInput("{Blind}B")
    toggleLayer(previousLayer)
}
*m::{
    SendInput("{Blind}X")
    toggleLayer(previousLayer)
}
*,::{
    SendInput("{Blind}H")
    toggleLayer(previousLayer)
}
*.::{
    SendInput("{Blind}Q")
    toggleLayer(previousLayer)
}
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::{
    global
    capslockReleased := 0
    toggleLayer("Ext")
}
RAlt::toggleLayer("Sym-D")
Shift::toggleLayer("Alpha-Sl")
Shift up::{
    global
    shiftReleased := 1
}
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-I")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym")
    }
}
*Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym")
    }
}
*\::{
    if !(released := KeyWait("\", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("\")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
    }
}
*\ up::toggleLayer(previousLayer)