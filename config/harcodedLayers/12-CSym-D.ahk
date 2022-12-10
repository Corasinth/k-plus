#HotIf currentLayer = "CSym-D"
; ====================================== LETTERS ======================================
q::{
    if(A_PriorHotKey != "q" || A_TimeSincePriorHotkey > 500){
        startTime := A_TickCount
        SendInput("{Blind}{Text}~")
        while(GetKeyState("q", "P")){
            endTime := A_TickCount - startTime
            if("q" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}°")
                KeyWait("q")
            }
        }
    } else {
        SendInput("{Blind}{Text}~")
    }
}
q up::toggleLayer(previousLayer)
+q::{
    if(A_PriorHotKey != "+q" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}°")
        while(GetKeyState("q", "P")){
            endTime := A_TickCount - startTime
            if("q" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}~")
                KeyWait("q")
            }
        }
    } else {
        SendInput("{Blind+}{Text}°")
    }
}
+q up::toggleLayer(previousLayer)
w::{
    if(A_PriorHotKey != "w" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}<")
        while(GetKeyState("w", "P")){
            endTime := A_TickCount - startTime
            if("w" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}@")
                KeyWait("w")
            }
        }
    } else {
        SendInput("{Blind}{Text}<")
    }
}
w up::toggleLayer(previousLayer)
+w::{
    if(A_PriorHotKey != "+w" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}@")
        while(GetKeyState("w", "P")){
            endTime := A_TickCount - startTime
            if("w" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}>")
                KeyWait("w")
            }
        }
    } else {
        SendInput("{Blind+}{Text}@")
    }
}
+w up::toggleLayer(previousLayer)
e::{
    if(A_PriorHotKey != "e" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}[")
        while(GetKeyState("e", "P")){
            endTime := A_TickCount - startTime
            if("e" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}%")
                KeyWait("e")
            }
        }
    } else {
        SendInput("{Blind}{Text}[")
    }
}
e up::toggleLayer(previousLayer)
+e::{
    if(A_PriorHotKey != "+e" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}%")
        while(GetKeyState("e", "P")){
            endTime := A_TickCount - startTime
            if("e" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}[")
                KeyWait("e")
            }
        }
    } else {
        SendInput("{Blind+}{Text}%")
    }
}
+e up::toggleLayer(previousLayer)
r::{
    if(A_PriorHotKey != "r" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}\")
        while(GetKeyState("r", "P")){
            endTime := A_TickCount - startTime
            if("r" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}^")
                KeyWait("r")
            }
        }
    } else {
        SendInput("{Blind}{Text}\")
    }
}
r up::toggleLayer(previousLayer)
+r::{
    if(A_PriorHotKey != "+r" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}^")
        while(GetKeyState("r", "P")){
            endTime := A_TickCount - startTime
            if("r" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}\")
                KeyWait("r")
            }
        }
    } else {
        SendInput("{Blind+}{Text}^")
    }
}
+r up::toggleLayer(previousLayer)
t::{
    if(A_PriorHotKey != "t" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}—")
        while(GetKeyState("t", "P")){
            endTime := A_TickCount - startTime
            if("t" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}–")
                KeyWait("t")
            }
        }
    } else {
        SendInput("{Blind}{Text}—")
    }
}
t up::toggleLayer(previousLayer)
+t::{
    if(A_PriorHotKey != "+t" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}–")
        while(GetKeyState("t", "P")){
            endTime := A_TickCount - startTime
            if("t" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}—")
                KeyWait("t")
            }
        }
    } else {
        SendInput("{Blind+}{Text}–")
    }
}
+t up::toggleLayer(previousLayer)
y::{
    if(A_PriorHotKey != "y" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{U+00AB}")
        while(GetKeyState("y", "P")){
            endTime := A_TickCount - startTime
            if("y" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{U+00BB}")
                KeyWait("y")
            }
        }
    } else {
        SendInput("{Blind}{U+00AB}")
    }
}
y up::toggleLayer(previousLayer)
+y::{
    if(A_PriorHotKey != "+y" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{U+00BB}")
        while(GetKeyState("y", "P")){
            endTime := A_TickCount - startTime
            if("y" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{U+00AB}")
                KeyWait("y")
            }
        }
    } else {
        SendInput("{Blind+}{U+00BB}")
    }
}
+y up::toggleLayer(previousLayer)
u::{
    if(A_PriorHotKey != "u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}/")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad1}")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind}{Text}/")
    }
}
u up::toggleLayer(previousLayer)
+u::{
    if(A_PriorHotKey != "+u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad1}")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}/")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad1}")
    }
}
+u up::toggleLayer(previousLayer)
i::{
    if(A_PriorHotKey != "i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}]")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad2}")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind}{Text}]")
    }
}
i up::toggleLayer(previousLayer)
+i::{
    if(A_PriorHotKey != "+i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad2}")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}]")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad2}")
    }
}
+i up::toggleLayer(previousLayer)
o::{
    if(A_PriorHotKey != "o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}>")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad3}")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind}{Text}>")
    }
}
o up::toggleLayer(previousLayer)
+o::{
    if(A_PriorHotKey != "+o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad3}")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}>")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad3}")
    }
}
+o up::toggleLayer(previousLayer)

