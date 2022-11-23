#HotIf currentLayer = 3
; ====================================== UNIVERSAL DIRECTORY KEY ======================================
Alt::toggleLayer(1)
; Reenable alt as a modifier
Alt & 1::!1
; ====================================== LETTERS ======================================
q::Q
w::W
e::F
r::P
t::B
y::J
u::L
i::U
o::Y
p::SendInput(";")
+p::SendInput(":")
a::A
s::R
d::S
f::T
g::G
h::M
j::N
k::E
l::I
z::X
x::C
c::D
v::V
b::Z
n::K
m::H
; ====================================== ADDITIONAL KEYS ======================================
`;::O
; Toggle to regular Colemak layer
Shift::toggleLayer(2)
; Reenable shift as a modifier
Shift & 1::+1
; Access to Extend layer
CapsLock::toggleLayer(4)