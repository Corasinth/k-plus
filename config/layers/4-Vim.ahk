#HotIf currentLayer = "Vim"
; ====================================== LETTERS ======================================
i::{
    SendInput("i")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer(previousLayer)
    }
}

a::{
    SendInput("a")
    toggleLayer(previousLayer)
}


s::{
    if(!GetKeyState("Control")){
        SendInput("s")
        toggleLayer(previousLayer)
    } else {
        SendInput("^s")
    }
}

o::{
    SendInput("o")
    toggleLayer(previousLayer)
}

+i::{
    SendInput("I")
    if(A_PriorKey != "y" && A_PriorKey != "d" && A_PriorKey != "c"){
        toggleLayer(previousLayer)
    }
}

+a::{
    SendInput("A")
    toggleLayer(previousLayer)
}

+s::{
    SendInput("S")
    toggleLayer(previousLayer)
}

+o::{
    SendInput("+o")
    toggleLayer(previousLayer)
}

:B0Z?*:cw::{
    toggleLayer(previousLayer)
}

RAlt::RControl
CapsLock::Esc