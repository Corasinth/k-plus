#HotIf currentLayer = "Directory"
; ====================================== LETTERS ======================================
q::toggleLayer("Morse")
w::toggleLayer("Func-D")
e::toggleLayer("Greek-Sl")
r::toggleLayer("Alchemical")
t::toggleLayer("Diacritics")
y::toggleLayer("Media")
u::toggleLayer("Math")
i::toggleLayer("Greek")
o::toggleLayer("Func")

a::toggleLayer("Alpha")
s::toggleLayer("Alpha-Sl")
d::toggleLayer("Sym")
f::toggleLayer("Sym-Sl")
g::toggleLayer("Sym-D")
h::toggleLayer("CSym-D")
j::toggleLayer("CSym-Sl")
k::toggleLayer("CSym")
l::toggleLayer("CAlpha-Sl")
`;::toggleLayer("CAlpha")

; x::toggleLayer("")
c::toggleLayer("Ext")
; v::toggleLayer("")
; b::toggleLayer("")
; n::toggleLayer("")
m::toggleLayer("Vim")
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