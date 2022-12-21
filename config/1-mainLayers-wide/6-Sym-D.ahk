#HotIf currentLayer = "Sym-D"
; ====================================== LETTERS ======================================
*q::{
    if(A_PriorHotKey != "*q" || A_TimeSincePriorHotkey > 500){
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
    } else {
        SendInput("{Blind}~")
    }
}
*q up::toggleLayer(previousLayer)
*+q::{
    if(A_PriorHotKey != "*+q" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}°")
    }
}
*+q up::toggleLayer(previousLayer)
*w::{
    if(A_PriorHotKey != "*w" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}<")
    }
}
*w up::toggleLayer(previousLayer)
*+w::{
    if(A_PriorHotKey != "*+w" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}@")
    }
}
*+w up::toggleLayer(previousLayer)
*e::{
    if(A_PriorHotKey != "*e" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}[")
    }
}
*e up::toggleLayer(previousLayer)
*+e::{
    if(A_PriorHotKey != "*+e" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}%")
    }
}
*+e up::toggleLayer(previousLayer)
*r::{
    if(A_PriorHotKey != "*r" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}/")
    }
}
*r up::toggleLayer(previousLayer)
*+r::{
    if(A_PriorHotKey != "*+r" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}{^}")
    }
}
*+r up::toggleLayer(previousLayer)
*t::{
    if(A_PriorHotKey != "*t" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}—")
    }
}
*t up::toggleLayer(previousLayer)
*+t::{
    if(A_PriorHotKey != "*+t" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}–")
    }
}
*+t up::toggleLayer(previousLayer)
*y::{
    if(A_PriorHotKey != "*y" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}{U+00AB}")
    }
}
*y up::toggleLayer(previousLayer)
*+y::{
    if(A_PriorHotKey != "*+y" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}{U+00BB}")
    }
}
*+y up::toggleLayer(previousLayer)
*u::{
    if(A_PriorHotKey != "*u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{U+00AB}")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{U+00BB}")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind}{U+00AB}")
    }
}
*u up::toggleLayer(previousLayer)
*+u::{
    if(A_PriorHotKey != "*+u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{U+00BB}")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}{U+00AB}")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind+}{U+00BB}")
    }
}
*+u up::toggleLayer(previousLayer)
*i::{
    if(A_PriorHotKey != "*i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}\")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad7}")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind}\")
    }
}
*i up::toggleLayer(previousLayer)
*+i::{
    if(A_PriorHotKey != "*+i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad7}")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}\")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad7}")
    }
}
*+i up::toggleLayer(previousLayer)
*o::{
    if(A_PriorHotKey != "*o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}]")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad8}")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind}]")
    }
}
*o up::toggleLayer(previousLayer)
*+o::{
    if(A_PriorHotKey != "*+o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad8}")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}]")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad8}")
    }
}
*+o up::toggleLayer(previousLayer)
*p::{
    if(A_PriorHotKey != "*p" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}>")
        while(GetKeyState("p", "P")){
            endTime := A_TickCount - startTime
            if("p" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad9}")
                KeyWait("p")
            }
        }
    } else {
        SendInput("{Blind}>")
    }
}
*p up::toggleLayer(previousLayer)
*+p::{
    if(A_PriorHotKey != "*+p" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad9}")
        while(GetKeyState("p", "P")){
            endTime := A_TickCount - startTime
            if("p" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}>")
                KeyWait("p")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad9}")
    }
}
*+p up::toggleLayer(previousLayer)

