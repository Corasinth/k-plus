#HotIf currentLayer = "Directory-III"
; ====================================== LETTERS ======================================
; q::toggleLayer("")
; Swap to main layers
w::{
    SendInput("^!+#w")
    Suspend(-1)
}
; Swap to code layers
e::{
    SendInput("^!+#e")
    Suspend(-1)
}
; Swap to misc layers
; r::{
;     SendInput("^!+#r")
;     Suspend(-1)
; }
; t::toggleLayer("")
; y::toggleLayer("")
; u::toggleLayer("")
; i::toggleLayer("")
; o::toggleLayer("")

a::toggleLayer("Diacritics")
s::toggleLayer("Alchemical")
d::toggleLayer("Math")
f::toggleLayer("Greek")
g::toggleLayer("Greek-Sl")
; h::toggleLayer("")
; j::toggleLayer("")
; k::toggleLayer("")
; l::toggleLayer("")
; `;::toggleLayer("")

; x::toggleLayer("")
c::toggleLayer("Morse")
; v::toggleLayer("")
; b::toggleLayer("")
; n::toggleLayer("")
; m::toggleLayer("")
; ,::toggleLayer("")
; .::toggleLayer("")
; ====================================== ADDITIONAL KEYS ======================================
*RAlt::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("RAlt", "T0.18")){
        KeyWait("RAlt")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer(previousLayer)
    }
}