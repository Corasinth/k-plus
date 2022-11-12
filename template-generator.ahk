#Requires AutoHotkey v2.0-beta
#SingleInstance Force

; ============================== VARIABLES ==============================
; Final string that contains template text
fileStr := "[`n"

; Will eventually hold the full list of all unmodified keys
keyArray := []

; Letter keys, numbers, and all dedicated symbol keys
letters := "qwertyuiopasdfghjklzxcvbnm"
numbers := "1234567890"
punctuation := "`-=[]\;\',./"

; ============================== UTILITY FUNCTIONS ==============================


; ============================== BUILDING TEMPLATE ==============================

; Closes out the array
fileStr .= "]"

; ============================== FILE CREATION ==============================
; Checks if a template already exists and deletes it so each template generated is new
FileDelete("./config/layer-template.ahk")

; Creates the template file
FileAppend(fileStr, "./config/layer-template.ahk")