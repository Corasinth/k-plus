#HotIf currentLayer = "CSym"
; ====================================== LETTERS ======================================
*q::SendInput("{Blind}~")
        *w::SendInput("{Blind}{!}")
        *e::SendInput("{Blind}?")
        *r::SendInput("{Blind}/")
        *t::SendInput("{Blind}—")
        *y::SendInput("{Blind}«")
        *u::SendInput("{Blind}«")
        *i::SendInput("{Blind}\")
        *o::SendInput("{Blind};")
        *p::SendInput("{Blind}:")
        *a::SendInput("{Blind}{{}")
        *s::SendInput("{Blind}(")
        *d::SendInput("{Blind}.")
        *f::SendInput("{Blind},")
        *g::SendInput("{Blind}&")
        *h::SendInput("{Blind}{+}")
        *j::SendInput("{Blind}{+}")
        *k::SendInput("{Blind}'")
        *l::SendInput("{Blind}`"")
        *;::SendInput("{Blind})")
        *'::SendInput("{Blind}{}}")
        *z::SendInput("{Blind}€")
        *x::SendInput("{Blind}$")
        *c::SendInput("{Blind}=")
        *v::SendInput("{Blind}{#}")
        *b::SendInput("{Blind}¿")
        *n::SendInput("{Blind}¿")
        *m::SendInput("{Blind}``")
        *,::SendInput("{Blind}-")
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
        SendInput("{Blind}{Esc}")
        toggleLayer("Vim")
    }
RAlt up::toggleLayer("CAlpha")
.::toggleLayer("CSym-Sl")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-II")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CAlpha")
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CAlpha")
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
    
    