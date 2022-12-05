#HotIf currentLayer = "Ext"
; ====================================== CONTROL KEYS ======================================
Tab::Esc
Space::Enter
CapsLock::toggleLayer("Alpha")
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
h::Delete
j::Left
k::Down
l::Right
`;::BackSpace

x::AppsKey
c::^z
v::^y
b::WheelDown
n::PgUp
m::^a
,::PgDn
; ====================================== ADDITIONAL KEYS ======================================
*LAlt::modTapAlt(ThisHotkey, "LAlt", "Alt", toggleLayer, "Directory")
*RAlt::modTap(ThisHotkey, "RAlt", "Control", toggleLayer, previousLayer)
Shift::toggleLayer("Func-D")
'::Tab