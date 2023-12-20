#HotIf currentLayer = "Func-D"
; ====================================== LETTERS ======================================
*q::{
    SendInput("git add -A{Enter}")
    Sleep(500)
    SendInput("git commit -m `"")
    toggleLayer(previousLayer)
}
*w::{
    SendInput("console.log()")
    toggleLayer(previousLayer)
}
*e::{
    SendInput("")
    toggleLayer(previousLayer)
}
*r::{
    SendInput("")
    toggleLayer(previousLayer)
}
*t::{
    SendInput("")
    toggleLayer(previousLayer)
} 
*i::{
    SendInput("mysql -u root -p {Enter}")
    Sleep(700)
    SendInput("password")
    Sleep(500)
    SendInput("{Enter}")
    toggleLayer(previousLayer)
}
*o::{
    SendInput("source ./db/schema.sql {Enter}")
    toggleLayer(previousLayer)
}
*p::{
    SendInput("source ./db/seeds.sql {Enter}")
    toggleLayer(previousLayer)
}
*a::{
    SendInput("{Blind}{F1}")
    toggleLayer(previousLayer)
}
*s::{
    SendInput("{Blind}{F2}")
    toggleLayer(previousLayer)
}
*d::{
    SendInput("{Blind}{F3}")
    toggleLayer(previousLayer)
}
*f::{
    SendInput("{Blind}{F4}")
    toggleLayer(previousLayer)
}
*g::{
    SendInput("{Blind}{F5}")
    toggleLayer(previousLayer)
}
*h::{
    SendInput("{Blind}{F6}")
    toggleLayer(previousLayer)
}
*j::{
    SendInput("{Blind}{F6}")
    toggleLayer(previousLayer)
}
*k::{
    SendInput("{Blind}{F7}")
    toggleLayer(previousLayer)
}
*l::{
    SendInput("{Blind}{F8}")
    toggleLayer(previousLayer)
}
    *;::{
SendInput("{Blind}{F9}")
toggleLayer(previousLayer)
}
*'::{
    SendInput("{Blind}{F10}")
    toggleLayer(previousLayer)
}
; *x::{
;     toggleLayer(previousLayer)
; }
*c::{
    SendInput("{Blind}{F11}")
    toggleLayer(previousLayer)
}
; *v::{
;     toggleLayer(previousLayer)
; }
; *m::{
;     toggleLayer(previousLayer)
; }
*,::{
    SendInput("{Blind}{F12}")
    toggleLayer(previousLayer)
}
; *.::{
;     toggleLayer(previousLayer)
; }
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::{
    global
    capslockReleased := 0
    toggleLayer("Ext")
}
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.18")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.18")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer(previousLayer)
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.18")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer(previousLayer)
    }
}