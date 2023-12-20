#HotIf currentLayer = "Vim"
; ====================================== LETTERS ======================================
+r::{
    SendInput("R")
    toggleLayer("Alpha")
}
u::y
+u::+y
i::u
+i::+u
o::{
    SendInput("i")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer("Alpha")
    }
}
+o::{
    SendInput("I")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer("Alpha")
    }
}
p::{
    SendInput("o")
    toggleLayer("Alpha")
}
+p::{
    SendInput("+o")
    toggleLayer("Alpha")
}
p::o
+p::+o
'::p
a::{
    SendInput("a")
    toggleLayer("Alpha")
}
+a::{
    SendInput("A")
    toggleLayer("Alpha")
}
s::{
    if(!GetKeyState("Control")){
        SendInput("s")
        toggleLayer("Alpha")
    } else {
        SendInput("^s")
    }
}
+s::{
    SendInput("S")
    toggleLayer("Alpha")
}
j::Left
+j::+h
k::Down
+k::+j
l::Up
+l::+k
`;::Right
+;::+l
n::b
+n::+b
m::n
+m::+n
,::m
+,::+m
'::p
; ====================================== HOTSTRINGS ======================================
:B0Z?*:cw::{
    toggleLayer("Alpha")
}
:B0Z?*:ciw::{
    toggleLayer("Alpha")
}

; ====================================== ADDITIONAL KEYS ======================================
CapsLock::Esc
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym")
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym")
    }
}
Space::toggleLayer("Func-D")
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
RAlt::toggleLayer("Sym-D")
*/::RWin