#HotIf currentLayer = "Alpha"
; ====================================== LETTERS ======================================
q::{
    if(A_PriorHotKey != "q" || A_TimeSincePriorHotkey > 500){
        startTime := A_TickCount
        SendInput("{Blind}q")
        while(GetKeyState("q", "P")){
            endTime := A_TickCount - startTime
            if("q" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}Q")
                KeyWait("q")
            }
        }
    } else {
        SendInput("{Blind}q")
    }
}
+q::{
    if(A_PriorHotKey != "+q" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}Q")
        while(GetKeyState("q", "P")){
            endTime := A_TickCount - startTime
            if("q" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}q")
                KeyWait("q")
            }
        }
    } else {
        SendInput("{Blind+}Q")
    }
}
w::{
    if(A_PriorHotKey != "w" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}w")
        while(GetKeyState("w", "P")){
            endTime := A_TickCount - startTime
            if("w" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}W")
                KeyWait("w")
            }
        }
    } else {
        SendInput("{Blind}w")
    }
}
+w::{
    if(A_PriorHotKey != "+w" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}W")
        while(GetKeyState("w", "P")){
            endTime := A_TickCount - startTime
            if("w" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}w")
                KeyWait("w")
            }
        }
    } else {
        SendInput("{Blind+}W")
    }
}
e::{
    if(A_PriorHotKey != "e" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}e")
        while(GetKeyState("e", "P")){
            endTime := A_TickCount - startTime
            if("e" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}E")
                KeyWait("e")
            }
        }
    } else {
        SendInput("{Blind}e")
    }
}
+e::{
    if(A_PriorHotKey != "+e" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}E")
        while(GetKeyState("e", "P")){
            endTime := A_TickCount - startTime
            if("e" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}e")
                KeyWait("e")
            }
        }
    } else {
        SendInput("{Blind+}E")
    }
}
r::{
    if(A_PriorHotKey != "r" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}r")
        while(GetKeyState("r", "P")){
            endTime := A_TickCount - startTime
            if("r" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}R")
                KeyWait("r")
            }
        }
    } else {
        SendInput("{Blind}r")
    }
}
+r::{
    if(A_PriorHotKey != "+r" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}R")
        while(GetKeyState("r", "P")){
            endTime := A_TickCount - startTime
            if("r" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}r")
                KeyWait("r")
            }
        }
    } else {
        SendInput("{Blind+}R")
    }
}
t::{
    if(A_PriorHotKey != "t" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}t")
        while(GetKeyState("t", "P")){
            endTime := A_TickCount - startTime
            if("t" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}T")
                KeyWait("t")
            }
        }
    } else {
        SendInput("{Blind}t")
    }
}
+t::{
    if(A_PriorHotKey != "+t" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}T")
        while(GetKeyState("t", "P")){
            endTime := A_TickCount - startTime
            if("t" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}t")
                KeyWait("t")
            }
        }
    } else {
        SendInput("{Blind+}T")
    }
}
y::{
    if(A_PriorHotKey != "y" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}y")
        while(GetKeyState("y", "P")){
            endTime := A_TickCount - startTime
            if("y" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}Y")
                KeyWait("y")
            }
        }
    } else {
        SendInput("{Blin}y")
    }
}
+y::{
    if(A_PriorHotKey != "+y" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}Y")
        while(GetKeyState("y", "P")){
            endTime := A_TickCount - startTime
            if("y" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}Y")
                KeyWait("y")
            }
        }
    } else {
        SendInput("{Blind+}Y")
    }
}
u::{
    if(A_PriorHotKey != "u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}u")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}U")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind}u")
    }
}
+u::{
    if(A_PriorHotKey != "+u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}U")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}u")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind+}U")
    }
}
i::{
    if(A_PriorHotKey != "i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}i")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}I")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind}i")
    }
}
+i::{
    if(A_PriorHotKey != "+i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}I")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}i")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind+}I")
    }
}
o::{
    if(A_PriorHotKey != "o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}o")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}O")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind}o")
    }
}
+o::{
    if(A_PriorHotKey != "+o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}O")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}o")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind+}O")
    }
}
p::{
    if(A_PriorHotKey != "p" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}p")
        while(GetKeyState("p", "P")){
            endTime := A_TickCount - startTime
            if("p" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}P")
                KeyWait("p")
            }
        }
    } else {
        SendInput("{Blind}p")
    }
}
+p::{
    if(A_PriorHotKey != "+p" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}P")
        while(GetKeyState("p", "P")){
            endTime := A_TickCount - startTime
            if("p" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}P")
                KeyWait("p")
            }
        }
    } else {
        SendInput("{Blind+}P")
    }
}

