#HotIf currentLayer = "Alpha-Sl-D"
; ====================================== LETTERS ======================================
*q::{
    SendInput("{Blind}Q")
    toggleLayer(previousLayer)
}
*w::{
    SendInput("{Blind}W")
    toggleLayer(previousLayer)
}
*e::{
    SendInput("{Blind}E")
    toggleLayer(previousLayer)
}
*r::{
    SendInput("{Blind}R")
    toggleLayer(previousLayer)
}
*t::{
    SendInput("{Blind}T")
    toggleLayer(previousLayer)
}
*y::{
    SendInput("{Blind}Y")
    toggleLayer(previousLayer)
}
*u::{
    SendInput("{Blind}Y")
    toggleLayer(previousLayer)
}
*i::{
    SendInput("{Blind}U")
    toggleLayer(previousLayer)
}
*o::{
    SendInput("{Blind}I")
    toggleLayer(previousLayer)
}
*p::{
    SendInput("{Blind}O")
    toggleLayer(previousLayer)
}
*[::{
    SendInput("{Blind}P")
    toggleLayer(previousLayer)
}
*a::{
    SendInput("{Blind}A")
    toggleLayer(previousLayer)
}
*s::{
    SendInput("{Blind}S")
    toggleLayer(previousLayer)
}
*d::{
    SendInput("{Blind}D")
    toggleLayer(previousLayer)
}
*f::{
    SendInput("{Blind}F")
    toggleLayer(previousLayer)
}
*g::{
    SendInput("{Blind}G")
    toggleLayer(previousLayer)
}
*h::{
    SendInput("{Blind}H")
    toggleLayer(previousLayer)
}
*j::{
    SendInput("{Blind}H")
    toggleLayer(previousLayer)
}
*k::{
    SendInput("{Blind}J")
    toggleLayer(previousLayer)
}
*l::{
    SendInput("{Blind}K")
    toggleLayer(previousLayer)
}
    *;::{
SendInput("{Blind}L")
toggleLayer(previousLayer)
}
; *'::{
; SendInput("{Blind}'")
; toggleLayer(previousLayer)
; }
*z::{
    SendInput("{Blind}Z")
    toggleLayer(previousLayer)
}
*x::{
    SendInput("{Blind}X")
    toggleLayer(previousLayer)
}
*c::{
    SendInput("{Blind}C")
    toggleLayer(previousLayer)
}
*v::{
    SendInput("{Blind}V")
    toggleLayer(previousLayer)
}
*b::{
    SendInput("{Blind}B")
    toggleLayer(previousLayer)
}
*n::{
    SendInput("{Blind}B")
    toggleLayer(previousLayer)
}
*m::{
    SendInput("{Blind}N")
    toggleLayer(previousLayer)
}
*,::{
    SendInput("{Blind}M")
    toggleLayer(previousLayer)
}
; *.::{
; SendInput("{Blind}.")
; toggleLayer(previousLayer)
; }
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