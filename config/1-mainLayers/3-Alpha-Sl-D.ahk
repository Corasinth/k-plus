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
    SendInput("{Blind}U")
    toggleLayer(previousLayer)
}
*i::{
    SendInput("{Blind}I")
    toggleLayer(previousLayer)
}
*o::{
    SendInput("{Blind}O")
    toggleLayer(previousLayer)
}
*p::{
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
    SendInput("{Blind}J")
    toggleLayer(previousLayer)
}
*k::{
    SendInput("{Blind}K")
    toggleLayer(previousLayer)
}
*l::{
    SendInput("{Blind}L")
    toggleLayer(previousLayer)
}
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
    SendInput("{Blind}N")
    toggleLayer(previousLayer)
}
*m::{
    SendInput("{Blind}M")
    toggleLayer(previousLayer)
}
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
RAlt::toggleLayer("Sym-D")
Control::toggleLayer("Sym")
Control & 1::^1
*Shift::toggleLayer("Alpha-Sl")
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
*RAlt::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("RAlt", "T0.22")){
        KeyWait("RAlt")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym")
    }
}
*'::{
    if !(released := KeyWait("'", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("'")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
    }
}
`;::toggleLayer("Sym-D")