a::{
    if(A_PriorHotKey != "a" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}a")
        while(GetKeyState("a", "P")){
            endTime := A_TickCount - startTime
            if("a" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}A")
                KeyWait("a")
            }
        }
    } else {
        SendInput("{Blind}a")
    }
}
+a::{
    if(A_PriorHotKey != "+a" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}A")
        while(GetKeyState("a", "P")){
            endTime := A_TickCount - startTime
            if("a" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}a")
                KeyWait("a")
            }
        }
    } else {
        SendInput("{Blind+}A")
    }
}
s::{
    if(A_PriorHotKey != "s" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}s")
        while(GetKeyState("s", "P")){
            endTime := A_TickCount - startTime
            if("s" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}S")
                KeyWait("s")
            }
        }
    } else {
        SendInput("{Blind}s")
    }
}
+s::{
    if(A_PriorHotKey != "+s" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}S")
        while(GetKeyState("s", "P")){
            endTime := A_TickCount - startTime
            if("s" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}s")
                KeyWait("s")
            }
        }
    } else {
        SendInput("{Blind+}S")
    }
}
d::{
    if(A_PriorHotKey != "d" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}d")
        while(GetKeyState("d", "P")){
            endTime := A_TickCount - startTime
            if("d" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}D")
                KeyWait("d")
            }
        }
    } else {
        SendInput("{Blind}d")
    }
}
+d::{
    if(A_PriorHotKey != "+d" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}D")
        while(GetKeyState("d", "P")){
            endTime := A_TickCount - startTime
            if("d" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}d")
                KeyWait("d")
            }
        }
    } else {
        SendInput("{Blind+}D")
    }
}
f::{
    if(A_PriorHotKey != "f" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}f")
        while(GetKeyState("f", "P")){
            endTime := A_TickCount - startTime
            if("f" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}F")
                KeyWait("f")
            }
        }
    } else {
        SendInput("{Blind}f")
    }
}
+f::{
    if(A_PriorHotKey != "+f" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}F")
        while(GetKeyState("f", "P")){
            endTime := A_TickCount - startTime
            if("f" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}f")
                KeyWait("f")
            }
        }
    } else {
        SendInput("{Blind+}F")
    }
}
g::{
    if(A_PriorHotKey != "g" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}g")
        while(GetKeyState("g", "P")){
            endTime := A_TickCount - startTime
            if("g" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}G")
                KeyWait("g")
            }
        }
    } else {
        SendInput("{Blind}g")
    }
}
+g::{
    if(A_PriorHotKey != "+g" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}G")
        while(GetKeyState("g", "P")){
            endTime := A_TickCount - startTime
            if("g" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}g")
                KeyWait("g")
            }
        }
    } else {
        SendInput("{Blind+}G")
    }
}
h::{
    if(A_PriorHotKey != "h" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}h")
        while(GetKeyState("h", "P")){
            endTime := A_TickCount - startTime
            if("h" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}H")
                KeyWait("h")
            }
        }
    } else {
        SendInput("{Blind}h")
    }
}
+h::{
    if(A_PriorHotKey != "+h" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}H")
        while(GetKeyState("h", "P")){
            endTime := A_TickCount - startTime
            if("h" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}h")
                KeyWait("h")
            }
        }
    } else {
        SendInput("{Blind+}H")
    }
}
j::{
    if(A_PriorHotKey != "j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}j")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}J")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind}j")
    }
}
+j::{
    if(A_PriorHotKey != "+j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}J")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}j")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind+}J")
    }
}
k::{
    if(A_PriorHotKey != "k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}k")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}K")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind}k")
    }
}
+k::{
    if(A_PriorHotKey != "+k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}K")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}k")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind+}K")
    }
}
l::{
    if(A_PriorHotKey != "l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}l")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}l")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind}l")
    }
}
+l::{
    if(A_PriorHotKey != "+l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}L")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}l")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind+}L")
    }
}