a::{
    if(A_PriorHotKey != "a" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}{")
        while(GetKeyState("a", "P")){
            endTime := A_TickCount - startTime
            if("a" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}``")
                KeyWait("a")
            }
        }
    } else {
        SendInput("{Blind}{Text}{")
    }
}
a up::toggleLayer(previousLayer)
+a::{
    if(A_PriorHotKey != "+a" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}``")
        while(GetKeyState("a", "P")){
            endTime := A_TickCount - startTime
            if("a" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}{")
                KeyWait("a")
            }
        }
    } else {
        SendInput("{Blind+}{Text}``")
    }
}
+a up::toggleLayer(previousLayer)
s::{
    if(A_PriorHotKey != "s" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}(")
        while(GetKeyState("s", "P")){
            endTime := A_TickCount - startTime
            if("s" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}$")
                KeyWait("s")
            }
        }
    } else {
        SendInput("{Blind}{Text}(")
    }
}
s up::toggleLayer(previousLayer)
+s::{
    if(A_PriorHotKey != "+s" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}$")
        while(GetKeyState("s", "P")){
            endTime := A_TickCount - startTime
            if("s" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}(")
                KeyWait("s")
            }
        }
    } else {
        SendInput("{Blind+}{Text}$")
    }
}
+s up::toggleLayer(previousLayer)
d::{
    if(A_PriorHotKey != "d" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}.")
        while(GetKeyState("d", "P")){
            endTime := A_TickCount - startTime
            if("d" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}:")
                KeyWait("d")
            }
        }
    } else {
        SendInput("{Blind}{Text}.")
    }
}
d up::toggleLayer(previousLayer)
+d::{
    if(A_PriorHotKey != "+d" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}:")
        while(GetKeyState("d", "P")){
            endTime := A_TickCount - startTime
            if("d" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}.")
                KeyWait("d")
            }
        }
    } else {
        SendInput("{Blind+}{Text}:")
    }
}
+d up::toggleLayer(previousLayer)
f::{
    if(A_PriorHotKey != "f" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text},")
        while(GetKeyState("f", "P")){
            endTime := A_TickCount - startTime
            if("f" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text};")
                KeyWait("f")
            }
        }
    } else {
        SendInput("{Blind}{Text},")
    }
}
f up::toggleLayer(previousLayer)
+f::{
    if(A_PriorHotKey != "+f" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text};")
        while(GetKeyState("f", "P")){
            endTime := A_TickCount - startTime
            if("f" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text},")
                KeyWait("f")
            }
        }
    } else {
        SendInput("{Blind+}{Text};")
    }
}
+f up::toggleLayer(previousLayer)
g::{
    if(A_PriorHotKey != "g" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}=")
        while(GetKeyState("g", "P")){
            endTime := A_TickCount - startTime
            if("g" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}?")
                KeyWait("g")
            }
        }
    } else {
        SendInput("{Blind}{Text}=")
    }
}
g up::toggleLayer(previousLayer)
+g::{
    if(A_PriorHotKey != "+g" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}?")
        while(GetKeyState("g", "P")){
            endTime := A_TickCount - startTime
            if("g" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}=")
                KeyWait("g")
            }
        }
    } else {
        SendInput("{Blind+}{Text}?")
    }
}
+g up::toggleLayer(previousLayer)
h::{
    if(A_PriorHotKey != "h" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}+")
        while(GetKeyState("h", "P")){
            endTime := A_TickCount - startTime
            if("h" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}!")
                KeyWait("h")
            }
        }
    } else {
        SendInput("{Blind}{Text}+")
    }
}
h up::toggleLayer(previousLayer)
+h::{
    if(A_PriorHotKey != "+h" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}!")
        while(GetKeyState("h", "P")){
            endTime := A_TickCount - startTime
            if("h" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}+")
                KeyWait("h")
            }
        }
    } else {
        SendInput("{Blind+}{Text}!")
    }
}
+h up::toggleLayer(previousLayer)
j::{
    if(A_PriorHotKey != "j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}-")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad4}")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind}{Text}-")
    }
}
j up::toggleLayer(previousLayer)
+j::{
    if(A_PriorHotKey != "+j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad4}")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}-")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad4}")
    }
}
+j up::toggleLayer(previousLayer)
k::{
    if(A_PriorHotKey != "k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}`"")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad5}")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind}{Text}`"")
    }
}
k up::toggleLayer(previousLayer)
+k::{
    if(A_PriorHotKey != "+k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad5}")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}`"")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad5}")
    }
}
+k up::toggleLayer(previousLayer)
l::{
    if(A_PriorHotKey != "l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text})")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad6}")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind}{Text})")
    }
}
l up::toggleLayer(previousLayer)
+l::{
    if(A_PriorHotKey != "+l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad6}")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text})")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad6}")
    }
}
+l up::toggleLayer(previousLayer)
`;::{
    if(A_PriorHotKey != "`;" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}}")
        while(GetKeyState(";", "P")){
            endTime := A_TickCount - startTime
            if(";" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Numpad0}")
                KeyWait(";")
            }
        }
    } else {
        SendInput("{Blind}{Text}}")
    }
}
`; up::toggleLayer(previousLayer)
+;::{
    if(A_PriorHotKey != "+;" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad0}")
        while(GetKeyState(";", "P")){
            endTime := A_TickCount - startTime
            if(";" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}}")
                KeyWait(";")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad0}")
    }
}
+; up::toggleLayer(previousLayer)

x::{
    if(A_PriorHotKey != "x" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}€")
        while(GetKeyState("x", "P")){
            endTime := A_TickCount - startTime
            if("x" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}©")
                KeyWait("x")
            }
        }
    } else {
        SendInput("{Blind}{Text}€")
    }
}
x up::toggleLayer(previousLayer)
+x::{
    if(A_PriorHotKey != "+x" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}©")
        while(GetKeyState("x", "P")){
            endTime := A_TickCount - startTime
            if("x" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}€")
                KeyWait("x")
            }
        }
    } else {
        SendInput("{Blind+}{Text}©")
    }
}
+x up::toggleLayer(previousLayer)
c::{
    if(A_PriorHotKey != "c" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}&")
        while(GetKeyState("c", "P")){
            endTime := A_TickCount - startTime
            if("c" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}|")
                KeyWait("c")
            }
        }
    } else {
        SendInput("{Blind}{Text}&")
    }
}
c up::toggleLayer(previousLayer)
+c::{
    if(A_PriorHotKey != "+c" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}|")
        while(GetKeyState("c", "P")){
            endTime := A_TickCount - startTime
            if("c" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}&")
                KeyWait("c")
            }
        }
    } else {
        SendInput("{Blind+}{Text}|")
    }
}
+c up::toggleLayer(previousLayer)
v::{
    if(A_PriorHotKey != "v" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}#")
        while(GetKeyState("v", "P")){
            endTime := A_TickCount - startTime
            if("v" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}*")
                KeyWait("v")
            }
        }
    } else {
        SendInput("{Blind}{Text}#")
    }
}
v up::toggleLayer(previousLayer)
+v::{
    if(A_PriorHotKey != "+vv" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}*")
        while(GetKeyState("v", "P")){
            endTime := A_TickCount - startTime
            if("v" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}#")
                KeyWait("v")
            }
        }
    } else {
        SendInput("{Blind+}{Text}*")
    }
}
+v up::toggleLayer(previousLayer)
b::{
    if(A_PriorHotKey != "b" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}¿")
        while(GetKeyState("b", "P")){
            endTime := A_TickCount - startTime
            if("b" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}¡")
                KeyWait("b")
            }
        }
    } else {
        SendInput("{Blind}{Text}¿")
    }
}
b up::toggleLayer(previousLayer)
+b::{
    if(A_PriorHotKey != "+b" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}¡")
        while(GetKeyState("b", "P")){
            endTime := A_TickCount - startTime
            if("b" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}¿")
                KeyWait("b")
            }
        }
    } else {
        SendInput("{Blind+}{Text}¡")
    }
}
+b up::toggleLayer(previousLayer)
n::{
    if(A_PriorHotKey != "n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}_")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Numpad7}")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind}{Text}_")
    }
}
n up::toggleLayer(previousLayer)
+n::{
    if(A_PriorHotKey != "+n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad7}")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}_")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad7}")
    }
}
+n up::toggleLayer(previousLayer)
m::{
    if(A_PriorHotKey != "m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}'")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Numpad8}")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind}{Text}'")
    }
}
m up::toggleLayer(previousLayer)
+m::{
    if(A_PriorHotKey != "+m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad8}")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}'")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad8}")
    }
}
+m up::toggleLayer(previousLayer)
,::{
    if(A_PriorHotKey != "," || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}§")
        while(GetKeyState(",", "P")){
            endTime := A_TickCount - startTime
            if("," = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Numpad9}")
                KeyWait(",")
            }
        }
    } else {
        SendInput("{Blind}{Text}§")
    }
}
, up::toggleLayer(previousLayer)
+,::{
    if(A_PriorHotKey != "+," || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Numpad9}")
        while(GetKeyState(",", "P")){
            endTime := A_TickCount - startTime
            if("," = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}§")
                KeyWait(",")
            }
        }
    } else {
        SendInput("{Blind+}{Numpad9}")
    }
}
+, up::toggleLayer(previousLayer)
.::{
    if(A_PriorHotKey != "." || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}¶")
        while(GetKeyState(".", "P")){
            endTime := A_TickCount - startTime
            if("." = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind+}{Text}™")
                KeyWait(".")
            }
        }
    } else {
        SendInput("{Blind}{Text}¶")
    }
}
. up::toggleLayer(previousLayer)
+.::{
    if(A_PriorHotKey != "+." || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}™")
        while(GetKeyState(".", "P")){
            endTime := A_TickCount - startTime
            if("." = A_PriorKey && endTime > 180){
                SendInput("{Backspace}")
                SendInput("{Blind}{Text}¶")
                KeyWait(".")
            }
        }
    } else {
        SendInput("{Blind+}{Text}™")
    }
}
+. up::toggleLayer(previousLayer)
; ====================================== ADDITIONAL KEYS ======================================
CapsLock::{
    SendInput("{Blind}{Esc}")
    toggleLayer("Vim")
}
*Shift::{
    SendInput("{Blind}{Shift downR}")
    if !(released := KeyWait("Shift", "T0.18")){
        KeyWait("Shift")
    }
    SendInput("{Blind}{Shift up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("CSym")
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