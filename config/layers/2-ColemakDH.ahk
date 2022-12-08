#HotIf currentLayer = 2
; ====================================== UNIVERSAL DIRECTORY KEY ======================================
Alt::toggleLayer(1)
; Reenable alt as a modifier
Alt & 1::!1
; ====================================== LETTERS ======================================
q::q
w::w
e::f
r::p
t::b
y::j
u::l
i::u
o::y
p::SendInput(";")
+p::SendInput(":")
a::a
s::r
d::s
f::t
g::g
h::m
j::n
k::e
l::i
z::x
x::c
c::d
v::v
b::z
n::k
m::h
; ====================================== ADDITIONAL KEYS ======================================
`;::o
; Toggle to shift locked layer
Shift::toggleLayer(3)
; Reenable shift as a modifier
Shift & 1::+1
; Access the Extend layer
CapsLock::toggleLayer(4)