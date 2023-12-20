#HotIf currentLayer = "Ext"
; ====================================== LETTERS ======================================
; Arrow keys on the left hand
; q::PgUp
; w::Home
; e::Up
; r::End
; t::PgDn
; y::^f
; u::^v
; i::^c
; o::^x

; a::^a
; s::Left
; d::Down
; f::Right
; g::WheelUp
; h::Return
; h::#v
; j::Ctrl
; k::Shift
; l;::Alt
; ;::RWin

; z::Click()
; x::Esc
; c::BackSpace
; v::Delete
; b::WheelDown
; n::^y
; m::^z
; ,::AppsKey
; .::F3

; Arrow keys on the right hand
q::+Tab
w::^x
e::^c
r::^v
t::#v
y::Click()
u::Home
i::Up
o::End

a::RWin
s::Alt
d::Shift
f::Ctrl
g::^a
h::Delete
j::Left
k::Down
l;::Right
`;::BackSpace

z::Return
x::^y
c::AppsKey
v::^z
b::^f
n::PgUp
m::Esc
,::PgDn
.::F3
; ====================================== ADDITIONAL KEYS ======================================
; \::AppsKey
; Space::Enter
CapsLock::{
    global
    ; if(capslockReleased){
        if(previousLayer = "Ext"){
            previousLayer := "Alpha"
        }
        toggleLayer(previousLayer)
    ; }
}
; CapsLock up::{
    ; global
    ; capslockReleased := 1
    ; if(A_PriorKey != "CapsLock" && A_TimeSincePriorHotkey > 100){
        ; toggleLayer("Alpha")
    ; }
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