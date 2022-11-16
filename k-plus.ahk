#Requires AutoHotkey v2.0-beta
#SingleInstance Force
; Include ini reader util functions
#Include ./config/util/ini-reader.ahk
; Allow layers to trigger other script hotkeys/strings
#InputLevel 1
; ============================== MAIN VARIABLES ==============================
; This is the tracker that determines the current layer
currentLayer := 1
; This is a number used to record CURRENT_LAYER for temporary layer swaps
previousLayer := 0

; ============================== TOGGLE LAYERS ==============================
toggleLayer(targetLayer) {
    global
    previousLayer := currentLayer
    currentLayer := targetLayer
}

; ============================== INCLUDE HOTKEYS ==============================
; Include master file of layers. This file contains nothing but #Include commands for the rest of the config files
#Include ./config/layer-list.ahk

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