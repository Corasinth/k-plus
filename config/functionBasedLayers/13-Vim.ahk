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

RAlt::RControl
CapsLock::Esc