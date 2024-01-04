#HotIf currentLayer = "Sym"
; ====================================== LETTERS ======================================
*q::
*w::
*e::
*r::
*t::
*y::
*u::
*i::
*o::
*p::
*a::
*s::
*d::
*f::
*g::
*h::
*j::
*k::
*l::
*;::
*'::
*z::
*x::
*c::
*v::
*b::
*n::
*m::
*,::{
    try{
        SendInput("{Blind}" StrUpper(sym[A_ThisHotkey]))
    }
}
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
    if(!vimMode){
        toggleLayer("Ext")
    } else {
        SendInput("{Blind}{Esc}")
        toggleLayer("Vim")
    }
    }
RAlt up::toggleLayer("Alpha")
/::toggleLayer("Sym-Sl")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Alpha")
    }
}
; /::{
;     SendInput("{Blind}{Control downR}")
;     if !(released := KeyWait("/", "T0.22")){
;         KeyWait("/")
;     }
;     SendInput("{Blind}{Control up}")
;     if(released && ThisHotkey = A_ThisHotkey) {
;         toggleLayer("Alpha")
;     }
; }
/::Control
.::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{Blind}{RWin downR}")
        KeyWait("/")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}
    
    