#HotIf currentLayer = "pwgmcduf"
; ====================================== LETTERS ======================================
a::{
    SendInput("{Blind}p")
    toggleLayer("base")
}
s::{
    SendInput("{Blind}w")
    toggleLayer("base")
}
d::{
    SendInput("{Blind}g")
    toggleLayer("base")
}
f::{
    SendInput("{Blind}m")
    toggleLayer("base")
}
j::{
    SendInput("{Blind}c")
    toggleLayer("base")
}
k::{
    SendInput("{Blind}d")
    toggleLayer("base")
}
l::{
    SendInput("{Blind}u")
    toggleLayer("base")
}
`;::{
    SendInput("{Blind}f")
    toggleLayer("base")
}

; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
'::^BackSpace
q::toggleLayer("base")    