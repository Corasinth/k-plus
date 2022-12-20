#HotIf currentLayer = "CSym-D"
; ====================================== LETTERS ======================================
*q::{
    startTime := A_TickCount
    SendInput("{Blind}~")
    while(GetKeyState("q", "P")){
        endTime := A_TickCount - startTime
        if("q" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}°")
            KeyWait("q")
        }
    }
}
*q up::toggleLayer(previousLayer)
*+q::{
    startTime := A_TickCount
    SendInput("{Blind+}°")
    while(GetKeyState("q", "P")){
        endTime := A_TickCount - startTime
        if("q" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}~")
            KeyWait("q")
        }
    }
}
*+q up::toggleLayer(previousLayer)
*w::{
    startTime := A_TickCount
    SendInput("{Blind}<")
    while(GetKeyState("w", "P")){
        endTime := A_TickCount - startTime
        if("w" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}@")
            KeyWait("w")
        }
    }
}
*w up::toggleLayer(previousLayer)
*+w::{
    startTime := A_TickCount
    SendInput("{Blind+}@")
    while(GetKeyState("w", "P")){
        endTime := A_TickCount - startTime
        if("w" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}>")
            KeyWait("w")
        }
    }
}
*+w up::toggleLayer(previousLayer)
*e::{
    startTime := A_TickCount
    SendInput("{Blind}[")
    while(GetKeyState("e", "P")){
        endTime := A_TickCount - startTime
        if("e" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}%")
            KeyWait("e")
        }
    }
}
*e up::toggleLayer(previousLayer)
*+e::{
    startTime := A_TickCount
    SendInput("{Blind+}%")
    while(GetKeyState("e", "P")){
        endTime := A_TickCount - startTime
        if("e" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}[")
            KeyWait("e")
        }
    }
}
*+e up::toggleLayer(previousLayer)
*r::{
    startTime := A_TickCount
    SendInput("{Blind}/")
    while(GetKeyState("r", "P")){
        endTime := A_TickCount - startTime
        if("r" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{^}")
            KeyWait("r")
        }
    }
}
*r up::toggleLayer(previousLayer)
*+r::{
    startTime := A_TickCount
    SendInput("{Blind+}{^}")
    while(GetKeyState("r", "P")){
        endTime := A_TickCount - startTime
        if("r" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}/")
            KeyWait("r")
        }
    }
}
*+r up::toggleLayer(previousLayer)
*t::{
    startTime := A_TickCount
    SendInput("{Blind}—")
    while(GetKeyState("t", "P")){
        endTime := A_TickCount - startTime
        if("t" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}–")
            KeyWait("t")
        }
    }
}
*t up::toggleLayer(previousLayer)
*+t::{
    startTime := A_TickCount
    SendInput("{Blind+}–")
    while(GetKeyState("t", "P")){
        endTime := A_TickCount - startTime
        if("t" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}—")
            KeyWait("t")
        }
    }
}
*+t up::toggleLayer(previousLayer)
*y::{
    startTime := A_TickCount
    SendInput("{Blind}{U+00AB}")
    while(GetKeyState("y", "P")){
        endTime := A_TickCount - startTime
        if("y" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{U+00BB}")
            KeyWait("y")
        }
    }
}
*y up::toggleLayer(previousLayer)
*+y::{
    startTime := A_TickCount
    SendInput("{Blind+}{U+00BB}")
    while(GetKeyState("y", "P")){
        endTime := A_TickCount - startTime
        if("y" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}{U+00AB}")
            KeyWait("y")
        }
    }
}
*+y up::toggleLayer(previousLayer)
*u::{
    startTime := A_TickCount
    SendInput("{Blind}\")
    while(GetKeyState("u", "P")){
        endTime := A_TickCount - startTime
        if("u" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad7}")
            KeyWait("u")
        }
    }
}
*u up::toggleLayer(previousLayer)
*+u::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad7}")
    while(GetKeyState("u", "P")){
        endTime := A_TickCount - startTime
        if("u" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}\")
            KeyWait("u")
        }
    }
}
*+u up::toggleLayer(previousLayer)
*i::{
    startTime := A_TickCount
    SendInput("{Blind}]")
    while(GetKeyState("i", "P")){
        endTime := A_TickCount - startTime
        if("i" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad8}")
            KeyWait("i")
        }
    }
}
*i up::toggleLayer(previousLayer)
*+i::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad8}")
    while(GetKeyState("i", "P")){
        endTime := A_TickCount - startTime
        if("i" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}]")
            KeyWait("i")
        }
    }
}
*+i up::toggleLayer(previousLayer)
*o::{
    startTime := A_TickCount
    SendInput("{Blind}>")
    while(GetKeyState("o", "P")){
        endTime := A_TickCount - startTime
        if("o" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad9}")
            KeyWait("o")
        }
    }
}
*o up::toggleLayer(previousLayer)
*+o::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad9}")
    while(GetKeyState("o", "P")){
        endTime := A_TickCount - startTime
        if("o" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}>")
            KeyWait("o")
        }
    }
}
*+o up::toggleLayer(previousLayer)

