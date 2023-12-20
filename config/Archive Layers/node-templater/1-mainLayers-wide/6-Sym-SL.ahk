#HotIf currentLayer = "Sym-Sl"
; ====================================== LETTERS ======================================
*q::SendInput("{Blind}°")
        *w::SendInput("{Blind}<")
        *e::SendInput("{Blind}[")
        *r::SendInput("{Blind}{^}")
        *t::SendInput("{Blind}–")
        *y::SendInput("{Blind}»")
        *u::SendInput("{Blind}»")
        *i::SendInput("{Blind}@")
        *o::SendInput("{Blind}]")
        *p::SendInput("{Blind}>")
        *a::SendInput("{Blind}{Numpad1}")
        *s::SendInput("{Blind}{Numpad2}")
        *d::SendInput("{Blind}{Numpad3}")
        *f::SendInput("{Blind}{Numpad4}")
        *g::SendInput("{Blind}|")
        *h::SendInput("{Blind}%")
        *j::SendInput("{Blind}%")
        *k::SendInput("{Blind}{Numpad7}")
        *l::SendInput("{Blind}{Numpad8}")
        *;::SendInput("{Blind}{Numpad9}")
        *'::SendInput("{Blind}{Numpad0}")
        *z::SendInput("{Blind}¶")
        *x::SendInput("{Blind}§")
        *c::SendInput("{Blind}{Numpad5}")
        *v::SendInput("{Blind}*")
        *b::SendInput("{Blind}¡")
        *n::SendInput("{Blind}¡")
        *m::SendInput("{Blind}_")
        *,::SendInput("{Blind}{Numpad6}")
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
        toggleLayer("Ext")
    }
.::toggleLayer("Sym")
RAlt up::toggleLayer("Alpha")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I")
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
        SendInput("{Blind}{RWin downR}")
        KeyWait("/")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}
    
    