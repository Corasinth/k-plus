#HotIf currentLayer = "Sym-Sl-D"
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
        SendInput("{Blind}" (symSl[A_ThisHotkey]))
    }
    toggleLayer(previousLayer)
}

; *q::
; *w::
; *e::
; *r::
; *t::
; *y::
; *u::
; *i::
; *o::
; *p::
; *a::
; *s::
; *d::
; *f::
; *g::
; *h::
; *j::
; *k::
; *l::
; *;::
; *'::
; *z::
; *x::
; *c::
; *v::
; *b::
; *n::
; *m::
; *,::{
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
; RAlt up::toggleLayer("Alpha")
RAlt::toggleLayer("Alpha")
/::toggleLayer("Sym-Sl")
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
; /::{
;     SendInput("{RControl downR}")
;     if !(released := KeyWait("/", "T0.22")){
;         KeyWait("/")
;     }
;     SendInput("{RControl up}")
;     if(released && ThisHotkey = A_ThisHotkey) {
;         toggleLayer("Sym")
;     }
; }
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
    
    