z::{
    if(A_PriorHotKey != "z" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}z")
        while(GetKeyState("z", "P")){
            endTime := A_TickCount - startTime
            if("z" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}Z")
                KeyWait("z")
            }
        }
    } else {
        SendInput("{Blind}z")
    }
}
+z::{
    if(A_PriorHotKey != "+z" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}Z")
        while(GetKeyState("z", "P")){
            endTime := A_TickCount - startTime
            if("z" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}z")
                KeyWait("z")
            }
        }
    } else {
        SendInput("{Blind+}Z")
    }
}
x::{
    if(A_PriorHotKey != "x" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}x")
        while(GetKeyState("x", "P")){
            endTime := A_TickCount - startTime
            if("x" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}X")
                KeyWait("x")
            }
        }
    } else {
        SendInput("{Blind}x")
    }
}
+x::{
    if(A_PriorHotKey != "+x" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}X")
        while(GetKeyState("x", "P")){
            endTime := A_TickCount - startTime
            if("x" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}x")
                KeyWait("x")
            }
        }
    } else {
        SendInput("{Blind+}X")
    }
}
c::{
    if(A_PriorHotKey != "c" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}c")
        while(GetKeyState("c", "P")){
            endTime := A_TickCount - startTime
            if("c" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}C")
                KeyWait("c")
            }
        }
    } else {
        SendInput("{Blind}c")
    }
}
+c::{
    if(A_PriorHotKey != "+c" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}C")
        while(GetKeyState("c", "P")){
            endTime := A_TickCount - startTime
            if("c" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}c")
                KeyWait("c")
            }
        }
    } else {
        SendInput("{Blind+}C")
    }
}
v::{
    if(A_PriorHotKey != "v" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}v")
        while(GetKeyState("v", "P")){
            endTime := A_TickCount - startTime
            if("v" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}V")
                KeyWait("v")
            }
        }
    } else {
        SendInput("{Blind}v")
    }
}
+v::{
    if(A_PriorHotKey != "+vv" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}V")
        while(GetKeyState("v", "P")){
            endTime := A_TickCount - startTime
            if("v" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}v")
                KeyWait("v")
            }
        }
    } else {
        SendInput("{Blind+}V")
    }
}
b::{
    if(A_PriorHotKey != "b" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}b")
        while(GetKeyState("b", "P")){
            endTime := A_TickCount - startTime
            if("b" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}B")
                KeyWait("b")
            }
        }
    } else {
        SendInput("{Blind}b")
    }
}
+b::{
    if(A_PriorHotKey != "+b" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}B")
        while(GetKeyState("b", "P")){
            endTime := A_TickCount - startTime
            if("b" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}b")
                KeyWait("b")
            }
        }
    } else {
        SendInput("{Blind+}B")
    }
}
n::{
    if(A_PriorHotKey != "n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}n")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}N")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind}n")
    }
}
+n::{
    if(A_PriorHotKey != "+n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}N")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}n")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind+}N")
    }
}
m::{
    if(A_PriorHotKey != "m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}m")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Backspace}M")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind}m")
    }
}
+m::{
    if(A_PriorHotKey != "+m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}M")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Backspace}m")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind+}M")
    }
}
; ,::{
;     if(A_PriorHotKey != "," || A_TimeSincePriorHotkey > 350){
;         startTime := A_TickCount
;         SendInput("{Blind}§")
;         while(GetKeyState(",", "P")){
;             endTime := A_TickCount - startTime
;             if("," = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind+}{Numpad9}")
;                 KeyWait(",")
;             }
;         }
;     } else {
;         SendInput("{Blind}§")
;     }
; }
; +,::{
;     if(A_PriorHotKey != "+," || A_TimeSincePriorHotkey > 350){
;         startTime := A_TickCount
;         SendInput("{Blind+}{Numpad9}")
;         while(GetKeyState("<", "P")){
;             endTime := A_TickCount - startTime
;             if("<" = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind}§")
;                 KeyWait("<")
;             }
;         }
;     } else {
;         SendInput("{Blind+}{Numpad9}")
;     }
; }
; .::{
;     if(A_PriorHotKey != "." || A_TimeSincePriorHotkey > 350){
;         startTime := A_TickCount
;         SendInput("{Blind}¶")
;         while(GetKeyState(".", "P")){
;             endTime := A_TickCount - startTime
;             if("." = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind+}™")
;                 KeyWait(".")
;             }
;         }
;     } else {
;         SendInput("{Blind}¶")
;     }
; }
; +.::{
;     if(A_PriorHotKey != "+." || A_TimeSincePriorHotkey > 350){
;         startTime := A_TickCount
;         SendInput("{Blind+}™")
;         while(GetKeyState(">", "P")){
;             endTime := A_TickCount - startTime
;             if(">" = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind}¶")
;                 KeyWait(">")
;             }
;         }
;     } else {
;         SendInput("{Blind+}™")
;     }
; }
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