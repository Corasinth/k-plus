#HotIf currentLayer = "CSym-Sl-D"
; ====================================== LETTERS ======================================
*q::SendInput("{Blind}°")
    *q up::toggleLayer(previousLayer)
        *w::SendInput("{Blind}<")
    *w up::toggleLayer(previousLayer)
        *e::SendInput("{Blind}[")
    *e up::toggleLayer(previousLayer)
        *r::SendInput("{Blind}{^}")
    *r up::toggleLayer(previousLayer)
        *t::SendInput("{Blind}–")
    *t up::toggleLayer(previousLayer)
        *y::SendInput("{Blind}»")
    *y up::toggleLayer(previousLayer)
        *u::SendInput("{Blind}»")
    *u up::toggleLayer(previousLayer)
        *i::SendInput("{Blind}@")
    *i up::toggleLayer(previousLayer)
        *o::SendInput("{Blind}]")
    *o up::toggleLayer(previousLayer)
        *p::SendInput("{Blind}>")
    *p up::toggleLayer(previousLayer)
        *a::SendInput("{Blind}{Numpad1}")
    *a up::toggleLayer(previousLayer)
        *s::SendInput("{Blind}{Numpad2}")
    *s up::toggleLayer(previousLayer)
        *d::SendInput("{Blind}{Numpad3}")
    *d up::toggleLayer(previousLayer)
        *f::SendInput("{Blind}{Numpad4}")
    *f up::toggleLayer(previousLayer)
        *g::SendInput("{Blind}|")
    *g up::toggleLayer(previousLayer)
        *h::SendInput("{Blind}%")
    *h up::toggleLayer(previousLayer)
        *j::SendInput("{Blind}%")
    *j up::toggleLayer(previousLayer)
        *k::SendInput("{Blind}{Numpad7}")
    *k up::toggleLayer(previousLayer)
        *l::SendInput("{Blind}{Numpad8}")
    *l up::toggleLayer(previousLayer)
        *;::SendInput("{Blind}{Numpad9}")
    *; up::toggleLayer(previousLayer)
        *'::SendInput("{Blind}{Numpad0}")
    *' up::toggleLayer(previousLayer)
        *z::SendInput("{Blind}¶")
    *z up::toggleLayer(previousLayer)
        *x::SendInput("{Blind}§")
    *x up::toggleLayer(previousLayer)
        *c::SendInput("{Blind}{Numpad5}")
    *c up::toggleLayer(previousLayer)
        *v::SendInput("{Blind}*")
    *v up::toggleLayer(previousLayer)
        *b::SendInput("{Blind}¡")
    *b up::toggleLayer(previousLayer)
        *n::SendInput("{Blind}¡")
    *n up::toggleLayer(previousLayer)
        *m::SendInput("{Blind}_")
    *m up::toggleLayer(previousLayer)
        *,::SendInput("{Blind}{Numpad6}")
    *, up::toggleLayer(previousLayer)
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
        SendInput("{Blind}{Esc}")
        toggleLayer("Vim")
    }
; RAlt up::toggleLayer("CAlpha")
.::toggleLayer("CSym-Sl")
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-II")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CSym")
    }
}
*Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CSym")
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
    
    