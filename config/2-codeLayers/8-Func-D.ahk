#HotIf currentLayer = "Func-D"
; ====================================== LETTERS ======================================
*q::{ 
    SendInput("git add -A{Enter}git commit -m `"")
    toggleLayer(previousLayer)
}
; *w::{
;     toggleLayer(previousLayer)
; }
; *e::{
;     toggleLayer(previousLayer)
; }
; *r::{
;     toggleLayer(previousLayer)
; }
; *t::{
;     toggleLayer(previousLayer)
; }
*u::{
    SendInput("mysql -u root -p {Enter}")
    Sleep(700)
    SendInput("password")
    Sleep(500)
    SendInput("{Enter}")
    toggleLayer(previousLayer)
}
*i::{
    SendInput("source ./db/schema.sql {Enter}")
    toggleLayer(previousLayer)
}
*o::{
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
    SendInput("{Blind}{F7}")
    toggleLayer(previousLayer)
}
*k::{
    SendInput("{Blind}{F8}")
    toggleLayer(previousLayer)
}
*l::{
    SendInput("{Blind}{F9}")
    toggleLayer(previousLayer)
}
    *;::{
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
; *n::{
;     toggleLayer(previousLayer)
; }
*m::{
    SendInput("{Blind}{F12}")
    toggleLayer(previousLayer)
}
; *,::{
;     toggleLayer(previousLayer)
; }
; *.::{
;     toggleLayer(previousLayer)
; }
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::{
    SendInput("Blind{Esc}")
    toggleLayer("Vim")
}
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
*'::RWin