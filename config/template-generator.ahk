#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; ============================== VARIABLES ==============================

; Settings object
settings := {
    ; Whether or not to include various groups of keys
    includeMouseButtons: IniRead("settings.ini", "Template Generator Settings", "includeMouseButtons", true),
    includeLetterKeys: IniRead("settings.ini", "Template Generator Settings", "includeLetterKeys", true),
    includeNumberKeys: IniRead("settings.ini", "Template Generator Settings", "includeNumberKeys", true),
    includePunctuationKeys: IniRead("settings.ini", "Template Generator Settings", "includePunctuationKeys", true),
    includeControlKeys: IniRead("settings.ini", "Template Generator Settings", "includeControlKeys", true),
    includeNavigationKeys: IniRead("settings.ini", "Template Generator Settings", "includeNavigationKeys", true),
    includeNumKeys: IniRead("settings.ini", "Template Generator Settings", "includeNumKeys", true),
    includeMediaKeys: IniRead("settings.ini", "Template Generator Settings", "includeMediaKeys", true),

    ; Whether or not to include Shift modifier variations
    includeShift: IniRead("settings.ini", "Template Generator Settings", "includeShift", true), 
    includeShiftRightLeft: IniRead("settings.ini", "Template Generator Settings", "includeShiftRightLeft", true), 

    ; Whether or not to include Control modifier variations
    includeControl: IniRead("settings.ini", "Template Generator Settings", "includeControl", true), 
    includeControlRightLeft: IniRead("settings.ini", "Template Generator Settings", "includeControlRightLeft", true), 
    
    ; Whether or not to include Alt modifier variations
    includeAlt: IniRead("settings.ini", "Template Generator Settings", "includeAlt", true), 
    includeAltRightLeft: IniRead("settings.ini", "Template Generator Settings", "includeAltRightLeft", true), 

    ; Whether or not to include Windows modifier variations
    includeWindows: IniRead("settings.ini", "Template Generator Settings", "includeWindows", true), 

    ; Whether to format objects set the default included action
    formatted: IniRead("settings.ini", "Template Generator Settings", "formatted", false),
    defaultFunction: IniRead("settings.ini", "Template Generator Settings", "defaultFunction", "SendInput(`"x`")") , 

    ; Any additional keys to set, plus any optional modifiers (essentially chords, or AHK's combo keys). These are space seperated strings if included, unlike the previous Booleans  
    additionalKeys: IniRead("settings.ini", "Template Generator Settings", "additionalKeys", false),
    additionalModifiers: IniRead("settings.ini", "Template Generator Settings", "additionalModifiers", false),
}


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
additionalKeysArray := StrSplit(settings.additionalKeys, A_Space)
additionalModifiersArray := StrSplit(settings.additionalModifiers, A_Space)

; ============================== UTILITY FUNCTIONS ==============================

; This function generates a template object which is formatted for either easy function definitions or easy remapping
; The template's default action is to simply send another key, for easy remapping
; Depending on your intellisense, this code might register as a syntax error but that's just because it isn't properly detecting escape characters
objectTemplate(targetKey) {
    if(settings.formatted){
        keyStr := "    {`n      key:`""
        keyStr .= targetKey
        keyStr .= "`",`n      function:(x)=>(`n          "
        keyStr .= settings.defaultFunction
        keyStr .= "`n      )`n    },`n"
    } else if(!settings.formatted){
        keyStr := "{key:`""
        keyStr .= targetKey
        keyStr .= "`", function:(x)=>(" 
        keyStr .= settings.defaultFunction
        keyStr .=")},`n"
    }
    return keyStr
}

; Single stop for building out the fileStr with all standard modifiers and variations
; Also includes conditional inclusion based on settings.ini
objectTemplateWithModifiers(key) {
    Global
    fileStr .= objectTemplate(key)
    
    ; Shift key modifier and variants
    if(settings.includeShift){
        fileStr .= objectTemplate("+" key)
    }
    if(settings.includeShiftRightLeft){
        fileStr .= objectTemplate("<+" key)
        fileStr .= objectTemplate(">+" key)
    }

    ; Control key modifier and variants
    if(settings.includeControl){
        fileStr .= objectTemplate("^" key)
    }
    if(settings.includeControlRightLeft){
        fileStr .= objectTemplate("<^" key)
        fileStr .= objectTemplate(">^" key)
    }

    ; Alt key modifier and variants
    if(settings.includeAlt){
        fileStr .= objectTemplate("!" key)
    }
    if(settings.includeAltRightLeft){
        fileStr .= objectTemplate("<!" key)
        fileStr .= objectTemplate(">!" key)
    }

    ; Windows key modifier and variants
    if(settings.includeWindows){
        fileStr .= objectTemplate("#" key)
    }
}

; ============================== BUILDING KEY ARRAY ==============================

; Pushes each group into the array. Groups are split for easy rearranging and so that some can be excluded based on the settings.ini file
if(settings.includeMouseButtons){
    for key in mouseButtonsArray {
        keyArray.Push(key)
    }
}

if(settings.includeLetterKeys){
    for key in letterKeysArray {
        keyArray.Push(key)
    }
}

if(settings.includeNumberKeys){
    for key in numberKeysArray {
        keyArray.Push(key)
    }
}

if(settings.includePunctuationKeys){
    for key in puncutationKeysArray {
        keyArray.Push(key)
    }
}

if(settings.includeControlKeys){
    for key in controlKeysArray {
        keyArray.Push(key)
    }
}

if(settings.includeNavigationKeys){
    for key in navigationKeysArray {
        keyArray.Push(key)
    }
}

if(settings.includeNumKeys){
    for key in numKeysArray {
        keyArray.Push(key)
    }
}

if(settings.includeMediaKeys){
    for key in mediaKeysArray {
        keyArray.Push(key)
    }
}

if(settings.additionalKeys) {
    for key in additionalKeysArray {
        keyArray.Push(key)
    }
}

; ============================== BUILDING TEMPLATE ==============================

; Generates the template file from the key array and adds comments.
for key in keyArray {
    ; These if statements provide some useful comments to denote different sections
    if(key = letterKeysArray[1]){
        fileStr .= "; ====================================== LETTERS ======================================`n"
    }
    if(key = numberKeysArray[1]){
        fileStr .= "; ====================================== NUMBERS ======================================`n"
    }
    if(key = puncutationKeysArray[1]){
        fileStr .= "; ====================================== PUNCTUATION ======================================`n"
    }
    if(key = controlKeysArray[1]){
        fileStr .= "; ====================================== CONTROL KEYS ======================================`n"
    }
    if(key = numKeysArray[1]){
        fileStr .= "; ====================================== NUMPAD ======================================`n"
    }
    if(key = mediaKeysArray[1]){
        fileStr .= "; ====================================== MEDIA KEYS ======================================`n"
    }
    if(settings.additionalKeys){
        if(key=additionalKeysArray[1]) {
            fileStr .= "; ====================================== ADDITIONAL KEYS ======================================`n"
        }
    }

    fileStr .= objectTemplate(key)
    
    ; Shift key modifier and variants
    if(settings.includeShift){
        fileStr .= objectTemplate("+" key)
    }
    if(settings.includeShiftRightLeft){
        fileStr .= objectTemplate("<+" key)
        fileStr .= objectTemplate(">+" key)
    }

    ; Control key modifier and variants
    if(settings.includeControl){
        fileStr .= objectTemplate("^" key)
    }
    if(settings.includeControlRightLeft){
        fileStr .= objectTemplate("<^" key)
        fileStr .= objectTemplate(">^" key)
    }

    ; Alt key modifier and variants
    if(settings.includeAlt){
        fileStr .= objectTemplate("!" key)
    }
    if(settings.includeAltRightLeft){
        fileStr .= objectTemplate("<!" key)
        fileStr .= objectTemplate(">!" key)
    }

    ; Windows key modifier and variants
    if(settings.includeWindows){
        fileStr .= objectTemplate("#" key)
    }
}

if (settings.additionalModifiers) {
    for modifier in additionalModifiersArray {
        for key in keyArray {
            fileStr .= objectTemplate(modifier " & " key)
        }
    }
}

; Closes out the array
fileStr .= "])"

; ============================== FILE CREATION ==============================
; Checks if a template already exists and deletes it so each template generated is new
; if (FileExist("./layer-template.ahk")) {
;     FileDelete("./layer-template.ahk")
; }

; Creates the template file
filepath := A_WorkingDir "\layers\layerX.ahk"
filename := RegExReplace(FileSelect("S24", filePath, "Save New Template", ".ahk"), "\.([^\.]+)(?<!\.ahk)$", ".ahk") 

try {
    FileAppend(fileStr, filename)
} catch {
    Return
}