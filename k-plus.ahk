#Requires AutoHotkey v2.0-beta
#SingleInstance Force
; Include ini reader util functions
#Include ./util/ini-reader.ahk
; Allow layers to trigger other script hotkeys/strings
#InputLevel 1
; ============================== MAIN VARIABLES ==============================
; This is the tracker that determines the current layer
currentLayer := 1
defaultLayer := readConfigSettings("defaultLayer")
if(defaultLayer) {
    currentLayer := defaultLayer
}

; This is a number used to record CURRENT_LAYER for temporary layer swaps
previousLayer := 0
; Which variable to ignore when storing the previous layer
ignoreLayer := readConfigSettings("ignoreLayerAsPreviousLayer")

; Sets up number for the millescond delay
longPressDelay := Number(readTemplateSettings("longPressDelay"))
; Lets you use the long press delay for uses of KeyWait as well, though only for times less than a full second 
timeParameter := "T0." readTemplateSettings("longPressDelay")

; Sets absolute coordinates for tooltip
CoordMode("ToolTip", "Screen")
; Assign coordinates
xCoordinate := readConfigSettings("tooltipXCoordinate")
yCoordinate := readConfigSettings("tooltipYCoordinate")
; ============================== TOGGLE LAYERS ==============================
toggleLayer(targetLayer) {
    global
    ; Doesn't record the specified layer as the previous layer so that hotkeys that toggle back to the previous layer skip over the directory (or layer of choice)
    if (currentLayer != ignoreLayer) {
        previousLayer := currentLayer
    }
    currentLayer := targetLayer
    if(readConfigSettings("tooltip")){
        Tooltip(currentLayer, xCoordinate, yCoordinate)
    }
}

; ============================== UTILITY FUNCTIONS ==============================

longPress(ThisHotkey, defaultString, longPressString, numOfBackspaces){
    startTime := A_TickCount
    SendInput(defaultString)
    backspaceInput := "{Backspace " numOfBackspaces "}"
    ; Instead of a sleep or simlar delay, a loop is used so that, in the process of rapid typing, one cannot release the hotkey and then press it again, falsely triggering the script into backspacing, missing that the key had been released
    while(GetKeyState(ThisHotkey, "P")) {
        endTime := A_TickCount - startTime
        if(ThisHotkey = A_ThisHotkey && endTime > longPressDelay) {
            SendInput(backspaceInput)
            SendInput(longPressString)
            KeyWait(ThisHotkey)
        }
    }
}

onReleaseLongPress(ThisHotkey, defaultString, longPressString, numOfBackspaces){
    startTime := A_TickCount
    SendInput(defaultString)
    backspaceInput := "{Backspace " numOfBackspaces "}"
    while(GetKeyState(ThisHotkey, "P")) {
        endTime := A_TickCount - startTime
        if(ThisHotkey = A_ThisHotkey && endTime > longPressDelay) {
            KeyWait(ThisHotkey)
            SendInput(backspaceInput)
            SendInput(longPressString)
        }
    }
}

; Runs ToolTip at start
if(readConfigSettings("tooltip")){
    Tooltip(currentLayer, xCoordinate, ycoordinate)
}
; ============================== INCLUDE HOTKEYS ==============================
; Include master file of layers. This file contains nothing but #Include commands for the rest of the config files
#Include ./config/layer-list.ahk
#HotIf
; ============================== SHUTDOWN & SUSPEND HOTKEYS ==============================
; Create universal quit and suspend keys
quitKey := readConfigSettings("universalQuitKey")
suspendKey := readConfigSettings("universalSuspendKey")

if(quitKey) {
    hotkey(quitKey, exitFunction,"I1 On")
}
if(suspendKey){
    hotkey(suspendKey, suspendFunction,"I1 On")
}

; Exit and Suspend functions so they can be placed in the hotkey() function
; Putting these functions directly into the hotkey() function causes issues as they other hotkey options get interpreted as the inner function's parameters
exitFunction(x) {
    ExitApp()
}
suspendFunction(x){
    Suspend(-1)
}