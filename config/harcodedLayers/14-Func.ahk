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
*LAlt::modTapAlt(ThisHotkey, "LAlt", "Alt", toggleLayer, "Directory")
*RAlt::modTap(ThisHotkey, "RAlt", "Control", toggleLayer, previousLayer)
*'::modTapAlt(ThisHotkey, "'", "RWin", SendInput, "^{BackSpace}")