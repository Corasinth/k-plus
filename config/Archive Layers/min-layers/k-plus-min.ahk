#Requires AutoHotkey v2.0
#SingleInstance Force
; Sets absolute coordinates for tooltip
CoordMode("ToolTip", "Screen")
SetCapsLockState("AlwaysOff")
; ============================== MAIN VARIABLES ==============================
; This is the tracker that determines the current layer
; Also the layer that k-plus starts up with
currentLayer := "Base"
; This is a number used to record currentLayer for temporary layer swaps
; At the start, it is setup to be the starting layer, so you don't accidentally send yourself to a nonexistent layer
previousLayer := currentLayer

; The script will ignore the layers in this value when remembering the previous layer
; To include a layer, add the name of the layer inside a set of parantheses. For example, ignoring layers 1 and 2 would look like "(1) (2)"

; This is primarily useful when set to the directory layer (usually layer 1), since when toggling to your previous layer it is more desirable to toggle to the previous non-directory layer
; When you already have a direct key to go the directory, its not more convenient to count the directory as the previous layer, but it is more convenient to use the directory to go to a layer, and then return to original starting layer
layersToIgnore := "(Directory) (Sym-D) (Func-D)"

; Tooltip and coordinate settings; whether or not to have a tooltip active and where it should be located
tooltipOn := 1
xCoordinate := 2560
yCoordinate := 1600

; Universal quit and suspend key definitions go here
; Edit key defitions and input level as desired
#InputLevel 0
#SuspendExempt True
; The suspend shortcut also disables the tooltip if it was active, though the tooltip remains if suspended via the GUI
^!+s::Suspend(-1)
^!+q::ExitApp
#SuspendExempt False
; ============================== TOOLTIP HANDLING ==============================
SuspendC := Suspend.GetMethod("Call")
Suspend.DefineProp("Call", {
Call:(this, mode:=-1) => (SuspendC(this, mode), OnSuspend(A_IsSuspended))
})
OnMessage(0x111, OnSuspendMsg)
OnSuspendMsg(wp, *) {
    if ((wp = 65305) || (wp = 65404)){
        OnSuspend(!A_IsSuspended)
    }
}

; wp numbers grabbed via this bit of code
; OnMessage(0x111, WM_COMMAND)

; WM_COMMAND(wparam, lparam, msg, hwnd) {
;     OutputDebug "wp: " wparam " | lp: " lparam "`n"
; }
OnSuspend(mode) {
    global
    if (tooltipOn && mode = 1){
        ToolTip()
    } else if (tooltipOn && mode = 0){
        ToolTip(currentLayer, xCoordinate, yCoordinate)
    }
}

; Runs ToolTip at start
if(tooltipOn){
    Tooltip(currentLayer, xCoordinate, ycoordinate)
}

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
    if(tooltipOn){
        Tooltip(currentLayer, xCoordinate, yCoordinate)
    }
}

; ============================== UTILITY FUNCTIONS ==============================
; Function to toggle whether or not the script displays a tooltip, for use in layers
tooltipToggle(){
    tooltipOn := tooltipOn ? 0 : 1
    if(tooltipOn){
        ToolTip(currentLayer, xCoordinate, yCoordinate)
    } else {
        ToolTip()
    }
}

; ============================== INCLUDE HOTKEYS ==============================
; Ensures the input level is above the default for other scripts
#InputLevel 1
; Include master file of layers. This file contains nothing but #Include commands for the rest of the config files
#Include ./config/layer-list.ahk
#HotIf