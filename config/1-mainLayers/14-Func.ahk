#HotIf currentLayer = "Func"
; ====================================== LETTERS ======================================
q::{
    SendInput("{Blind}{F1}")
}
w::{
    SendInput("{Blind}{F2}")
}
e::{
    SendInput("{Blind}{F3}")
}
r::{
    SendInput("{Blind}{F4}")
}
t::{
    SendInput("{Blind}{F5}")
}
u::{
    SendInput("{Blind}{F6}")
}
i::{
    SendInput("{Blind}{F7}")
}
o::{
    SendInput("{Blind}{F8}")
}

a::{
    SendInput("{Blind}{F9}")
}
s::{
    SendInput("{Blind}{F10}")
}
d::{
    SendInput("{Blind}{F11}")
}
f::{
    SendInput("{Blind}{F12}")
}
g::{
    SendInput("{Blind}{F13}")
}
h::{
    SendInput("{Blind}{F14}")
}
j::{
    SendInput("{Blind}{F15}")
}
k::{
    SendInput("{Blind}{F16}")
}
l::{
    SendInput("{Blind}{F17}")
}
`;::{
    SendInput("{Blind}{F18}")
}

x::{
    SendInput("{Blind}{F19}")
}
c::{
    SendInput("{Blind}{F20}")
}
v::{
    SendInput("{Blind}{F21}")
}
n::{
    SendInput("{Blind}{F22}")
}
m::{
    SendInput("{Blind}{F23}")
}
,::{
    SendInput("{Blind}{F24}")
}
; ====================================== ADDITIONAL KEYS ======================================

CapsLock::toggleLayer("Ext")
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