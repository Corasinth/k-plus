#HotIf currentLayer = "Vim"
; ====================================== LETTERS ======================================
j::Down
k::Up
l::Right
h::Left
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

+r::{
    SendInput("R")
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

:B0Z?*:ciw::{
    toggleLayer("CAlpha")
}

; ====================================== ADDITIONAL KEYS ======================================
CapsLock::Esc
Enter::toggleLayer("Func-D")
*;::toggleLayer("CSym-D")
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
RAlt::Control
*'::{
    SendInput("{Blind}{RWin downR}")
    if !(released := KeyWait("RAlt", "T0.18")){
        KeyWait("RAlt")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}