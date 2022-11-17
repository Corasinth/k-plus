#Requires AutoHotkey v2.0-beta
#SingleInstance Force
; Include the ini util functions
#Include ./util/ini-reader.ahk
; ============================== VARIABLES ==============================

; Settings object
settings := {
    ; Whether or not to include various groups of keys
    includeMouseButtons: readTemplateSettings("includeMouseButtons"),
    includeLetterKeys: readTemplateSettings("includeLetterKeys"),
    includeNumberKeys: readTemplateSettings("includeNumberKeys"),
    includePunctuationKeys: readTemplateSettings("includePunctuationKeys"),
    includeControlKeys: readTemplateSettings("includeControlKeys"),
    includeModifierKeys: readTemplateSettings("includeModifierKeys"),
    includeNavigationKeys: readTemplateSettings("includeNavigationKeys"),
    includeNumKeys: readTemplateSettings("includeNumKeys"),
    includeMediaKeys: readTemplateSettings("includeMediaKeys"),
    includeFunctionKeys: readTemplateSettings("includeFunctionKeys"),

    ; Including modifiers and their variations
    includeShift: readTemplateSettings("includeShift"),
    includeShiftRightLeft: readTemplateSettings("includeShiftRightLeft"),
    includeControl: readTemplateSettings("includeControl"),
    includeControlRightLeft: readTemplateSettings("includeControlRightLeft"),
    includeAlt: readTemplateSettings("includeAlt"),
    includeAltRightLeft: readTemplateSettings("includeAltRightLeft"),
    includeWindows: readTemplateSettings("includeWindows"),
    includeWildcard: readTemplateSettings("includeWildcard"),
    includeAltGr: readTemplateSettings("includeAltGr"),

    ; Modifier Combinations
    includeControlShift: readTemplateSettings("includeControlShift"),
    includeAltShift: readTemplateSettings("includeAltShift"),
    includeWindowsShift: readTemplateSettings("includeWindowsShift"),
    includeWindowsAlt: readTemplateSettings("includeWindowsAlt"),
    includeControlAlt: readTemplateSettings("includeControlAlt"),
    includeControlWindows: readTemplateSettings("includeControlWindows"),
    includeControlAltShift: readTemplateSettings("includeControlAltShift"),
    includeControlAltWindows: readTemplateSettings("includeControlAltWindows"),

    ; Whether or not multipress is set up for each key
    multipress: readTemplateSettings("multipress"),
    inclusiveMultipress: readTemplateSettings("inclusiveMultipress"),

    ; Sets the default function
    defaultAction: readTemplateSettings("defaultAction"),
    ; Sets the default function, only used when formatting is on
    defaultFunction: readTemplateSettings("defaultFunction"),

    ; If this is a dead layer, adds a toggleLayer(previousyLayer) to each hotkey
    deadlayer: readTemplateSettings("deadlayer"),

    ; Any additional keys to set, plus any optional modifiers (essentially chords, or AHK's combo keys). These are space seperated strings if included, unlike the previous Booleans
    additionalKeys: readTemplateSettings("additionalKeys"),
    additionalModifiers: readTemplateSettings("additionalModifiers"),

    ; Whether to include advancedMode,
    formatted: readTemplateSettings("formatted"),

    ; Sets default folder in config folder to hold the generated template file
    defaultFolder: readTemplateSettings("defaultFolder"),
}

if(settings.deadlayer){
    settings.formatted := 1
    if(settings.deadlayer) {
        settings.defaultFunction .= "`ntoggleLayer(previousLayer)`n"
    }
}

; Gui to set the templates layer
; Gather information on number of files in layer folder for a 'smart' default number
configFiles := ""
layerFolder := readTemplateSettings("defaultFolder")
folderPath := "./config/" layerFolder "/*.ahk"
Loop Files folderPath {
    configFiles .= A_LoopFileName " "
}

; The sorted string is turned into an array and the length is used as the number of files + 1, since the addition of the delimiting space after each file creates an additional extra entry
configFilesArray := StrSplit(configFiles, " ")

responseObj := InputBox("Please enter the number for this layer. `n`nEntering anything other than a number will result in layer toggling becoming more difficult to manage, and possibly inaccessible.", "Layer Number", "W350 H150" ,configFilesArray.Length)

; If the user cancels out or leaves, the script will simply stop
if(responseObj.Result = "OK") {
    templateLayer := responseObj.Value
} else {
    Return
}

; Final string that contains template text
fileStr := "#HotIf currentLayer = " templateLayer "`n"

; Will eventually hold the full list of all unmodified keys
keyArray := []

; Various groups of keys, seperated so that they can be added to the template file seperately, making it easier to exclude some groups based on settings.ini
mouseButtons := "LButton RButton MButton XButton1 XButton2 WheelDown WheelUp WheelLeft WheelRight"
letterKeys := "qwertyuiopasdfghjklzxcvbnm"
numberKeys := "1234567890"
; Backticks are used to escape the semicolon and backtick keys
punctuationKeys := "- = [ ] \ `; \ ' , . / ``"
controlKeys := "Space Tab Enter Escape Backspace Delete ScrollLock AppsKey PrintScreen CtrlBreak Pause Help Sleep"
modifierKeys := "CapsLock Shift Control LControl RControl Shift LShift RShift Alt LAlt RAlt LWin RWin"
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
modifierKeysArray := StrSplit(modifierKeys, A_Space)
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
    if(settings.multipress){
        keyStr .= "{`nstatic keyPresses := 0`nif(keyPresses > 0){`nkeyPresses += 1`nreturn`n}`nkeyPresses := 1`nSetTimer pressTimer, -400`npressTimer(){`nif(keyPresses = 1){`n`n"
        keyStr .= settings.defaultFunction
        keyStr .= "`n`n}else if(keyPresses = 2){`n`n"
        keyStr .= settings.defaultFunction
        keyStr .= "`n`n}else if(keyPresses > 2){`n`n"
        keyStr .= settings.defaultFunction
        keyStr .= "`n`n}`nkeyPresses := 0`n}`n}`n"
    } else if (settings.inclusiveMultipress) {
       keyStr .= "{`nif(A_PriorHotkey != `""
       keyStr .= targetKey "`""
       keystr .= " || A_TimeSincePriorHotkey > 400){`nReturn`n} else {`n`n"
       keyStr .= settings.defaultFunction
       KeyStr .= "`n`n}`n}`n"
    } else if(settings.formatted) {
        keyStr .= "{`n" settings.defaultFunction "`n}`n"
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

    ; Windows key modifier
    if(settings.includeWindows){
        fileStr .= objectTemplate("#" key)
    }

    ; Modifier Combinations
    if(settings.includeControlShift) {
        fileStr .= objectTemplate("^+" key)
    }

    if(settings.includeAltShift) {
        fileStr .= objectTemplate("!+" key)
    }

    if(settings.includeWindowsShift) {
        fileStr .= objectTemplate("#+" key)
    }

    if(settings.includeWindowsAlt) {
        fileStr .= objectTemplate("#!" key)
    }

    if(settings.includeControlAlt) {
        fileStr .= objectTemplate("^!" key)
    }

    if(settings.includeControlWindows) {
        fileStr .= objectTemplate("^#" key)
    }

    if(settings.includeControlAltShift) {
        fileStr .= objectTemplate("^!+" key)
    }

    if(settings.includeControlAltWindows) {
        fileStr .= objectTemplate("^!#" key)
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

if(settings.includeModifierKeys){
    for key in modifierKeysArray {
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
        fileStr .= "; ====================================== NAVIGATION KEYS ======================================`n"
    }
    if(key = controlKeysArray[1]){
        fileStr .= "; ====================================== CONTROL KEYS ======================================`n"
    }
    if(key = modifierKeysArray[1]){
        fileStr .= "; ====================================== MODIFIER KEYS ======================================`n"
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

    ; Adds an escape to prevent ahk from reading the semicolon key as a commented out line
    if(key = ";"){
        key := "``;"
    }

    fileStr .= objectTemplate(key)

    ; And then undoes this for the remainder of any modifiers since it is no longer needed
    if(key = "``;") {
        key := ";"
    }

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
filepath := A_WorkingDir "\config" settings.defaultFolder "\layer" templateLayer ".ahk"
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

