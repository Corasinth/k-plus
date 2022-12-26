#HotIf currentLayer = "CSym-Sl-D"
; ====================================== LETTERS ======================================
*q::{
    SendInput("{Blind}°")
    toggleLayer(previousLayer)
}
*w::{
    SendInput("{Blind}@")
    toggleLayer(previousLayer)
}
*e::{
    SendInput("{Blind}%")
    toggleLayer(previousLayer)
}
*r::{
    SendInput("{Blind}{^}")
    toggleLayer(previousLayer)
}
*t::{
    SendInput("{Blind}–")
    toggleLayer(previousLayer)
}
*y::{
    SendInput("{Blind}{U+00BB}")
    toggleLayer(previousLayer)
}
*u::{
    SendInput("{Blind}{U+00BB}")
    toggleLayer(previousLayer)
}
*i::{
    SendInput("{Blind}{Numpad7}")
    toggleLayer(previousLayer)
}
*o::{
    SendInput("{Blind}{Numpad8}")
    toggleLayer(previousLayer)
}
*p::{
    SendInput("{Blind}{Numpad9}")
    toggleLayer(previousLayer)
}
*a::{
    SendInput("{Blind}``")
    toggleLayer(previousLayer)
}
*s::{
    SendInput("{Blind}$")
    toggleLayer(previousLayer)
}
*d::{
    SendInput("{Blind}:")
    toggleLayer(previousLayer)
}
*f::{
    SendInput("{Blind};")
    toggleLayer(previousLayer)
}
*g::{
    SendInput("{Blind}?")
    toggleLayer(previousLayer)
}
*h::{
    SendInput("{Blind}{!}")
    toggleLayer(previousLayer)
}
*j::{
    SendInput("{Blind}{!}")
    toggleLayer(previousLayer)
}
*k::{
    SendInput("{Blind}{Numpad4}")
    toggleLayer(previousLayer)
}
*l::{
    SendInput("{Blind}{Numpad5}")
    toggleLayer(previousLayer)
}
    *;::{
SendInput("{Blind}{Numpad6}")
toggleLayer(previousLayer)
}
*'::{
    SendInput("{Blind}{Numpad0}")
    toggleLayer(previousLayer)
}
*x::{
    SendInput("{Blind}©")
    toggleLayer(previousLayer)
}
*c::{
    SendInput("{Blind}|")
    toggleLayer(previousLayer)
}
*v::{
    SendInput("{Blind}*")
    toggleLayer(previousLayer)
}
*b::{
    SendInput("{Blind}¡")
    toggleLayer(previousLayer)
}
*n::{
    SendInput("{Blind}¡")
    toggleLayer(previousLayer)
}
*m::{
    SendInput("{Blind}{Numpad1}")
    toggleLayer(previousLayer)
}
*,::{
    SendInput("{Blind}{Numpad2}")
    toggleLayer(previousLayer)
}
*.::{
    SendInput("{Blind}{Numpad3}")
    toggleLayer(previousLayer)
}
/::{
    SendInput("{Blind}™")
    toggleLayer(previousLayer)
}
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::{
    SendInput("{Blind}{Esc}")
    toggleLayer("Vim")
}
RAlt up::toggleLayer("CAlpha")
Shift::toggleLayer("CSym-Sl")
Shift up::{
    shiftReleased := 1
}
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-II")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CSym")
    }
}
*Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CSym")
    }
}
*\::{
    if !(released := KeyWait("\", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("\")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
    }
}
*\ up::toggleLayer(previousLayer)