#HotIf currentLayer = "Sym-D"
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
        SendInput("{Blind}" (sym[A_ThisHotkey]))
    }
    toggleLayer(previousLayer)
}
; *q up::
; *w up::
; *e up::
; *r up::
; *t up::
; *y up::
; *u up::
; *i up::
; *o up::
; *p up::
; *a up::
; *s up::
; *d up::
; *f up::
; *g up::
; *h up::
; *j up::
; *k up::
; *l up::
; *; up::
; *' up::
; *z up::
; *x up::
; *c up::
; *v up::
; *b up::
; *n up::
; *m up::
; *, up::{
;     toggleLayer(previousLayer)
; }
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
    if(!vimMode){
        toggleLayer("Ext")
    } else {
        SendInput("{Blind}{Esc}")
        toggleLayer("Vim")
    }
}
RAlt::toggleLayer("Sym")
.::toggleLayer("Sym-Sl-D")
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
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Alpha")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
        toggleLayer(previousLayer)
    }
}
    
    