; ============================== LAYOUT VARIABLES ==============================
; Strings are turned into arrays
; Each element is separated by a single space, additional spaces are trimmed off and included to make lining up keys easier

; Mathematical & Alchemical Symbols
specialKeys := StrSplit((trmSpc("^F13 ^F14 ^F15 ^F16 ^F17 ^F18 ^F19 ^F20 ^F21 ^F22 ^F23 ^F24 !F13 !F14 !F15 !F16 !F17 !F18 !F19 !F20 !F21 !F22 !F23 !F24 +^F13 +^F14 +^F15 +^F16 +^F17 +^F18 +^F19+^F20+^F21+^F22+^F23+^F24 +!F13 +!F14 +!F15 +!F16 +!F17 +!F18 +!F19 +!F20 +!F21 +!F22 +!F23 +!F24")))
specialLayout := StrSplit((trmSpc("")))
special := Map()
; generateMap(special, specialKeys, specialLayout)

; Greek Letters
greekKeys := StrSplit((trmSpc("^#F13 ^#F14 ^#F15 ^#F16 ^#F17 ^#F18 ^#F19 ^#F20 ^#F21 ^#F22 ^#F23 ^#F24 !#F13 !#F14 !#F15 !#F16 !#F17 !#F18 !#F19 !#F20 !#F21 !#F22 !#F23 !#F24 +^#F13 +^#F14 +^#F15 +^#F16 +^#F17 +^#F18 +^#F19 +^#F20 +^#F21 +^#F22 +^#F23 +^#F24 +!#F13 +!#F14 +!#F15 +!#F16 +!#F17 +!#F18 +!#F19 +!#F20 +!#F21 +!#F22 +!#F23 +!#F24")))
greekLayout := StrSplit((trmSpc("")))
greek := Map()
; generateMap(greek, greekKeys, greekLayout)

; Extra
extraKeys := StrSplit((trmSpc("^!F13 ^!F14 ^!F15 ^!F16 ^!F17 ^!F18 ^!F19 ^!F20 ^!F21 ^!F22 ^!F23 ^!F24 ^!#F13 ^!#F14 ^!#F15 ^!#F16 ^!#F17 ^!#F18 ^!#F19 ^!#F20 ^!#F21 ^!#F22 ^!#F23 ^!#F24 +^!F13 +^!F14 +^!F15 +^!F16 +^!F17 +^!F18 +^!F19 +^!F20 +^!F21 +^!F22 +^!F23 +^!F24 +^!#F13 +^!#F14 +^!#F15 +^!#F16 +^!#F17 +^!#F18 +^!#F19 +^!#F20 +^!#F21 +^!#F22 +^!#F23 +^!#F24")))
extraLayout := StrSplit((trmSpc("")))
extra := Map() 
; generateMap(extra, extraKeys, extraLayout) 

; ============================== FUNCTIONS ==============================
generateMap(emptyMap, keyArray, layoutArray){
    ; MsgBox(Type(keyArray))
    if(keyArray.Length != layoutArray.Length){
        MsgBox("The hotkeys and desired layouts(" layoutArray[1] ") do not match in length. The script will quit.")
        ExitApp
    }
    For key in keyArray{
        emptyMap.Set(key, layoutArray[A_index])
    }
}

trmSpc(str){
    str := RegExReplace(str, " +", " ")
    return str
}