#HotIf currentLayer = "CAlpha"
; ====================================== LETTERS ======================================
*q:: SendInput("{Blind}w")
        *w:: SendInput("{Blind}l")
        *e:: SendInput("{Blind}y")
        *r:: SendInput("{Blind}p")
        *t:: SendInput("{Blind}k")
        *y:: SendInput("{Blind}y")
        *u:: SendInput("{Blind}z")
        *i:: SendInput("{Blind}x")
        *o:: SendInput("{Blind}o")
        *p:: SendInput("{Blind}u")
        *a:: SendInput("{Blind}c")
        *s:: SendInput("{Blind}r")
        *d:: SendInput("{Blind}s")
        *f:: SendInput("{Blind}t")
        *g:: SendInput("{Blind}b")
        *h:: SendInput("{Blind}h")
        *j:: SendInput("{Blind}f")
        *k:: SendInput("{Blind}n")
        *l:: SendInput("{Blind}e")
        *;:: SendInput("{Blind}i")
        *':: SendInput("{Blind}a")
        *z:: SendInput("{Blind}j")
        *x:: SendInput("{Blind}v")
        *c:: SendInput("{Blind}d")
        *v:: SendInput("{Blind}g")
        *b:: SendInput("{Blind}q")
        *n:: SendInput("{Blind}n")
        *m:: SendInput("{Blind}m")
        *,:: SendInput("{Blind}h")
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
SendInput("{Blind}{Esc}")
        toggleLayer("Vim")
}
RAlt::toggleLayer("CSym-D")
.::toggleLayer("CAlpha-Sl-D")
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
Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey){
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
    }
}
    
    