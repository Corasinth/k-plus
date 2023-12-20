#HotIf currentLayer = "Sym-D"
; ====================================== LETTERS ======================================
*q::SendInput("{Blind}~")
        *q up::toggleLayer(previousLayer)
        *w::SendInput("{Blind}{!}")
        *w up::toggleLayer(previousLayer)
        *e::SendInput("{Blind}?")
        *e up::toggleLayer(previousLayer)
        *r::SendInput("{Blind}/")
        *r up::toggleLayer(previousLayer)
        *t::SendInput("{Blind}—")
        *t up::toggleLayer(previousLayer)
        *y::SendInput("{Blind}«")
        *y up::toggleLayer(previousLayer)
        *u::SendInput("{Blind}«")
        *u up::toggleLayer(previousLayer)
        *i::SendInput("{Blind}\")
        *i up::toggleLayer(previousLayer)
        *o::SendInput("{Blind};")
        *o up::toggleLayer(previousLayer)
        *p::SendInput("{Blind}:")
        *p up::toggleLayer(previousLayer)
        *a::SendInput("{Blind}{{}")
        *a up::toggleLayer(previousLayer)
        *s::SendInput("{Blind}(")
        *s up::toggleLayer(previousLayer)
        *d::SendInput("{Blind}.")
        *d up::toggleLayer(previousLayer)
        *f::SendInput("{Blind},")
        *f up::toggleLayer(previousLayer)
        *g::SendInput("{Blind}&")
        *g up::toggleLayer(previousLayer)
        *h::SendInput("{Blind}{+}")
        *h up::toggleLayer(previousLayer)
        *j::SendInput("{Blind}{+}")
        *j up::toggleLayer(previousLayer)
        *k::SendInput("{Blind}'")
        *k up::toggleLayer(previousLayer)
        *l::SendInput("{Blind}`"")
        *l up::toggleLayer(previousLayer)
        *;::SendInput("{Blind})")
        *; up::toggleLayer(previousLayer)
        *'::SendInput("{Blind}{}}")
        *' up::toggleLayer(previousLayer)
        *z::SendInput("{Blind}€")
        *z up::toggleLayer(previousLayer)
        *x::SendInput("{Blind}$")
        *x up::toggleLayer(previousLayer)
        *c::SendInput("{Blind}=")
        *c up::toggleLayer(previousLayer)
        *v::SendInput("{Blind}{#}")
        *v up::toggleLayer(previousLayer)
        *b::SendInput("{Blind}¿")
        *b up::toggleLayer(previousLayer)
        *n::SendInput("{Blind}¿")
        *n up::toggleLayer(previousLayer)
        *m::SendInput("{Blind}``")
        *m up::toggleLayer(previousLayer)
        *,::SendInput("{Blind}-")
        *, up::toggleLayer(previousLayer)
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
        toggleLayer("Ext")
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
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
        toggleLayer(previousLayer)
    }
}
    
    