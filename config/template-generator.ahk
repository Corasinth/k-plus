#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; ============================== VARIABLES ==============================
; Final string that contains template text
fileStr := "[`n"

; Will eventually hold the full list of all unmodified keys
keyArray := []

; Various groups of keys, seperated so that they can be added to the template file seperately, making it easier to exclude some groups based on settings.ini
mouseButtons := "LButton RButton MButton XButton1 XButton2 WheelDown WheelUp WheelLeft WheelRight"
letterKeys := "qwertyuiopasdfghjklzxcvbnm"
numberKeys := "1234567890"
punctuationKeys := "`-=[]\;\',./"
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


; ============================== BUILDING TEMPLATE ==============================

; Closes out the array
fileStr .= "]"

; ============================== FILE CREATION ==============================
; Checks if a template already exists and deletes it so each template generated is new
; FileDelete("layer-template.ahk")

; Creates the template file
FileAppend(fileStr, "layer-template.ahk")