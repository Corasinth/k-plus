#Requires AutoHotkey v2.0-rc.2
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

; String of layers to ignore when storing previous layer
layersToIgnore := readConfigSettings("layersToIgnoreAsPreviousLayer")

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
    ; Set the current layer as soon as possible before handling the previous layer tracker
    tempLayer := currentLayer
    currentLayer := targetLayer
    ; Doesn't record the specified layers as the previous layer so that hotkeys that toggle back to the previous layer skip over the directory (or layer of choice)
    ; Layers are wrapped in parantheses so that something like 1 is not detected in 12 
    if (!InStr(layersToIgnore, "(" tempLayer ")")) {
        previousLayer := tempLayer
    }
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
        if(ThisHotkey = A_PriorKey && endTime > longPressDelay) {
            SendInput(backspaceInput)
            SendInput(longPressString)
            KeyWait(ThisHotkey)
        }
    }
}

onReleaseLongPress(ThisHotkey, defaultString, longPressString){
    startTime := A_TickCount
    while(GetKeyState(ThisHotkey, "P")) {
        endTime := A_TickCount - startTime
        if(ThisHotkey = A_PriorKey && endTime > longPressDelay) {
            KeyWait(ThisHotkey)
            SendInput(longPressString)
            return
        }
    }
    SendInput(defaultString)
}

; Custom function to allow a key to have different effects whether its tapped, held, or double tapped and held
; There are limitations to this functionality (like sending backspace keystrokes), but it works for some specific Autoshift purposes
multiLongPress(ThisHotkey, defaultSend, longPressSend, numOfBackspaces, timeDelay){
  if(A_PriorKey != ThisHotkey || A_TimeSincePriorHotkey > timeDelay){
        longPress(ThisHotkey, defaultSend, longPressSend, numOfBackspaces)
    } else {
        SendInput(defaultSend)
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
    hotkey(quitKey, exitFunction,"I1 On S")
}
if(suspendKey){
    hotkey(suspendKey, suspendFunction,"I1 On S")
}

; Exit and Suspend functions so they can be placed in the hotkey() function
; Putting these functions directly into the hotkey() function causes issues as they other hotkey options get interpreted as the inner function's parameters
exitFunction(x) {
    ExitApp()
}
suspendFunction(x){
    Suspend(-1)
}