#HotIf currentLayer = "Vim"
; ====================================== LETTERS ======================================
i::{
    SendInput("i")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer("CAlpha")
    }
}

a::{
    SendInput("a")
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

o::{
    SendInput("o")
    toggleLayer("CAlpha")
}

+i::{
    SendInput("I")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer("CAlpha")
    }
}

+a::{
    SendInput("A")
    toggleLayer("CAlpha")
}

+s::{
    SendInput("S")
    toggleLayer("CAlpha")
}

+o::{
    SendInput("+o")
    toggleLayer("CAlpha")
}

:B0Z?*:cw::{
    toggleLayer("CAlpha")
}

; ====================================== ADDITIONAL KEYS ======================================
CapsLock::Esc
Enter::toggleLayer("Func-D")
*Shift::{
    SendInput("{Blind}{Shift downR}")
    if !(released := KeyWait("Shift", "T0.18")){
        KeyWait("Shift")
    }
    SendInput("{Blind}{Shift up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Alpha-Sl")
    }
}
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
*'::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("RAlt", "T0.18")){
        KeyWait("RAlt")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}