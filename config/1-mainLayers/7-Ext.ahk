#HotIf currentLayer = "Ext"
; ====================================== LETTERS ======================================
q::^f
w::^x
e::^c
r::^v
t::#v
y::F3
u::Home
i::Up
o::End

a::RWin
s::Alt
d::Shift
f::Ctrl 
g::WheelUp
h::BackSpace
j::Left
k::Down
l::Right
`;::Delete

x::^y
c::^z
v::^a
b::WheelDown
n::PgUp
m::Tab
,::PgDn
; ====================================== ADDITIONAL KEYS ======================================
'::AppsKey
Tab::Esc
Space::Enter
CapsLock::toggleLayer("Alpha")
CapsLock up::{
    if(A_PriorKey = "Space"){
        toggleLayer("Alpha")
    }
}
Shift::toggleLayer("Func-D")
Enter::toggleLayer("Func-D")
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