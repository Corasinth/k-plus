#HotIf currentLayer = "Alpha-Sl"
; ====================================== LETTERS ======================================
*q::{
    if(A_PriorKey != "q" || A_TimeSincePriorHotkey > 350){
        longPress("q", "Q", "q", 1)
    } else {
        SendInput("Q")
    }
}
*w::{
    if(A_PriorKey != "w" || A_TimeSincePriorHotkey > 350){
        longPress("w", "W", "w", 1)
    } else {
        SendInput("W")
    }
}
*e::{
    if(A_PriorKey != "e" || A_TimeSincePriorHotkey > 350){
        longPress("e", "E", "e", 1)
    } else {
        SendInput("E")
    }
}
*r::{
    if(A_PriorKey != "r" || A_TimeSincePriorHotkey > 350){
        longPress("r", "R", "r", 1)
    } else {
        SendInput("R")
    }
}
*t::{
    if(A_PriorKey != "t" || A_TimeSincePriorHotkey > 350){
        longPress("t", "T", "t", 1)
    } else {
        SendInput("T")
    }
}
*y::{
    if(A_PriorKey != "y" || A_TimeSincePriorHotkey > 350){
        longPress("y", "Y", "y", 1)
    } else {
        SendInput("Y")
    }
}
*u::{
    if(A_PriorKey != "u" || A_TimeSincePriorHotkey > 350){
        longPress("u", "U", "u", 1)
    } else {
        SendInput("U")
    }
}
*i::{
    if(A_PriorKey != "i" || A_TimeSincePriorHotkey > 350){
        longPress("i", "I", "i", 1)
    } else {
        SendInput("I")
    }
}
*o::{
    if(A_PriorKey != "o" || A_TimeSincePriorHotkey > 350){
        longPress("o", "O", "o", 1)
    } else {
        SendInput("O")
    }
}
*p::{
    if(A_PriorKey != "p" || A_TimeSincePriorHotkey > 350){
        longPress("p", "P", "p", 1)
    } else {
        SendInput("P")
    }
}
*a::{
    if(A_PriorKey != "a" || A_TimeSincePriorHotkey > 350){
        longPress("a", "A", "a", 1)
    } else {
        SendInput("A")
    }
}
*s::{
    if(A_PriorKey != "s" || A_TimeSincePriorHotkey > 350){
        longPress("s", "S", "s", 1)
    } else {
        SendInput("S")
    }
}
*d::{
    if(A_PriorKey != "d" || A_TimeSincePriorHotkey > 350){
        longPress("d", "D", "d", 1)
    } else {
        SendInput("D")
    }
}
*f::{
    if(A_PriorKey != "f" || A_TimeSincePriorHotkey > 350){
        longPress("f", "F", "f", 1)
    } else {
        SendInput("F")
    }
}
*g::{
    if(A_PriorKey != "g" || A_TimeSincePriorHotkey > 350){
        longPress("g", "G", "g", 1)
    } else {
        SendInput("G")
    }
}
*h::{
    if(A_PriorKey != "h" || A_TimeSincePriorHotkey > 350){
        longPress("h", "H", "h", 1)
    } else {
        SendInput("H")
    }
}
*j::{
    if(A_PriorKey != "j" || A_TimeSincePriorHotkey > 350){
        longPress("j", "J", "j", 1)
    } else {
        SendInput("J")
    }
}
*k::{
    if(A_PriorKey != "k" || A_TimeSincePriorHotkey > 350){
        longPress("k", "K", "k", 1)
    } else {
        SendInput("K")
    }
}
*l::{
    if(A_PriorKey != "l" || A_TimeSincePriorHotkey > 350){
        longPress("l", "L", "l", 1)
    } else {
        SendInput("L")
    }
}
*z::{
    if(A_PriorKey != "z" || A_TimeSincePriorHotkey > 350){
        longPress("z", "Z", "z", 1)
    } else {
        SendInput("Z")
    }
}
*x::{
    if(A_PriorKey != "x" || A_TimeSincePriorHotkey > 350){
        longPress("x", "X", "x", 1)
    } else {
        SendInput("X")
    }
}
*c::{
    if(A_PriorKey != "c" || A_TimeSincePriorHotkey > 350){
        longPress("c", "C", "c", 1)
    } else {
        SendInput("C")
    }
}
*v::{
    if(A_PriorKey != "v" || A_TimeSincePriorHotkey > 350){
        longPress("v", "V", "v", 1)
    } else {
        SendInput("V")
    }
}
*b::{
    if(A_PriorKey != "b" || A_TimeSincePriorHotkey > 350){
        longPress("b", "B", "b", 1)
    } else {
        SendInput("B")
    }
}
*n::{
    if(A_PriorKey != "n" || A_TimeSincePriorHotkey > 350){
        longPress("n", "N", "n", 1)
    } else {
        SendInput("N")
    }
}
*m::{
    if(A_PriorKey != "m" || A_TimeSincePriorHotkey > 350){
        longPress("m", "M", "m", 1)
    } else {
        SendInput("M")
    }
}
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
*Shift::{
    SendInput("{Blind}{Shift downR}")
    if !(released := KeyWait("Shift", "T0.22")){
        KeyWait("Shift")
    }
    SendInput("{Blind}{Shift up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Alpha")
    }
}
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I")
    }
}
*RAlt::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("RAlt", "T0.22")){
        KeyWait("RAlt")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym")
    }
}
*'::{
    if !(released := KeyWait("'", "T0.22")){
        SendInput("{Blind}{RWin downR}")
        KeyWait("'")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}
`;::toggleLayer("Sym-D")