#HotIf currentLayer = "Alpha-Sl"
; ====================================== LETTERS ======================================
q::{
    if(A_PriorHotKey != "+q" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}Q")
        while(GetKeyState("q", "P")){
            endTime := A_TickCount - startTime
            if("q" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bq")
                KeyWait("q")
            }
        }
    } else {
        SendInput("{Blind+}{Text}Q")
    }
}
+q::{
    if(A_PriorHotKey != "q" || A_TimeSincePriorHotkey > 500){
        startTime := A_TickCount
        SendInput("{Blind}{Text}q")
        while(GetKeyState("q", "P")){
            endTime := A_TickCount - startTime
            if("q" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bQ")
                KeyWait("q")
            }
        }
    } else {
        SendInput("{Blind}{Text}q")
    }
}
w::{
    if(A_PriorHotKey != "+w" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}W")
        while(GetKeyState("w", "P")){
            endTime := A_TickCount - startTime
            if("w" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bw")
                KeyWait("w")
            }
        }
    } else {
        SendInput("{Blind+}{Text}W")
    }
}
+w::{
    if(A_PriorHotKey != "w" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}w")
        while(GetKeyState("w", "P")){
            endTime := A_TickCount - startTime
            if("w" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bW")
                KeyWait("w")
            }
        }
    } else {
        SendInput("{Blind}{Text}w")
    }
}
e::{
    if(A_PriorHotKey != "+e" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}E")
        while(GetKeyState("e", "P")){
            endTime := A_TickCount - startTime
            if("e" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`be")
                KeyWait("e")
            }
        }
    } else {
        SendInput("{Blind+}{Text}E")
    }
}
+e::{
    if(A_PriorHotKey != "e" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}e")
        while(GetKeyState("e", "P")){
            endTime := A_TickCount - startTime
            if("e" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bE")
                KeyWait("e")
            }
        }
    } else {
        SendInput("{Blind}{Text}e")
    }
}
r::{
    if(A_PriorHotKey != "+r" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}R")
        while(GetKeyState("r", "P")){
            endTime := A_TickCount - startTime
            if("r" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`br")
                KeyWait("r")
            }
        }
    } else {
        SendInput("{Blind+}{Text}R")
    }
}
+r::{
    if(A_PriorHotKey != "r" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}r")
        while(GetKeyState("r", "P")){
            endTime := A_TickCount - startTime
            if("r" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bR")
                KeyWait("r")
            }
        }
    } else {
        SendInput("{Blind}{Text}r")
    }
}
t::{
    if(A_PriorHotKey != "+t" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}T")
        while(GetKeyState("t", "P")){
            endTime := A_TickCount - startTime
            if("t" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bt")
                KeyWait("t")
            }
        }
    } else {
        SendInput("{Blind+}{Text}T")
    }
}
+t::{
    if(A_PriorHotKey != "t" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}t")
        while(GetKeyState("t", "P")){
            endTime := A_TickCount - startTime
            if("t" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bT")
                KeyWait("t")
            }
        }
    } else {
        SendInput("{Blind}{Text}t")
    }
}
y::{
    if(A_PriorHotKey != "+y" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}Y")
        while(GetKeyState("y", "P")){
            endTime := A_TickCount - startTime
            if("y" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`by")
                KeyWait("y")
            }
        }
    } else {
        SendInput("{Blind+}{Text}Y")
    }
}
+y::{
    if(A_PriorHotKey != "y" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}y")
        while(GetKeyState("y", "P")){
            endTime := A_TickCount - startTime
            if("y" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bY")
                KeyWait("y")
            }
        }
    } else {
        SendInput("{Blin}{Text}y")
    }
}
u::{
    if(A_PriorHotKey != "+u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}U")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bu")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind+}{Text}U")
    }
}
+u::{
    if(A_PriorHotKey != "u" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}u")
        while(GetKeyState("u", "P")){
            endTime := A_TickCount - startTime
            if("u" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bU")
                KeyWait("u")
            }
        }
    } else {
        SendInput("{Blind}{Text}u")
    }
}
i::{
    if(A_PriorHotKey != "+i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}I")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bi")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind+}{Text}I")
    }
}
+i::{
    if(A_PriorHotKey != "i" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}i")
        while(GetKeyState("i", "P")){
            endTime := A_TickCount - startTime
            if("i" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bI")
                KeyWait("i")
            }
        }
    } else {
        SendInput("{Blind}{Text}i")
    }
}
o::{
    if(A_PriorHotKey != "+o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}O")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bo")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind+}{Text}O")
    }
}
+o::{
    if(A_PriorHotKey != "o" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}o")
        while(GetKeyState("o", "P")){
            endTime := A_TickCount - startTime
            if("o" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bO")
                KeyWait("o")
            }
        }
    } else {
        SendInput("{Blind}{Text}o")
    }
}
p::{
    if(A_PriorHotKey != "+p" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}P")
        while(GetKeyState("p", "P")){
            endTime := A_TickCount - startTime
            if("p" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bp")
                KeyWait("p")
            }
        }
    } else {
        SendInput("{Blind+}{Text}P")
    }
}
+p::{
    if(A_PriorHotKey != "p" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}p")
        while(GetKeyState("p", "P")){
            endTime := A_TickCount - startTime
            if("p" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bP")
                KeyWait("p")
            }
        }
    } else {
        SendInput("{Blind}{Text}p")
    }
}

a::{
    if(A_PriorHotKey != "+a" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}A")
        while(GetKeyState("a", "P")){
            endTime := A_TickCount - startTime
            if("a" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`ba")
                KeyWait("a")
            }
        }
    } else {
        SendInput("{Blind+}{Text}A")
    }
}
+a::{
    if(A_PriorHotKey != "a" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}a")
        while(GetKeyState("a", "P")){
            endTime := A_TickCount - startTime
            if("a" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bA")
                KeyWait("a")
            }
        }
    } else {
        SendInput("{Blind}{Text}a")
    }
}
s::{
    if(A_PriorHotKey != "+s" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}S")
        while(GetKeyState("s", "P")){
            endTime := A_TickCount - startTime
            if("s" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bs")
                KeyWait("s")
            }
        }
    } else {
        SendInput("{Blind+}{Text}S")
    }
}
+s::{
    if(A_PriorHotKey != "s" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}s")
        while(GetKeyState("s", "P")){
            endTime := A_TickCount - startTime
            if("s" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bS")
                KeyWait("s")
            }
        }
    } else {
        SendInput("{Blind}{Text}s")
    }
}
d::{
    if(A_PriorHotKey != "+d" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}D")
        while(GetKeyState("d", "P")){
            endTime := A_TickCount - startTime
            if("d" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bd")
                KeyWait("d")
            }
        }
    } else {
        SendInput("{Blind+}{Text}D")
    }
}
+d::{
    if(A_PriorHotKey != "d" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}d")
        while(GetKeyState("d", "P")){
            endTime := A_TickCount - startTime
            if("d" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bD")
                KeyWait("d")
            }
        }
    } else {
        SendInput("{Blind}{Text}d")
    }
}
f::{
    if(A_PriorHotKey != "+f" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}F")
        while(GetKeyState("f", "P")){
            endTime := A_TickCount - startTime
            if("f" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bf")
                KeyWait("f")
            }
        }
    } else {
        SendInput("{Blind+}{Text}F")
    }
}
+f::{
    if(A_PriorHotKey != "f" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}f")
        while(GetKeyState("f", "P")){
            endTime := A_TickCount - startTime
            if("f" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bF")
                KeyWait("f")
            }
        }
    } else {
        SendInput("{Blind}{Text}f")
    }
}
g::{
    if(A_PriorHotKey != "+g" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}G")
        while(GetKeyState("g", "P")){
            endTime := A_TickCount - startTime
            if("g" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bg")
                KeyWait("g")
            }
        }
    } else {
        SendInput("{Blind+}{Text}G")
    }
}
+g::{
    if(A_PriorHotKey != "g" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}g")
        while(GetKeyState("g", "P")){
            endTime := A_TickCount - startTime
            if("g" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bG")
                KeyWait("g")
            }
        }
    } else {
        SendInput("{Blind}{Text}g")
    }
}
h::{
    if(A_PriorHotKey != "+h" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}H")
        while(GetKeyState("h", "P")){
            endTime := A_TickCount - startTime
            if("h" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bh")
                KeyWait("h")
            }
        }
    } else {
        SendInput("{Blind+}{Text}H")
    }
}
+h::{
    if(A_PriorHotKey != "h" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}h")
        while(GetKeyState("h", "P")){
            endTime := A_TickCount - startTime
            if("h" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bH")
                KeyWait("h")
            }
        }
    } else {
        SendInput("{Blind}{Text}h")
    }
}
j::{
    if(A_PriorHotKey != "+j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}J")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bj")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind+}{Text}J")
    }
}
+j::{
    if(A_PriorHotKey != "j" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}j")
        while(GetKeyState("j", "P")){
            endTime := A_TickCount - startTime
            if("j" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bJ")
                KeyWait("j")
            }
        }
    } else {
        SendInput("{Blind}{Text}j")
    }
}
k::{
    if(A_PriorHotKey != "+k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}K")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bk")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind+}{Text}K")
    }
}
+k::{
    if(A_PriorHotKey != "k" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}k")
        while(GetKeyState("k", "P")){
            endTime := A_TickCount - startTime
            if("k" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bK")
                KeyWait("k")
            }
        }
    } else {
        SendInput("{Blind}{Text}k")
    }
}
l::{
    if(A_PriorHotKey != "+l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}L")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bl")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind+}{Text}L")
    }
}
+l::{
    if(A_PriorHotKey != "l" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}l")
        while(GetKeyState("l", "P")){
            endTime := A_TickCount - startTime
            if("l" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bL")
                KeyWait("l")
            }
        }
    } else {
        SendInput("{Blind}{Text}l")
    }
}

