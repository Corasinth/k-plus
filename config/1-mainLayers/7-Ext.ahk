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

x::AppsKey
c::^z
v::^y
b::WheelDown
n::PgUp
m::^a
,::PgDn
; ====================================== ADDITIONAL KEYS ======================================
'::Tab
Tab::Esc
Space::Enter
CapsLock::toggleLayer("Alpha")
Shift::toggleLayer("Macros")
Enter::toggleLayer("Func-D")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.18")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory")
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