*a::{
    startTime := A_TickCount
    SendInput("{Blind}{{}")
    while(GetKeyState("a", "P")){
        endTime := A_TickCount - startTime
        if("a" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}``")
            KeyWait("a")
        }
    }
}
*a up::toggleLayer(previousLayer)
*+a::{
    startTime := A_TickCount
    SendInput("{Blind+}``")
    while(GetKeyState("a", "P")){
        endTime := A_TickCount - startTime
        if("a" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}{{}")
            KeyWait("a")
        }
    }
}
*+a up::toggleLayer(previousLayer)
*s::{
    startTime := A_TickCount
    SendInput("{Blind}(")
    while(GetKeyState("s", "P")){
        endTime := A_TickCount - startTime
        if("s" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}$")
            KeyWait("s")
        }
    }
}
*s up::toggleLayer(previousLayer)
*+s::{
    startTime := A_TickCount
    SendInput("{Blind+}$")
    while(GetKeyState("s", "P")){
        endTime := A_TickCount - startTime
        if("s" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}(")
            KeyWait("s")
        }
    }
}
*+s up::toggleLayer(previousLayer)
*d::{
    startTime := A_TickCount
    SendInput("{Blind}.")
    while(GetKeyState("d", "P")){
        endTime := A_TickCount - startTime
        if("d" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}:")
            KeyWait("d")
        }
    }
}
*d up::toggleLayer(previousLayer)
*+d::{
    startTime := A_TickCount
    SendInput("{Blind+}:")
    while(GetKeyState("d", "P")){
        endTime := A_TickCount - startTime
        if("d" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}.")
            KeyWait("d")
        }
    }
}
*+d up::toggleLayer(previousLayer)
*f::{
    startTime := A_TickCount
    SendInput("{Blind},")
    while(GetKeyState("f", "P")){
        endTime := A_TickCount - startTime
        if("f" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind};")
            KeyWait("f")
        }
    }
}
*f up::toggleLayer(previousLayer)
*+f::{
    startTime := A_TickCount
    SendInput("{Blind+};")
    while(GetKeyState("f", "P")){
        endTime := A_TickCount - startTime
        if("f" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+},")
            KeyWait("f")
        }
    }
}
*+f up::toggleLayer(previousLayer)
*g::{
    startTime := A_TickCount
    SendInput("{Blind}=")
    while(GetKeyState("g", "P")){
        endTime := A_TickCount - startTime
        if("g" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}?")
            KeyWait("g")
        }
    }
}
*g up::toggleLayer(previousLayer)
*+g::{
    startTime := A_TickCount
    SendInput("{Blind+}?")
    while(GetKeyState("g", "P")){
        endTime := A_TickCount - startTime
        if("g" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}=")
            KeyWait("g")
        }
    }
}
*+g up::toggleLayer(previousLayer)
*h::{
    startTime := A_TickCount
    SendInput("{Blind}{+}")
    while(GetKeyState("h", "P")){
        endTime := A_TickCount - startTime
        if("h" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{!}")
            KeyWait("h")
        }
    }
}
*h up::toggleLayer(previousLayer)
*+h::{
    startTime := A_TickCount
    SendInput("{Blind+}{!}")
    while(GetKeyState("h", "P")){
        endTime := A_TickCount - startTime
        if("h" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}{+}")
            KeyWait("h")
        }
    }
}
*+h up::toggleLayer(previousLayer)
*j::{
    startTime := A_TickCount
    SendInput("{Blind}'")
    while(GetKeyState("j", "P")){
        endTime := A_TickCount - startTime
        if("j" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad4}")
            KeyWait("j")
        }
    }
}
*j up::toggleLayer(previousLayer)
*+j::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad4}")
    while(GetKeyState("j", "P")){
        endTime := A_TickCount - startTime
        if("j" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}'")
            KeyWait("j")
        }
    }
}
*+j up::toggleLayer(previousLayer)
*k::{
    startTime := A_TickCount
    SendInput("{Blind}`"")
    while(GetKeyState("k", "P")){
        endTime := A_TickCount - startTime
        if("k" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad5}")
            KeyWait("k")
        }
    }
}
*k up::toggleLayer(previousLayer)
*+k::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad5}")
    while(GetKeyState("k", "P")){
        endTime := A_TickCount - startTime
        if("k" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}`"")
            KeyWait("k")
        }
    }
}
*+k up::toggleLayer(previousLayer)
*l::{
    startTime := A_TickCount
    SendInput("{Blind})")
    while(GetKeyState("l", "P")){
        endTime := A_TickCount - startTime
        if("l" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad6}")
            KeyWait("l")
        }
    }
}
*l up::toggleLayer(previousLayer)
*+l::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad6}")
    while(GetKeyState("l", "P")){
        endTime := A_TickCount - startTime
        if("l" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+})")
            KeyWait("l")
        }
    }
}
*+l up::toggleLayer(previousLayer)
*;::{
    startTime := A_TickCount
    SendInput("{Blind}{}}")
    while(GetKeyState(";", "P")){
        endTime := A_TickCount - startTime
        if(";" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad0}")
            KeyWait(";")
            toggleLayer(previousLayer)
        }
    }
    toggleLayer(previousLayer)
}
*+;::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad0}")
    while(GetKeyState(";", "P")){
        endTime := A_TickCount - startTime
        if(";" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}{}}")
            KeyWait(";")
        }
    }
}
*+; up::toggleLayer(previousLayer)

*x::{
    startTime := A_TickCount
    SendInput("{Blind}€")
    while(GetKeyState("x", "P")){
        endTime := A_TickCount - startTime
        if("x" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}©")
            KeyWait("x")
        }
    }
}
*x up::toggleLayer(previousLayer)
*+x::{
    startTime := A_TickCount
    SendInput("{Blind+}©")
    while(GetKeyState("x", "P")){
        endTime := A_TickCount - startTime
        if("x" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}€")
            KeyWait("x")
        }
    }
}
*+x up::toggleLayer(previousLayer)
*c::{
    startTime := A_TickCount
    SendInput("{Blind}&")
    while(GetKeyState("c", "P")){
        endTime := A_TickCount - startTime
        if("c" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}|")
            KeyWait("c")
        }
    }
}
*c up::toggleLayer(previousLayer)
*+c::{
    startTime := A_TickCount
    SendInput("{Blind+}|")
    while(GetKeyState("c", "P")){
        endTime := A_TickCount - startTime
        if("c" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}&")
            KeyWait("c")
        }
    }
}
*+c up::toggleLayer(previousLayer)
*v::{
    startTime := A_TickCount
    SendInput("{Blind}{#}")
    while(GetKeyState("v", "P")){
        endTime := A_TickCount - startTime
        if("v" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}*")
            KeyWait("v")
        }
    }
}
*v up::toggleLayer(previousLayer)
*+v::{
    startTime := A_TickCount
    SendInput("{Blind+}*")
    while(GetKeyState("v", "P")){
        endTime := A_TickCount - startTime
        if("v" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}{#}")
            KeyWait("v")
        }
    }
}
*+v up::toggleLayer(previousLayer)
*b::{
    startTime := A_TickCount
    SendInput("{Blind}¿")
    while(GetKeyState("b", "P")){
        endTime := A_TickCount - startTime
        if("b" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}¡")
            KeyWait("b")
        }
    }
}
*b up::toggleLayer(previousLayer)
*+b::{
    startTime := A_TickCount
    SendInput("{Blind+}¡")
    while(GetKeyState("b", "P")){
        endTime := A_TickCount - startTime
        if("b" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}¿")
            KeyWait("b")
        }
    }
}
*+b up::toggleLayer(previousLayer)
*n::{
    startTime := A_TickCount
    SendInput("{Blind}_")
    while(GetKeyState("n", "P")){
        endTime := A_TickCount - startTime
        if("n" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad1}")
            KeyWait("n")
        }
    }
}
*n up::toggleLayer(previousLayer)
*+n::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad1}")
    while(GetKeyState("n", "P")){
        endTime := A_TickCount - startTime
        if("n" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}_")
            KeyWait("n")
        }
    }
}
*+n up::toggleLayer(previousLayer)
*m::{
    startTime := A_TickCount
    SendInput("{Blind}-")
    while(GetKeyState("m", "P")){
        endTime := A_TickCount - startTime
        if("m" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad2}")
            KeyWait("m")
        }
    }
}
*m up::toggleLayer(previousLayer)
*+m::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad2}")
    while(GetKeyState("m", "P")){
        endTime := A_TickCount - startTime
        if("m" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}-")
            KeyWait("m")
        }
    }
}
*+m up::toggleLayer(previousLayer)
*,::{
    startTime := A_TickCount
    SendInput("{Blind}§")
    while(GetKeyState(",", "P")){
        endTime := A_TickCount - startTime
        if("," = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad3}")
            KeyWait(",")
        }
    }
}
*, up::toggleLayer(previousLayer)
*+,::{
    startTime := A_TickCount
    SendInput("{Blind+}{Numpad3}")
    while(GetKeyState(",", "P")){
        endTime := A_TickCount - startTime
        if("," = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}§")
            KeyWait(",")
        }
    }
}
*+, up::toggleLayer(previousLayer)
*.::{
    startTime := A_TickCount
    SendInput("{Blind}¶")
    while(GetKeyState(".", "P")){
        endTime := A_TickCount - startTime
        if("." = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}™")
            KeyWait(".")
        }
    }
}
*. up::toggleLayer(previousLayer)
*+.::{
    startTime := A_TickCount
    SendInput("{Blind+}™")
    while(GetKeyState(".", "P")){
        endTime := A_TickCount - startTime
        if("." = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind+}¶")
            KeyWait(".")
        }
    }
}
*+. up::toggleLayer(previousLayer)
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::{
    SendInput("{Blind}{Esc}")
    toggleLayer("Vim")
}
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-II")
    }
}
*RAlt::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("RAlt", "T0.22")){
        KeyWait("RAlt")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer(previousLayer)
    }
}
; Tab::toggleLayer("CSym")
*'::RWin