#HotIf currentLayer = "PWGMCDUF"
; ====================================== LETTERS ======================================
a::{
    SendInput("{Blind}P")
    toggleLayer("base")
}
s::{
    SendInput("{Blind}W")
    toggleLayer("base")
}
d::{
    SendInput("{Blind}G")
    toggleLayer("base")
}
f::{
    SendInput("{Blind}M")
    toggleLayer("base")
}
j::{
    SendInput("{Blind}C")
    toggleLayer("base")
}
k::{
    SendInput("{Blind}D")
    toggleLayer("base")
}
l::{
    SendInput("{Blind}U")
    toggleLayer("base")
}
`;::{
    SendInput("{Blind}F")
    toggleLayer("base")
}

; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
'::^BackSpace
q::toggleLayer("base")    