#Requires AutoHotkey v2.0-beta
#SingleInstance Force
; Include the ini util functions
#Include ./config/util/ini-reader.ahk
; ============================== VARIABLES ==============================

; Settings object
settings := {
    ; Whether or not to include various groups of keys
    includeMouseButtons: readTemplateSettings("includeMouseButtons"),
    includeLetterKeys: readTemplateSettings("includeLetterKeys"),
    includeNumberKeys: readTemplateSettings("includeNumberKeys"),
    includePunctuationKeys: readTemplateSettings("includePunctuationKeys"),
    includeControlKeys: readTemplateSettings("includeControlKeys"),
    includeNavigationKeys: readTemplateSettings("includeNavigationKeys"),
    includeNumKeys: readTemplateSettings("includeNumKeys"),
    includeMediaKeys: readTemplateSettings("includeMediaKeys"),
    includeFunctionKeys: readTemplateSettings("includeFunctionKeys"),

    ; Whether or not to include Shift modifier variations
    includeShift: readTemplateSettings("includeShift"),
    includeShiftRightLeft: readTemplateSettings("includeShiftRightLeft"),

    ; Whether or not to include Control modifier variations
    includeControl: readTemplateSettings("includeControl"),
    includeControlRightLeft: readTemplateSettings("includeControlRightLeft"),

    ; Whether or not to include Alt modifier variations
    includeAlt: readTemplateSettings("includeAlt"),
    includeAltRightLeft: readTemplateSettings("includeAltRightLeft"),

    ; Whether or not to include Windows modifier variations
    includeWindows: readTemplateSettings("includeWindows"),

    ; Whether or not to include wildcard modifier and wildcard + modifier combinations
    includeWildcard: readTemplateSettings("includeWildcard"),

    ; Whether or not to include AltGr modifier variations
    includeAltGr: readTemplateSettings("includeAltGr"),

    ; Sets the default function
    defaultAction: readTemplateSettings("defaultAction"),

    ; Whether to include advancedMode,
    formatted: readTemplateSettings("formatted"),

    ; Any additional keys to set, plus any optional modifiers (essentially chords, or AHK's combo keys). These are space seperated strings if included, unlike the previous Booleans
    additionalKeys: readTemplateSettings("additionalKeys"),
    additionalModifiers: readTemplateSettings("additionalModifiers"),

    ; Sets default folder in config folder to hold the generated template file
    defaultFolder: readTemplateSettings("defaultFolder"),
}

; Gui to set the templates layer
templateLayer := 1

; Final string that contains template text
fileStr := "#HotIf currentLayer = " templateLayer "`n"

; Will eventually hold the full list of all unmodified keys
keyArray := []

; Various groups of keys, seperated so that they can be added to the template file seperately, making it easier to exclude some groups based on settings.ini
mouseButtons := "LButton RButton MButton XButton1 XButton2 WheelDown WheelUp WheelLeft WheelRight"
letterKeys := "qwertyuiopasdfghjklzxcvbnm"
numberKeys := "1234567890"
; The four backticks are sadly nessecary to escape the backticks for the punctuationKeys string, and then later to escape the backticks in the various layers.
punctuationKeys := "- = [ ] \ ```; \ ' , . / ``"
controlKeys := "CapsLock Space Tab Enter Escape Backspace Delete LWin RWin Control LControl RControl Shift LShift RShift Alt RAlt LAlt ScrollLock AppsKey PrintScreen CtrlBreak Pause Help Sleep"
navigationKeys := "Up Down Left Right Insert Home End PgUp PgDn"
numKeys := "NumLock NumpadDiv NumpadMult NumpadAdd NumpadSub NumpadEnter Numpad0 Numpad1 Numpad2 Numpad3 Numpad4 Numpad5 Numpad6 Numpad7 Numpad8 Numpad9"
mediaKeys := "Browser_Back Browser_Forward Browser_Refresh Browser_Stop Browser_Search Browser_Favorites Browser_Home Volume_Mute Volume_Down Volume_Up Media_Next Media_Prev Media_Stop Media_Play_Pause Launch_Mail Launch_Media Launch_App1 Launch_App2"
functionKeys := "F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 F13 F14 F15 F16 F17 F18 F19 F20 F21 F22 F23 F24"

; Move all key groups into dedicated arrays for ease and consistency of loop formats
mouseButtonsArray := StrSplit(mouseButtons, A_Space)
letterKeysArray := StrSplit(letterKeys, "")
numberKeysArray := StrSplit(numberKeys, "")
punctuationKeysArray := StrSplit(punctuationKeys, A_Space)
controlKeysArray := StrSplit(controlKeys, A_Space)
; This is the code for pressing AltGr on its own
; It's being added to the array seperately since it includes spaces, and this is easier than refactoring
controlKeysArray.Push("LControl & RAlt")
navigationKeysArray := StrSplit(navigationKeys, A_Space)
numKeysArray := StrSplit(numKeys, A_Space)
mediaKeysArray := StrSplit(mediaKeys, A_Space)
functionKeysArray := StrSplit(functionKeys, A_Space)
additionalKeysArray := StrSplit(settings.additionalKeys, ",")
additionalModifiersArray := StrSplit(settings.additionalModifiers, ",")

; ============================== UTILITY FUNCTIONS ==============================

; This function generates a template object which is formatted for either easy function definitions or easy remapping
; The template's default action is to simply send another key, for easy remapping
; Depending on your intellisense, this code might register as a syntax error but that's just because it isn't properly detecting escape characters
objectTemplate(targetKey) {
    keyStr := targetKey ":`:"

    ; If formatting is requested braces are installed around the default action, otherwise the default action is just directly attatched to the hotkey
    if(settings.formatted) {
        keyStr .= "{`n" settings.defaultAction "`n}`n"
    } else {
        keyStr .= settings.defaultAction "`n"
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
        fileStr .= objectTemplate("^+" key)
        fileStr .= objectTemplate("!+" key)
        fileStr .= objectTemplate("^!+" key)
    }
    if(settings.includeShiftRightLeft){
        fileStr .= objectTemplate("<+" key)
        fileStr .= objectTemplate(">+" key)
    }

    ; Control key modifier and variants
    if(settings.includeControl){
        fileStr .= objectTemplate("^" key)
        fileStr .= objectTemplate("^!" key)
        fileStr .= objectTemplate("^+" key)
        fileStr .= objectTemplate("^+!" key)
    }
    if(settings.includeControlRightLeft){
        fileStr .= objectTemplate("<^" key)
        fileStr .= objectTemplate(">^" key)
    }

    ; Alt key modifier and variants
    if(settings.includeAlt){
        fileStr .= objectTemplate("!" key)
        fileStr .= objectTemplate("!^" key)
        fileStr .= objectTemplate("!+" key)
        fileStr .= objectTemplate("!+^" key)
    }
    if(settings.includeAltRightLeft){
        fileStr .= objectTemplate("<!" key)
        fileStr .= objectTemplate(">!" key)
    }

    ; Windows key modifier
    if(settings.includeWindows){
        fileStr .= objectTemplate("#" key)
    }

    ; Wildcard modifier that sends the key regardless of what modifiers are being held down
    if(settings.includeWildcard){
        fileStr .= objectTemplate("*" key)
        fileStr .= objectTemplate("*+" key)
        fileStr .= objectTemplate("*^" key)
        fileStr .= objectTemplate("*!" key)
        fileStr .= objectTemplate("*#" key)
    }

    ; AltGr key modifier
    if(settings.includeAltGr){
        fileStr .= objectTemplate("<^>!" key)
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
    for key in punctuationKeysArray {
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

if(settings.includeFunctionKeys){
    for key in functionKeysArray {
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
    if(key = mouseButtonsArray[1]){
        fileStr .= "; ====================================== MOUSE BUTTONS ======================================`n"
    }
    if(key = letterKeysArray[1]){
        fileStr .= "; ====================================== LETTERS ======================================`n"
    }
    if(key = numberKeysArray[1]){
        fileStr .= "; ====================================== NUMBERS ======================================`n"
    }
    if(key = punctuationKeysArray[1]){
        fileStr .= "; ====================================== PUNCTUATION ======================================`n"
    }
    if(key = navigationKeysArray[1]){
        fileStr .= "; ====================================== CONTROL KEYS ======================================`n"
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
    if(key = functionKeysArray[1]){
        fileStr .= "; ====================================== FUNCTION KEYS ======================================`n"
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
    fileStr .= "; ====================================== ADDITIONAL MODIFIERS ======================================`n"
    for modifier in additionalModifiersArray {
        for key in keyArray {
            fileStr .= objectTemplate(modifier " & " key)
        }
    }
}

; ============================== FILE CREATION ==============================
; Checks if a template already exists and deletes it so each template generated is new
; if (FileExist("./layer-template.ahk")) {
;     FileDelete("./layer-template.ahk")
; }

; Creates the template file
filepath := A_WorkingDir "\config" settings.defaultFolder "\layerX.ahk"
; Replace file extensions with .ahk or add .ahk if it isn't present
filename := RegExReplace(FileSelect("S24", filePath, "Save New Template", ".ahk"), "\.([^\.]+)(?<!\.ahk)$", ".ahk")

; Checks if filename is not empty, since if it is and the user cancels out of the fileSave dialogue a new file is generated in the root folder anyway
if(!(InStr(filename, ".ahk")) && filename != "") {
    filename .= ".ahk"
}

try {
    FileAppend(fileStr, filename)
} catch {
    Return
}

