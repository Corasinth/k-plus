#HotIf currentLayer = "Ext"
; ====================================== LETTERS ======================================
q::^f
w::^x
e::^c
r::^v
t::#v
y::F3
u::F3
i::Home
o::Up
p::End

a::RWin
s::Alt
d::Shift
f::Ctrl 
g::WheelUp
h::BackSpace
j::BackSpace
k::Left
l::Down
`;::Right
'::Delete

x::^y
c::^z
v::^a
b::WheelDown
n::WheelDown
m::PgUp
,::Tab
.::PgDn
; ====================================== ADDITIONAL KEYS ======================================
\::AppsKey
Tab::Esc
Space::Enter
CapsLock::toggleLayer("Alpha")
; CapsLock up::{
;     if(A_PriorKey = "Space"){
;         SendInput("{Enter up}")
;         toggleLayer("Alpha")
;     }
; }
RAlt::toggleLayer("Func-D")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.18")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.18")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer(previousLayer)
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.18")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer(previousLayer)
    }
}