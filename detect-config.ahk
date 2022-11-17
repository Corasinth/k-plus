#Requires AutoHotkey v2.0-beta
#SingleInstance Force
; Adds ini util function
#Include ./util/ini-reader.ahk
; ============================== MAIN VARIABLES ==============================

; Will hold a list of config files for sorting
configFiles := ""
layerFolder := readConfigSettings("layerFolder")
folderPath := "./config/" layerFolder "/*.ahk"
; ============================== ASSEMBLING CONFIG FILES INTO MATRIX ==============================
Loop Files folderPath {
    ; It is nessecary to include a space after each file for parsing
    configFiles .= A_LoopFileName " "
}
sortedConfigFiles := Sort(configFiles, "CLogical /")

; The sorted string is turned into an array and the final item dropped, since otherwise the addition of the delimiting space after each file creates an additional extra entry
configFilesArray := StrSplit(sortedConfigFiles, " ")
configFilesArray.Pop()

; Empty variable so that it can be refilled with the text for the master layer list to be included 
configFiles := ""

for configFile in configFilesArray {
    configFiles .= "#Include ./" layerFolder "/" configFile "`n"
}

; Overwrites file if it already exists
if (FileExist("./config/layer-list.ahk")) {
    FileDelete("./config/layer-list.ahk")
}

; Create the master layer list
FileAppend(configFiles, "./config/layer-list.ahk")