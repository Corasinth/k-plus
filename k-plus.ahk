#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; ============================== MAIN VARIABLES ==============================
; This is the tracker that determines the current layer
currentLayer := 1
; This is a number used to record CURRENT_LAYER for temporary layer swaps
placeholderLayer := 1

; An array of arrays imported from config files containing hotkey information for each layer
; Each index corresponds to each own layer—layer 1 = layerMatrix[1] etc.
layerMatrix := []

; Include master file of layers. This file contains nothing but #Include commands for the rest of the config files
#Include ./config/layer-list.ahk

; ============================== TOGGLE LAYERS ==============================
layerToggle(targetLayer) {
    global
    placeholderLayer := currentLayer
    currentLayer := targetLayer
    generateHotkeys()
}

; ============================== GENERATE HOTKEYS ==============================
generateHotkeys() {
    global
    for hotkeyObject in layerMatrix[currentLayer]{
        hotkey(hotkeyObject.key, hotkeyObject.function)
    }
}
generateHotkeys()