*a::{
    if(A_PriorHotKey != "*a" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}{{}")
    }
}
*a up::toggleLayer(previousLayer)
*+a::{
    if(A_PriorHotKey != "*+a" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}``")
    }
}
*+a up::toggleLayer(previousLayer)
*s::{
    if(A_PriorHotKey != "*s" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}(")
    }
}
*s up::toggleLayer(previousLayer)
*+s::{
    if(A_PriorHotKey != "*+s" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}$")
    }
}
*+s up::toggleLayer(previousLayer)
*d::{
    if(A_PriorHotKey != "*d" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}.")
    }
}
*d up::toggleLayer(previousLayer)
*+d::{
    if(A_PriorHotKey != "*+d" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}:")
    }
}
*+d up::toggleLayer(previousLayer)
*f::{
    if(A_PriorHotKey != "*f" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind},")
    }
}
*f up::toggleLayer(previousLayer)
*+f::{
    if(A_PriorHotKey != "*+f" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+};")
    }
}
*+f up::toggleLayer(previousLayer)
*g::{
    if(A_PriorHotKey != "*g" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}=")
    }
}
*g up::toggleLayer(previousLayer)
*+g::{
    if(A_PriorHotKey != "*+g" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}?")
    }
}
*+g up::toggleLayer(previousLayer)
*h::{
    if(A_PriorHotKey != "*h" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}{+}")
    }
}
*h up::toggleLayer(previousLayer)
*+h::{
    if(A_PriorHotKey != "*+h" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}{!}")
    }
}
*+h up::toggleLayer(previousLayer)
*j::{
    if(A_PriorHotKey != "*j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{+}")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{!}")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind}{+}")
    }
}
*j up::toggleLayer(previousLayer)
*+j::{
    if(A_PriorHotKey != "*+j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{!}")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}{+}")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind+}{!}")
    }
}
*+j up::toggleLayer(previousLayer)
*k::{
    if(A_PriorHotKey != "*k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}'")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad4}")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind}'")
    }
}
*k up::toggleLayer(previousLayer)
*+k::{
    if(A_PriorHotKey != "*+k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad4}")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}'")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad4}")
    }
}
*+k up::toggleLayer(previousLayer)
*l::{
    if(A_PriorHotKey != "*l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}`"")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad5}")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind}`"")
    }
}
*l up::toggleLayer(previousLayer)
*+l::{
    if(A_PriorHotKey != "*+l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad5}")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}`"")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad5}")
    }
}
*+l up::toggleLayer(previousLayer)
    *;::{
if(A_PriorHotKey != "*;" || A_TimeSincePriorHotkey > 350){
    startTime := A_TickCount
    SendInput("{Blind})")
    while(GetKeyState(";", "P")){
        endTime := A_TickCount - startTime
        if(";" = A_PriorKey && endTime > 220){
            SendInput("{Backspace}")
            SendInput("{Blind}{Numpad6}")
            KeyWait(";")
        }
    }
} else {
    SendInput("{Blind})")
}
}
*; up::toggleLayer(previousLayer)
*+;::{
    if(A_PriorHotKey != "*+;" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad6}")
        while(GetKeyState(";", "P")){
            endTime := A_TickCount - startTime
            if(";" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+})")
                KeyWait(";")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad6}")
    }
}
*+; up::toggleLayer(previousLayer)
*'::{
    if(A_PriorHotKey != "*'" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{}}")
        while(GetKeyState("'", "P")){
            endTime := A_TickCount - startTime
            if("'" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad0}")
                KeyWait("'")
            }
        }
    } else {
        SendInput("{Blind}{}}")
    }
}
*' up::toggleLayer(previousLayer)
*+'::{
    if(A_PriorHotKey != "*+'" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad0}")
        while(GetKeyState("'", "P")){
            endTime := A_TickCount - startTime
            if("'" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}{}}")
                KeyWait("'")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad0}")
    }
}
*+' up::toggleLayer(previousLayer)

