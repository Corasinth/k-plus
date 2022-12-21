#HotIf currentLayer = "Vim"
; ====================================== LETTERS ======================================
+r::{
    SendInput("R")
    toggleLayer("CAlpha")
}
u::y
+u::+y
i::u
+i::+u
o::{
    SendInput("i")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer("CAlpha")
    }
}
+o::{
    SendInput("I")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer("CAlpha")
    }
}
p::{
    SendInput("o")
    toggleLayer("CAlpha")
}
+p::{
    SendInput("+o")
    toggleLayer("CAlpha")
}
p::o
+p::+o
[::p
+[::+p
a::{
    SendInput("a")
    toggleLayer("CAlpha")
}
+a::{
    SendInput("A")
    toggleLayer("CAlpha")
}
s::{
    if(!GetKeyState("Control")){
        SendInput("s")
        toggleLayer("CAlpha")
    } else {
        SendInput("^s")
    }
}
+s::{
    SendInput("S")
    toggleLayer("CAlpha")
}
j::h
+j::+h
k::j
+k::+j
l::k
+l::+k
`;::l
+;::+l
n::b
+n::+b
m::n
+m::+n
,::m
+,::+m
; ====================================== HOTSTRINGS ======================================
:B0Z?*:cw::{
    toggleLayer("CAlpha")
}
:B0Z?*:ciw::{
    toggleLayer("CAlpha")
}

; ====================================== ADDITIONAL KEYS ======================================
CapsLock::Esc
Enter::toggleLayer("Func-D")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.18")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-II")
    }
}
RAlt::toggleLayer("CSym-D")
*\::RWin