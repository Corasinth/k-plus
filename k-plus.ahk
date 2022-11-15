#Requires AutoHotkey v2.0-beta
#SingleInstance Force
#InputLevel 1
; ============================== MAIN VARIABLES ==============================
; This is the tracker that determines the current layer
currentLayer := 1
; This is a number used to record CURRENT_LAYER for temporary layer swaps
placeholderLayer := 0

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
    ; Timer for debugging
    ; startTime := A_Now

    ; Disables hotkeys from previous layer to ensure consistent operation
    ; Without this disable loop, hotkeys overlap and the script acts like the wrong layer is in effect
    ; The disable loop must come first, or it seems to, for some reason, disable the current layer
    ; Probably because it bases the hotkey it disables on the key, rather than the function
    if(placeholderLayer != 0) {
        for hotkeyObject in layerMatrix[placeholderLayer]{
            hotkey(hotkeyObject.key, hotkeyObject.function, "Off")
        }
    }

    for hotkeyObject in layerMatrix[currentLayer]{
        hotkey(hotkeyObject.key, hotkeyObject.function, "I1 On")
    }
    ; endTime := A_Now-startTime
    ; MsgBox("Time to generate hot keys: " endTime " Current Layer: " currentLayer " placeholderLayer: " placeholderLayer)
}

generateHotkeys()

; ============================== SHUTDOWN HOTKEY ==============================
^!+#q::ExitApp