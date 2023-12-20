#Requires AutoHotkey v2.0
#SingleInstance Force
; ====================================== LAYERS ======================================

alphaArray := ["w", "l", "y", "p", "k", "z", "x", "o", "u", "c", "r", "s", "t", "b", "f", "n", "e", "i", "a", "j", "v", "d", "g", "q", "m", "h"]
symArray := ["w", "l", "y", "p", "k", "z", "x", "o", "u", "c", "r", "s", "t", "b", "f", "n", "e", "i", "a", "j", "v", "d", "g", "n", "m", "h"]
symSLArray := ["w", "l", "y", "p", "k", "z", "x", "o", "u", "c", "r", "s", "t", "b", "f", "n", "e", "i", "a", "j", "v", "d", "g", "n", "m", "h"]

alpha := Map(
    "*q", "{Blind}" alphaArray[1], 
    "*w", "{Blind}" alphaArray[2], 
    "*e", "{Blind}" alphaArray[3], 
    "*r", "{Blind}" alphaArray[4], 
    "*t", "{Blind}" alphaArray[5], 
    "*u", "{Blind}" alphaArray[6], 
    "*i", "{Blind}" alphaArray[7], 
    "*o", "{Blind}" alphaArray[8], 
    "*p", "{Blind}" alphaArray[9], 
    "*a", "{Blind}" alphaArray[10], 
    "*s", "{Blind}" alphaArray[11], 
    "*d", "{Blind}" alphaArray[12], 
    "*f", "{Blind}" alphaArray[13], 
    "*g", "{Blind}" alphaArray[14], 
    "*j", "{Blind}" alphaArray[15], 
    "*k", "{Blind}" alphaArray[16], 
    "*l", "{Blind}" alphaArray[17], 
    "*;", "{Blind}" alphaArray[18], 
    "*'", "{Blind}" alphaArray[19], 
    "*z", "{Blind}" alphaArray[20], 
    "*x", "{Blind}" alphaArray[21], 
    "*c", "{Blind}" alphaArray[22], 
    "*v", "{Blind}" alphaArray[23], 
    "*b", "{Blind}" alphaArray[24], 
    "*m", "{Blind}" alphaArray[25], 
    "*,", "{Blind}" alphaArray[26] 
)



currentLayer := alpha

; ====================================== HOTKEYS ======================================
*q::
*w::
*e::
*r::
*t::
*y::
*u::
*i::
*o::
*p::
*a::
*s::
*d::
*f::
*g::
*h::
*j::
*k::
*l::
*;::
*'::
*z::
*x::
*c::
*v::
*b::
*m::
*n::{
    SendInput(currentLayer[A_ThisHotkey])
    ToolTip(A_ThisHotkey)
}

Esc::ExitApp
        
; ====================================== ADDITIIONAL KEYS ======================================
; CapsLock::{
; global
; capslockReleased := 0
; toggleLayer("Ext")
; }
; RAlt::toggleLayer("Sym-D")
; .::toggleLayer("Alpha-Sl-D")
; *LAlt::{
;     SendInput("{Alt downR}")
;     if !(released := KeyWait("LAlt", "T0.22")){
;         KeyWait("LAlt")
;     }
;     SendInput("{Alt up}")
;     if(released && ThisHotkey = A_ThisHotkey) {
;         SendInput("{Alt downR}{Alt up}")
;         toggleLayer("Directory-I")
;     }
; }
; *PrintScreen::{
;     SendInput("{RControl downR}")
;     if !(released := KeyWait("PrintScreen", "T0.22")){
;         KeyWait("PrintScreen")
;     }
;     SendInput("{RControl up}")
;     if(released && ThisHotkey = A_ThisHotkey) {
;         toggleLayer("Sym")
;     }
; }
; Control::{
;     SendInput("{RControl downR}")
;     if !(released := KeyWait("Control", "T0.22")){
;         KeyWait("Control")
;     }
;     SendInput("{RControl up}")
;     if(released && ThisHotkey = A_ThisHotkey){
;         toggleLayer("Sym")
;     }
; }
; /::{
;     if !(released := KeyWait("/", "T0.22")){
;         SendInput("{RWin downR}")
;         KeyWait("/")
;     }
;     SendInput("{RWin up}")
;     if(released && ThisHotkey = A_ThisHotkey) {
;         SendInput("^{Backspace}")
;     }
; }
    
    