#HotIf currentLayer = "sym2"
; ====================================== LETTERS ======================================
a::{
    SendInput("{Blind}{{}}{Left}")
    toggleLayer("base")
}
s::{
    SendInput("{Blind}(){Left}")
    toggleLayer("base")
}
d::{
    SendInput("{Blind}?")
    toggleLayer("base")
}
f::{
    SendInput("{Blind}[]{Left}")
    toggleLayer("base")
}
j::{
    SendInput("{Blind}-")
    toggleLayer("base")
}
k::{
    SendInput("{Blind}/")
    toggleLayer("base")
}
l::{
    SendInput("{Blind}+")
    toggleLayer("base")
}
`;::{
    SendInput("{Blind}$")
    toggleLayer("base")
}

; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
'::^BackSpace
    