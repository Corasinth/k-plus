#HotIf currentLayer = "Alpha-Sl-D"
; ====================================== LETTERS ======================================
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
        SendInput("{Blind}" StrUpper(alpha[A_ThisHotkey]))
    }
    toggleLayer(previousLayer)
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
RAlt::toggleLayer("Sym-D")
/::toggleLayer("Alpha-Sl")
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory")
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
.::{
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
    
    