z::{
    if(A_PriorHotKey != "+z" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}Z")
        while(GetKeyState("z", "P")){
            endTime := A_TickCount - startTime
            if("z" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bz")
                KeyWait("z")
            }
        }
    } else {
        SendInput("{Blind+}{Text}Z")
    }
}
+z::{
    if(A_PriorHotKey != "z" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}z")
        while(GetKeyState("z", "P")){
            endTime := A_TickCount - startTime
            if("z" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bZ")
                KeyWait("z")
            }
        }
    } else {
        SendInput("{Blind}{Text}z")
    }
}
x::{
    if(A_PriorHotKey != "+x" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}X")
        while(GetKeyState("x", "P")){
            endTime := A_TickCount - startTime
            if("x" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bx")
                KeyWait("x")
            }
        }
    } else {
        SendInput("{Blind+}{Text}X")
    }
}
+x::{
    if(A_PriorHotKey != "x" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}x")
        while(GetKeyState("x", "P")){
            endTime := A_TickCount - startTime
            if("x" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bX")
                KeyWait("x")
            }
        }
    } else {
        SendInput("{Blind}{Text}x")
    }
}
c::{
    if(A_PriorHotKey != "+c" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}C")
        while(GetKeyState("c", "P")){
            endTime := A_TickCount - startTime
            if("c" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bc")
                KeyWait("c")
            }
        }
    } else {
        SendInput("{Blind+}{Text}C")
    }
}
+c::{
    if(A_PriorHotKey != "c" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}c")
        while(GetKeyState("c", "P")){
            endTime := A_TickCount - startTime
            if("c" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bC")
                KeyWait("c")
            }
        }
    } else {
        SendInput("{Blind}{Text}c")
    }
}
v::{
    if(A_PriorHotKey != "+vv" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}V")
        while(GetKeyState("v", "P")){
            endTime := A_TickCount - startTime
            if("v" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bv")
                KeyWait("v")
            }
        }
    } else {
        SendInput("{Blind+}{Text}V")
    }
}
+v::{
    if(A_PriorHotKey != "v" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}v")
        while(GetKeyState("v", "P")){
            endTime := A_TickCount - startTime
            if("v" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bV")
                KeyWait("v")
            }
        }
    } else {
        SendInput("{Blind}{Text}v")
    }
}
b::{
    if(A_PriorHotKey != "+b" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}B")
        while(GetKeyState("b", "P")){
            endTime := A_TickCount - startTime
            if("b" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bb")
                KeyWait("b")
            }
        }
    } else {
        SendInput("{Blind+}{Text}B")
    }
}
+b::{
    if(A_PriorHotKey != "b" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}b")
        while(GetKeyState("b", "P")){
            endTime := A_TickCount - startTime
            if("b" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bB")
                KeyWait("b")
            }
        }
    } else {
        SendInput("{Blind}{Text}b")
    }
}
n::{
    if(A_PriorHotKey != "+n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}N")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bn")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind+}{Text}N")
    }
}
+n::{
    if(A_PriorHotKey != "n" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}n")
        while(GetKeyState("n", "P")){
            endTime := A_TickCount - startTime
            if("n" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bN")
                KeyWait("n")
            }
        }
    } else {
        SendInput("{Blind}{Text}n")
    }
}
m::{
    if(A_PriorHotKey != "+m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind+}{Text}M")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 180){
                SendInput("{Blind+}{Text}`bm")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind+}{Text}M")
    }
}
+m::{
    if(A_PriorHotKey != "m" || A_TimeSincePriorHotkey > 350){
        startTime := A_TickCount
        SendInput("{Blind}{Text}m")
        while(GetKeyState("m", "P")){
            endTime := A_TickCount - startTime
            if("m" = A_PriorKey && endTime > 180){
                SendInput("{Blind}{Text}`bM")
                KeyWait("m")
            }
        }
    } else {
        SendInput("{Blind}{Text}m")
    }
}
; ,::{
;     if(A_PriorHotKey != "," || A_TimeSincePriorHotkey > 350){
;         startTime := A_TickCount
;         SendInput("{Blind}{Text}§")
;         while(GetKeyState(",", "P")){
;             endTime := A_TickCount - startTime
;             if("," = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind+}{Numpad9}")
;                 KeyWait(",")
;             }
;         }
;     } else {
;         SendInput("{Blind}{Text}§")
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
;                 SendInput("{Blind}{Text}§")
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
;         SendInput("{Blind}{Text}¶")
;         while(GetKeyState(".", "P")){
;             endTime := A_TickCount - startTime
;             if("." = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind+}{Text}™")
;                 KeyWait(".")
;             }
;         }
;     } else {
;         SendInput("{Blind}{Text}¶")
;     }
; }
; +.::{
;     if(A_PriorHotKey != "+." || A_TimeSincePriorHotkey > 350){
;         startTime := A_TickCount
;         SendInput("{Blind+}{Text}™")
;         while(GetKeyState(">", "P")){
;             endTime := A_TickCount - startTime
;             if(">" = A_PriorKey && endTime > 180){
;                 SendInput("{Backspace}")
;                 SendInput("{Blind}{Text}¶")
;                 KeyWait(">")
;             }
;         }
;     } else {
;         SendInput("{Blind+}{Text}™")
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
        toggleLayer("Alpha")
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
`;::toggleLayer("Sym-D")