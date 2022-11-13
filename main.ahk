#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; This is the tracker that determines the current layer
currentLayer := 0 
; This is a number used to record CURRENT_LAYER for temporary layer swaps
placeholderLayer := 0

; An array of arrays imported from config files containing hotkey information for each layer
; Each index corresponds to each own layer—layer 1 = layerMatrix[1] etc.
layerMatrix := []

; Contains a list of config files for sorting
configFiles := ""
Loop Files "./config/layers/*.ahk" {
    configFiles .= A_LoopFilePath
}
sortedConfigFiles := Sort(configFiles, "CLogical /")

MsgBox(sortedConfigFiles)

; hotkey(testMatrix[currentLayer][i].key, testMatrix[currentLayer][i].function)

Esc::ExitApp