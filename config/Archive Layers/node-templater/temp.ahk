
; Here's a script for AHK v2 to try out. Since you use an external keyboard, I assume that when you press the key marked "q" on it, you get the letter "q". If not, you can edit the `letters` variable.

; Type as normal. Hold the key down to automatically backspace and replace with a capital. Double tap the key, and on the second press keep it held in order to replicate the normal long hold behavior of spamming the letter. Should also work correctly with modifier keys, like Shift, but since you use AHK you'll probably figure that out from reading it.


#Requires AutoHotkey v2.0
#SingleInstance Force


; KEY VARIABLES
; In ms, how long to wait before ignoring repeated inputs as a double tap
doubleTapDelay := 500

; How long before initiating long press behaviour, in ms 
longPressDelay := 200

; What letters should be typed, ordered as per a standard QWERTY board
letters := "qwertyuiopasdfghjklzxcvbnm" 

; LETTER MAPS
lettersArr := StrSplit(letters)

; Maps hotkeys to positions in an array
lettersMap := Map(
    "*q", 1, 
    "*w", 2, 
    "*e", 3, 
    "*r", 4, 
    "*t", 5, 
    "*y", 6, 
    "*u", 7, 
    "*i", 8, 
    "*o", 9, 
    "*p", 10, 
    "*a", 11, 
    "*s", 12, 
    "*d", 13, 
    "*f", 14, 
    "*g", 15, 
    "*h", 16, 
    "*j", 17, 
    "*k", 18, 
    "*l", 19, 
    "*z", 20, 
    "*x", 21, 
    "*c", 22, 
    "*v", 23, 
    "*b", 24, 
    "*n", 25, 
    "*m", 26 
)

; HOTKEYS
#SuspendExempt True
^!+s::Suspend(-1)
^!+q::ExitApp
#SuspendExempt False

*q::
*w::
*e::
*r::
*t::
*y::
*u::
*i::
*o::
*p::
*a::
*s::
*d::
*f::
*g::
*h::
*j::
*k::
*l::
*z::
*x::
*c::
*v::
*b::
*n::
*m::{
    ; The input hotkey serves as a value to pick the correct key in the map to link up to the correct entry in the array
    ; It's convoluted because it's easier to edit the string variable the array is built from then to edit the map variable directly


    ; Some variables for how the longpress functionality works
    numOfBackspaces := 1
    thisKey := SubStr(A_ThisHotkey, -1)

    ; Code that allows double tapping the key then holding to result in spamming the lowercase version
    if(A_PriorKey != thisKey || A_TimeSincePriorHotkey > doubleTapDelay){
        ; code that handles long press functionality
        startTime := A_TickCount
        ; Initially sends the usual lowercase letter
        SendInput("{Blind}" lettersArr[lettersMap[A_ThisHotkey]])

        backspaceInput := "{Backspace " numOfBackspaces "}"
        ; Instead of a sleep or simlar delay, a loop is used so that, in the process of rapid typing, one cannot release the hotkey and then press it again, falsely triggering the script into backspacing, missing that the key had been released
        while(GetKeyState(thisKey, "P")) {
            endTime := A_TickCount - startTime
            if(thisKey = A_PriorKey && endTime > longPressDelay) {
                ; Deletes the last typed character, types it again but uppercase, then waits for the key release
                SendInput(backspaceInput)
                SendInput("{Blind}" StrUpper(lettersArr[lettersMap[A_ThisHotkey]]))
                KeyWait(thisKey)
            }
        }
    } else {
        SendInput("{Blind}" lettersArr[lettersMap[A_ThisHotkey]])
    }
}