*x::{
    if(A_PriorHotKey != "*x" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}€")
    }
}
*x up::toggleLayer(previousLayer)
*+x::{
    if(A_PriorHotKey != "*+x" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}©")
    }
}
*+x up::toggleLayer(previousLayer)
*c::{
    if(A_PriorHotKey != "*c" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}&")
    }
}
*c up::toggleLayer(previousLayer)
*+c::{
    if(A_PriorHotKey != "*+c" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}|")
    }
}
*+c up::toggleLayer(previousLayer)
*v::{
    if(A_PriorHotKey != "*v" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}{#}")
    }
}
*v up::toggleLayer(previousLayer)
*+v::{
    if(A_PriorHotKey != "*+vv" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}*")
    }
}
*+v up::toggleLayer(previousLayer)
*b::{
    if(A_PriorHotKey != "*b" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind}¿")
    }
}
*b up::toggleLayer(previousLayer)
*+b::{
    if(A_PriorHotKey != "*+b" || A_TimeSincePriorHotkey > 350){
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
    } else {
        SendInput("{Blind+}¡")
    }
}
*+b up::toggleLayer(previousLayer)
*n::{
    if(A_PriorHotKey != "*n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}¿")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}¡")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind}¿")
    }
}
*n up::toggleLayer(previousLayer)
*+n::{
    if(A_PriorHotKey != "*+n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}¡")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}¿")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind+}¡")
    }
}
*+n up::toggleLayer(previousLayer)
*m::{
    if(A_PriorHotKey != "*m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}_")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad1}")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind}_")
    }
}
*m up::toggleLayer(previousLayer)
*+m::{
    if(A_PriorHotKey != "*+m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad1}")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}_")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad1}")
    }
}
*+m up::toggleLayer(previousLayer)
*,::{
    if(A_PriorHotKey != "*," || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}-")
        while(GetKeyState(",", "P")){
            endTime := A_TickCount - startTime
            if("," = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad2}")
                KeyWait(",")
            }
        }
    } else {
        SendInput("{Blind}-")
    }
}
*, up::toggleLayer(previousLayer)
*+,::{
    if(A_PriorHotKey != "*+," || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad2}")
        while(GetKeyState(",", "P")){
            endTime := A_TickCount - startTime
            if("," = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}-")
                KeyWait(",")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad2}")
    }
}
*+, up::toggleLayer(previousLayer)
*.::{
    if(A_PriorHotKey != "*." || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}§")
        while(GetKeyState(".", "P")){
            endTime := A_TickCount - startTime
            if("." = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad3}")
                KeyWait(".")
            }
        }
    } else {
        SendInput("{Blind}§")
    }
}
*. up::toggleLayer(previousLayer)
*+.::{
    if(A_PriorHotKey != "*+." || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad3}")
        while(GetKeyState(".", "P")){
            endTime := A_TickCount - startTime
            if("." = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}§")
                KeyWait(".")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad3}")
    }
}
*+. up::toggleLayer(previousLayer)
/::{
    if(A_PriorHotKey != "*/" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}¶")
        while(GetKeyState("/", "P")){
            endTime := A_TickCount - startTime
            if("/" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind}™")
                KeyWait("/")
            }
        }
    } else {
        SendInput("{Blind}¶")
    }
}
*/ up::toggleLayer(previousLayer)
*+/::{
    if(A_PriorHotKey != "*+/" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}™")
        while(GetKeyState("/", "P")){
            endTime := A_TickCount - startTime
            if("/" = A_PriorKey && endTime > 220){
                SendInput("{Backspace}")
                SendInput("{Blind+}¶")
                KeyWait("/")
            }
        }
    } else {
        SendInput("{Blind+}™")
    }
}
*+/ up::toggleLayer(previousLayer)
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
Control::toggleLayer("Alpha")
Control & 1::^1
RAlt::{
    startTime := A_TickCount
    while(GetKeyState("RAlt", "P")){
        endTime := A_TickCount - startTime
        if("RAlt" = A_PriorKey && endTime > 220){
            toggleLayer("Sym")
            Return
        }
    }
}
*Shift::{
    SendInput("{Blind}{Shift downR}")
    if !(released := KeyWait("Shift", "T0.22")){
        KeyWait("Shift")
    }
    SendInput("{Blind}{Shift up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Sym-Sl")
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
*\::RWin