#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; ============================== VARIABLES ==============================
; Final string that contains template text
fileStr := "layerMatrix.Push([`n"

; Will eventually hold the full list of all unmodified keys
keyArray := []

; Various groups of keys, seperated so that they can be added to the template file seperately, making it easier to exclude some groups based on settings.ini
mouseButtons := "LButton RButton MButton XButton1 XButton2 WheelDown WheelUp WheelLeft WheelRight"
letterKeys := "qwertyuiopasdfghjklzxcvbnm"
numberKeys := "1234567890"
punctuationKeys := "-=[]\;\',./``"
controlKeys := "CapsLock Space Tab Enter Escape Backspace Delete LWin RWin Control LControl RControl Shift LShift RShift Alt RAlt LAlt ScrollLock AppsKey PrintScreen CtrlBreak Pause Help Sleep"
navigationKeys := "Up Down Left Right Insert Home End PgUp PgDn"
numKeys := "NumLock NumpadDiv NumpadMult NumpadAdd NumbadSub NumpadEnter Numpad0 Numpad1 Numpad2 Numpad3 Numpad4 Numpad5 Numpad6 Numpad7 Numpad8 Numpad9"
mediaKeys := "Browser_Back Browser_Forward Browser_Refresh Browser_Stop Browser_Search Browser_Favorites Browser_Home Volume_Mute Volume_Down Volume_Up Media_Next Media_Prev Media_Stop Media_Play_Pause Launch_Mail Launch_Media Launch_App1 Launch_App2"

; Move all key groups into dedicated arrays for ease and consistency of loop formats
mouseButtonsArray := StrSplit(mouseButtons, A_Space)
letterKeysArray := StrSplit(letterKeys, "")
numberKeysArray := StrSplit(numberKeys, "")
puncutationKeysArray := StrSplit(punctuationKeys, "")
controlKeysArray := StrSplit(controlKeys, A_Space)
navigationKeysArray := StrSplit(navigationKeys, A_Space)
numKeysArray := StrSplit(numKeys, A_Space)
mediaKeysArray := StrSplit(mediaKeys, A_Space)

; ============================== UTILITY FUNCTIONS ==============================

; This function generates a template object which is formatted for either easy function definitions or easy remapping
; The template's default action is to simply send another key, for easy remapping
; Depending on your intellisense, this code might register as a syntax error but that's just because it isn't properly detecting escape characters
objectTemplate(targetKey) {
    keyStr := "    {`n      key:`""
    keyStr .= targetKey
    keyStr .= "`",`n      function:(x)=>(`n          SendInput(`"x`")`n      )`n    },`n"
    return keyStr
}

; ============================== BUILDING KEY ARRAY ==============================

; Pushes each group into the array. Groups are split for easy rearranging and so that some can be excluded based on the settings.ini file
for key in mouseButtonsArray {
    keyArray.Push(key)
}

for key in letterKeysArray {
    keyArray.Push(key)
}

for key in numberKeysArray {
    keyArray.Push(key)
}

for key in puncutationKeysArray {
    keyArray.Push(key)
}

for key in controlKeysArray {
    keyArray.Push(key)
}

for key in navigationKeysArray {
    keyArray.Push(key)
}

for key in numKeysArray {
    keyArray.Push(key)
}

for key in mediaKeysArray {
    keyArray.Push(key)
}

; ============================== BUILDING TEMPLATE ==============================

; Generates the template file from the key array and adds comments.
for key in keyArray {
    ; These if statements provide some useful comments to denote different sections
    if(key = "q"){
        fileStr .= "; ====================================== LETTERS ======================================`n"
    }
    if(key = "1"){
        fileStr .= "; ====================================== NUMBERS ======================================`n"
    }
    if(key = "-"){
        fileStr .= "; ====================================== PUNCTUATION ======================================`n"
    }
    if(key = "CapsLock"){
        fileStr .= "; ====================================== CONTROL KEYS ======================================`n"
    }
    if(key = "NumLock"){
        fileStr .= "; ====================================== NUMPAD ======================================`n"
    }
    if(key = "Browser_Back"){
        fileStr .= "; ====================================== MEDIA KEYS ======================================`n"
    }
    fileStr .= objectTemplate(key)
    
    ; Shift key modifier and variants
    fileStr .= objectTemplate("+" key)
    fileStr .= objectTemplate("<+" key)
    fileStr .= objectTemplate(">+" key)

    ; Control key modifier and variants
    fileStr .= objectTemplate("^" key)
    fileStr .= objectTemplate("<^" key)
    fileStr .= objectTemplate(">^" key)

    ; Alt key modifier and variants
    fileStr .= objectTemplate("!" key)
    fileStr .= objectTemplate("<!" key)
    fileStr .= objectTemplate(">!" key)

    ; Windows key modifier and variants
    fileStr .= objectTemplate("#" key)
    fileStr .= objectTemplate("<#" key)
    fileStr .= objectTemplate(">#" key)
}

; Closes out the array
fileStr .= "])"
; MsgBox fileStr
; ============================== FILE CREATION ==============================
; Checks if a template already exists and deletes it so each template generated is new
if (FileExist("./layer-template.ahk")) {
    FileDelete("./layer-template.ahk")
}
; Creates the template file
FileAppend(fileStr, "layer-template.ahk")