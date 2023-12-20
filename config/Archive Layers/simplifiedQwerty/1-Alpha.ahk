#HotIf currentLayer = "Alpha"
; ====================================== LETTERS ======================================
q::{
    if(A_PriorKey != "q" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "q", "Q", 1)
    } else {
        SendInput("q")
    }
}
w::{
    if(A_PriorKey != "w" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "w", "W", 1)
    } else {
        SendInput("w")
    }
}
e::{
    if(A_PriorKey != "e" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "e", "E", 1)
    } else {
        SendInput("e")
    }
}
r::{
    if(A_PriorKey != "r" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "r", "R", 1)
    } else {
        SendInput("r")
    }
}
t::{
    if(A_PriorKey != "t" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "t", "T", 1)
    } else {
        SendInput("t")
    }
}
y::{
    if(A_PriorKey != "y" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "y", "Y", 1)
    } else {
        SendInput("y")
    }
}
u::{
    if(A_PriorKey != "u" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "u", "U", 1)
    } else {
        SendInput("u")
    }
}
i::{
    if(A_PriorKey != "i" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "i", "I", 1)
    } else {
        SendInput("i")
    }
}
o::{
    if(A_PriorKey != "o" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "o", "O", 1)
    } else {
        SendInput("o")
    }
}
p::{
    if(A_PriorKey != "p" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "p", "P", 1)
    } else {
        SendInput("p")
    }
}
a::{
    if(A_PriorKey != "a" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "a", "A", 1)
    } else {
        SendInput("a")
    }
}
s::{
    if(A_PriorKey != "s" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "s", "S", 1)
    } else {
        SendInput("s")
    }
}
d::{
    if(A_PriorKey != "d" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "d", "D", 1)
    } else {
        SendInput("d")
    }
}
f::{
    if(A_PriorKey != "f" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "f", "F", 1)
    } else {
        SendInput("f")
    }
}
g::{
    if(A_PriorKey != "g" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "g", "G", 1)
    } else {
        SendInput("g")
    }
}
h::{
    if(A_PriorKey != "h" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "h", "H", 1)
    } else {
        SendInput("h")
    }
}
j::{
    if(A_PriorKey != "j" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "j", "J", 1)
    } else {
        SendInput("j")
    }
}
k::{
    if(A_PriorKey != "k" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "k", "K", 1)
    } else {
        SendInput("k")
    }
}
l::{
    if(A_PriorKey != "l" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "l", "L", 1)
    } else {
        SendInput("l")
    }
}
z::{
    if(A_PriorKey != "z" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "z", "Z", 1)
    } else {
        SendInput("z")
    }
}
x::{
    if(A_PriorKey != "x" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "x", "X", 1)
    } else {
        SendInput("x")
    }
}
c::{
    if(A_PriorKey != "c" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "c", "C", 1)
    } else {
        SendInput("c")
    }
}
v::{
    if(A_PriorKey != "v" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "v", "V", 1)
    } else {
        SendInput("v")
    }
}
b::{
    if(A_PriorKey != "b" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "b", "B", 1)
    } else {
        SendInput("b")
    }
}
n::{
    if(A_PriorKey != "n" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "n", "N", 1)
    } else {
        SendInput("n")
    }
}
m::{
    if(A_PriorKey != "m" || A_TimeSincePriorHotkey > 350){
        longPress(ThisHotkey, "m", "M", 1)
    } else {
        SendInput("m")
    }
}
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::BackSpace
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
RAlt::Control