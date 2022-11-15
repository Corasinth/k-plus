#Requires AutoHotkey v2.0-beta
#SingleInstance Force
; Include ini reader util functions
#Include ./config/util/ini-reader.ahk
Persistent()
; ============================== MAIN VARIABLES ==============================
; This is the tracker that determines the current layer
currentLayer := 1
; This is a number used to record CURRENT_LAYER for temporary layer swaps
placeholderLayer := 0

; ============================== TOGGLE LAYERS ==============================
toggleLayer(targetLayer) {
    global
    placeholderLayer := currentLayer
    currentLayer := targetLayer
}

; ============================== INCLUDE HOTKEYS ==============================
; Include master file of layers. This file contains nothing but #Include commands for the rest of the config files
#Include ./config/layers/layer1.ahk
#Include ./config/layers/layer2.ahk

; ============================== SHUTDOWN & SUSPEND HOTKEYS ==============================
; Create universal quit and suspend keys
quitKey := readConfigSettings("universalQuitKey")
suspendKey := readConfigSettings("universalSuspendKey")

if(quitKey) {
    hotkey(quitKey, exitScript,"I1 On")
}
if(suspendKey){
    hotkey(suspendKey, suspendScript,"I1 On")
}

; Exit and Suspend functions so they can be placed in the hotkey() function
; Putting these functions directly into the hotkey() function causes issues as they other hotkey options get interpreted as the inner function's parameters
exitScript(x) {
    ExitApp()
}
suspendScript(x){
    Suspend(-1)
}