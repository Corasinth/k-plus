#HotIf currentLayer = "Sym-Sl"
; ====================================== LETTERS ======================================
*q::{
        if(A_PriorHotKey != "*q" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}°")
            while(GetKeyState("q", "P")){
                endTime := A_TickCount - startTime
                if("q" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}~")
                    KeyWait("q")
                }
            }
        } else {
            SendInput("{Blind}°")
        }
    }
        *w::{
        if(A_PriorHotKey != "*w" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{!}")
            while(GetKeyState("w", "P")){
                endTime := A_TickCount - startTime
                if("w" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}<")
                    KeyWait("w")
                }
            }
        } else {
            SendInput("{Blind}{!}")
        }
    }
        *e::{
        if(A_PriorHotKey != "*e" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}?")
            while(GetKeyState("e", "P")){
                endTime := A_TickCount - startTime
                if("e" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}[")
                    KeyWait("e")
                }
            }
        } else {
            SendInput("{Blind}?")
        }
    }
        *r::{
        if(A_PriorHotKey != "*r" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{^}")
            while(GetKeyState("r", "P")){
                endTime := A_TickCount - startTime
                if("r" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}/")
                    KeyWait("r")
                }
            }
        } else {
            SendInput("{Blind}{^}")
        }
    }
        *t::{
        if(A_PriorHotKey != "*t" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}–")
            while(GetKeyState("t", "P")){
                endTime := A_TickCount - startTime
                if("t" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}—")
                    KeyWait("t")
                }
            }
        } else {
            SendInput("{Blind}–")
        }
    }
        *y::{
        if(A_PriorHotKey != "*y" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}»")
            while(GetKeyState("y", "P")){
                endTime := A_TickCount - startTime
                if("y" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}«")
                    KeyWait("y")
                }
            }
        } else {
            SendInput("{Blind}»")
        }
    }
        *u::{
        if(A_PriorHotKey != "*u" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}»")
            while(GetKeyState("u", "P")){
                endTime := A_TickCount - startTime
                if("u" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}«")
                    KeyWait("u")
                }
            }
        } else {
            SendInput("{Blind}»")
        }
    }
        *i::{
        if(A_PriorHotKey != "*i" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}@")
            while(GetKeyState("i", "P")){
                endTime := A_TickCount - startTime
                if("i" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}\")
                    KeyWait("i")
                }
            }
        } else {
            SendInput("{Blind}@")
        }
    }
        *o::{
        if(A_PriorHotKey != "*o" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind};")
            while(GetKeyState("o", "P")){
                endTime := A_TickCount - startTime
                if("o" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}]")
                    KeyWait("o")
                }
            }
        } else {
            SendInput("{Blind};")
        }
    }
        *p::{
        if(A_PriorHotKey != "*p" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}:")
            while(GetKeyState("p", "P")){
                endTime := A_TickCount - startTime
                if("p" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}>")
                    KeyWait("p")
                }
            }
        } else {
            SendInput("{Blind}:")
        }
    }
        *a::{
        if(A_PriorHotKey != "*a" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad1}")
            while(GetKeyState("a", "P")){
                endTime := A_TickCount - startTime
                if("a" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}{{}")
                    KeyWait("a")
                }
            }
        } else {
            SendInput("{Blind}{Numpad1}")
        }
    }
        *s::{
        if(A_PriorHotKey != "*s" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad2}")
            while(GetKeyState("s", "P")){
                endTime := A_TickCount - startTime
                if("s" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}(")
                    KeyWait("s")
                }
            }
        } else {
            SendInput("{Blind}{Numpad2}")
        }
    }
        *d::{
        if(A_PriorHotKey != "*d" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad3}")
            while(GetKeyState("d", "P")){
                endTime := A_TickCount - startTime
                if("d" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}.")
                    KeyWait("d")
                }
            }
        } else {
            SendInput("{Blind}{Numpad3}")
        }
    }
        *f::{
        if(A_PriorHotKey != "*f" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad4}")
            while(GetKeyState("f", "P")){
                endTime := A_TickCount - startTime
                if("f" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind},")
                    KeyWait("f")
                }
            }
        } else {
            SendInput("{Blind}{Numpad4}")
        }
    }
        *g::{
        if(A_PriorHotKey != "*g" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}|")
            while(GetKeyState("g", "P")){
                endTime := A_TickCount - startTime
                if("g" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}&")
                    KeyWait("g")
                }
            }
        } else {
            SendInput("{Blind}|")
        }
    }
        *h::{
        if(A_PriorHotKey != "*h" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}%")
            while(GetKeyState("h", "P")){
                endTime := A_TickCount - startTime
                if("h" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}{+}")
                    KeyWait("h")
                }
            }
        } else {
            SendInput("{Blind}%")
        }
    }
        *j::{
        if(A_PriorHotKey != "*j" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}%")
            while(GetKeyState("j", "P")){
                endTime := A_TickCount - startTime
                if("j" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}{+}")
                    KeyWait("j")
                }
            }
        } else {
            SendInput("{Blind}%")
        }
    }
        *k::{
        if(A_PriorHotKey != "*k" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad7}")
            while(GetKeyState("k", "P")){
                endTime := A_TickCount - startTime
                if("k" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}'")
                    KeyWait("k")
                }
            }
        } else {
            SendInput("{Blind}{Numpad7}")
        }
    }
        *l::{
        if(A_PriorHotKey != "*l" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad8}")
            while(GetKeyState("l", "P")){
                endTime := A_TickCount - startTime
                if("l" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}`"")
                    KeyWait("l")
                }
            }
        } else {
            SendInput("{Blind}{Numpad8}")
        }
    }
        *;::{
        if(A_PriorHotKey != "*;" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad9}")
            while(GetKeyState(";", "P")){
                endTime := A_TickCount - startTime
                if(";" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind})")
                    KeyWait(";")
                }
            }
        } else {
            SendInput("{Blind}{Numpad9}")
        }
    }
        *'::{
        if(A_PriorHotKey != "*'" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad0}")
            while(GetKeyState("'", "P")){
                endTime := A_TickCount - startTime
                if("'" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}{}}")
                    KeyWait("'")
                }
            }
        } else {
            SendInput("{Blind}{Numpad0}")
        }
    }
        *z::{
        if(A_PriorHotKey != "*z" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}¶")
            while(GetKeyState("z", "P")){
                endTime := A_TickCount - startTime
                if("z" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}€")
                    KeyWait("z")
                }
            }
        } else {
            SendInput("{Blind}¶")
        }
    }
        *x::{
        if(A_PriorHotKey != "*x" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}§")
            while(GetKeyState("x", "P")){
                endTime := A_TickCount - startTime
                if("x" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}$")
                    KeyWait("x")
                }
            }
        } else {
            SendInput("{Blind}§")
        }
    }
        *c::{
        if(A_PriorHotKey != "*c" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad5}")
            while(GetKeyState("c", "P")){
                endTime := A_TickCount - startTime
                if("c" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}=")
                    KeyWait("c")
                }
            }
        } else {
            SendInput("{Blind}{Numpad5}")
        }
    }
        *v::{
        if(A_PriorHotKey != "*v" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}*")
            while(GetKeyState("v", "P")){
                endTime := A_TickCount - startTime
                if("v" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}{#}")
                    KeyWait("v")
                }
            }
        } else {
            SendInput("{Blind}*")
        }
    }
        *b::{
        if(A_PriorHotKey != "*b" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}¡")
            while(GetKeyState("b", "P")){
                endTime := A_TickCount - startTime
                if("b" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}¿")
                    KeyWait("b")
                }
            }
        } else {
            SendInput("{Blind}¡")
        }
    }
        *n::{
        if(A_PriorHotKey != "*n" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}¡")
            while(GetKeyState("n", "P")){
                endTime := A_TickCount - startTime
                if("n" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}¿")
                    KeyWait("n")
                }
            }
        } else {
            SendInput("{Blind}¡")
        }
    }
        *m::{
        if(A_PriorHotKey != "*m" || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}_")
            while(GetKeyState("m", "P")){
                endTime := A_TickCount - startTime
                if("m" = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}``")
                    KeyWait("m")
                }
            }
        } else {
            SendInput("{Blind}_")
        }
    }
        *,::{
        if(A_PriorHotKey != "*," || A_TimeSincePriorHotkey > 500){
            startTime := A_TickCount
            SendInput("{Blind}{Numpad6}")
            while(GetKeyState(",", "P")){
                endTime := A_TickCount - startTime
                if("," = A_PriorKey && endTime > 200){
                    SendInput("{Backspace}")
                    SendInput("{Blind}-")
                    KeyWait(",")
                }
            }
        } else {
            SendInput("{Blind}{Numpad6}")
        }
    }
        
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::{
        toggleLayer("Ext")
    }
.::toggleLayer("Sym")
RAlt up::toggleLayer("Alpha")
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
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Alpha")
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Alpha")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{Blind}{RWin downR}")
        KeyWait("/")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}
    
    