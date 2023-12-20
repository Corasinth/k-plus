// ============================== MAIN VARIABLES ==============================
// const keysToSkip = "',p"
// const keys = "qwertyuiopasdfghjkl;'zxcvbnm,"
// const alph = "wlypkyzxoucrstbhfneiajvdgqnmh"
// const alSL = "WLYPKyZXOUCRSTBhFNEIAJVDGQnMH"

// const symStr = '~ < [ / — « « \\ ] > {{} ( . , & {+} {+} \' `" ) {}} € $ = {#} ¿ ¿ `` -' 
// const symb = symStr.split(' ')
// const symSLStr = "° @ % {^} – » » ? ; : {Numpad1} {Numpad2} {Numpad3} {Numpad4} | {_} {_} {Numpad7} {Numpad8} {Numpad9} {Numpad0} ¶ § {Numpad5} * ¡ ¡ {!} {Numpad6}"
// const sySL = symSLStr.split(' ')
// const timeDelay = "500"
// const longpressTime = "220"

const keys = "qwertyuiopasdfghjkl;'zxcvbnm,"
const alph = "wlypkyzxoucrstbhfneiajvdgqnmh"
const alSL = "WLYPKyZXOUCRSTBhFNEIAJVDGQnMH"

const symStr = '~ {!} ? / — « « \\ ; : {{} ( . , & {+} {+} \' `" ) {}} € $ = {#} ¿ ¿ `` -' 
const symb = symStr.split(' ')
const symSLStr = "° < [ {^} – » » @ ] > {Numpad1} {Numpad2} {Numpad3} {Numpad4} | % % {Numpad7} {Numpad8} {Numpad9} {Numpad0} ¶ § {Numpad5} * ¡ ¡ _ {Numpad6}"
const sySL = symSLStr.split(' ')
const timeDelay = "500"
const longpressTime = "200"
const fs = require('fs')
const dirArr = ["./node-templater/1-mainLayers-wide", "./node-templater/2-codeLayers-wide"]

// ============================== CORE FUNCTIONS ==============================
async function main(code) {
    let filePathTemplate = dirArr[0]
    let vimExt = `global
capslockReleased := 0
toggleLayer("Ext")`
let simpleExt = `toggleLayer("Ext")`

    let numeral = ""
    if (code) {
        code = "C"
        vimExt = `SendInput("{Blind}{Esc}")
        toggleLayer("Vim")` 
        simpleExt = vimExt
        numeral = "I"
        filePathTemplate = dirArr[1]
    } 

    const fileArr = [
        `/2-${code}Alpha.ahk`,
        `/3-${code}Alpha-SL.ahk`,
        `/4-${code}Alpha-SL-D.ahk`,
        `/5-${code}Sym.ahk`,
        `/6-${code}Sym-SL.ahk`,
        `/7-${code}Sym-D.ahk`,
        `/8-${code}Sym-SL-D.ahk`
    ]
    const strArr = []
    let fileStr = ""

    for (let i = 0; i < keys.length ; i++) {
        fileStr += `*${keys[i]}:: SendInput("{Blind}${alph[i]}")
        `
    }
    const alphaEnd = `CapsLock::{
${vimExt}
}
RAlt::toggleLayer("${code}Sym-D")
.::toggleLayer("${code}Alpha-Sl-D")
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey){
        toggleLayer("${code}Sym")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
    }
}
    `
    strArr.push(generateStr(`${code}Alpha`, fileStr, alphaEnd))
    fileStr = ""
    // ==================== ALPHA SL =====================
    for (let i = 0; i < keys.length ; i++) {
        fileStr += `*${keys[i]}::SendInput("{Blind}${alSL[i]}")
        `
    }
    const alphaSLEnd = `CapsLock::{
        ${simpleExt}
    }
RAlt::toggleLayer("${code}Sym-D")
.::toggleLayer("${code}Alpha")
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
*Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
    }
}
    `
    strArr.push(generateStr(`${code}Alpha-Sl`, fileStr, alphaSLEnd))
    fileStr = ""
    // ==================== ALPHA SL D ===================
    for (let i = 0; i < keys.length ; i++) {
        fileStr += `*${keys[i]}::{
        SendInput("{Blind}${alSL[i]}")
        toggleLayer(previousLayer)
    }
        `
    }
    const alphaSlDEnd = `CapsLock::{
        ${simpleExt}
    }
RAlt::toggleLayer("${code}Sym-D")
.::toggleLayer("${code}Alpha-Sl")
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
*Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
        toggleLayer(previousLayer)
    }
}
    `
    strArr.push(generateStr(`${code}Alpha-Sl-D`, fileStr, alphaSlDEnd))
    fileStr = ""
    // ================== SYM ====================
    for (let i = 0; i < keys.length ; i++) {
        fileStr += `*${keys[i]}::SendInput("{Blind}${symb[i]}")
        `
    }
    const symEnd = `CapsLock::{
        ${simpleExt}
    }
RAlt up::toggleLayer("${code}Alpha")
.::toggleLayer("${code}Sym-Sl")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Alpha")
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Alpha")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{Blind}{RWin downR}")
        KeyWait("/")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}
    `
    strArr.push(generateStr(`${code}Sym`, fileStr, symEnd))
    fileStr = ""
    // ==================== SYM SL ====================
    for (let i = 0; i < keys.length ; i++) {
        fileStr += `*${keys[i]}::SendInput("{Blind}${sySL[i]}")
        `
    }

    const symSLEnd = `CapsLock::{
        ${simpleExt}
    }
.::toggleLayer("${code}Sym")
RAlt up::toggleLayer("${code}Alpha")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Alpha")
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Alpha")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{Blind}{RWin downR}")
        KeyWait("/")
    }
    SendInput("{Blind}{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Blind}^{Backspace}")
    }
}
    `

    strArr.push(generateStr(`${code}Sym-Sl`, fileStr, symSLEnd))
    fileStr = ""
    // ==================== SYM D ====================
    for (let i = 0; i < keys.length ; i++) {
        fileStr += `*${keys[i]}::SendInput("{Blind}${symb[i]}")
        *${keys[i]} up::toggleLayer(previousLayer)
        `
    }
    const symDEnd = `CapsLock::{
        ${simpleExt}
    }
RAlt::toggleLayer("${code}Sym")
.::toggleLayer("${code}Sym-Sl-D")
*LAlt::{
    SendInput("{Blind}{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Blind}{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Alpha")
    }
}
*Control::{
    SendInput("{Blind}{Control downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{Blind}{Control up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Alpha")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
        toggleLayer(previousLayer)
    }
}
    `
    strArr.push(generateStr(`${code}Sym-D`, fileStr, symDEnd))
    fileStr = ""
    // ==================== SYM SL D ====================
    for (let i = 0; i < keys.length ; i++) {
        // fileStr += `*${keys[i]}::SendInput("{Blind}${sySL[i]}")
        // *${keys[i]} up::toggleLayer(previousLayer)
        // `
    fileStr += `*${keys[i]}::SendInput("{Blind}${sySL[i]}")
    *${keys[i]} up::toggleLayer(previousLayer)
        `
    }

    const symSLDEnd = `CapsLock::{
        ${simpleExt}
    }
; RAlt up::toggleLayer("${code}Alpha")
.::toggleLayer("${code}Sym-Sl")
*LAlt::{
    SendInput("{Alt downR}")
    if !(released := KeyWait("LAlt", "T0.22")){
        KeyWait("LAlt")
    }
    SendInput("{Alt up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("{Alt downR}{Alt up}")
        toggleLayer("Directory-I${numeral}")
    }
}
*PrintScreen::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("PrintScreen", "T0.22")){
        KeyWait("PrintScreen")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
*Control::{
    SendInput("{RControl downR}")
    if !(released := KeyWait("Control", "T0.22")){
        KeyWait("Control")
    }
    SendInput("{RControl up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        toggleLayer("${code}Sym")
    }
}
/::{
    if !(released := KeyWait("/", "T0.22")){
        SendInput("{RWin downR}")
        KeyWait("/")
    }
    SendInput("{RWin up}")
    if(released && ThisHotkey = A_ThisHotkey) {
        SendInput("^{Backspace}")
        toggleLayer(previousLayer)
    }
}
    `

    strArr.push(generateStr(`${code}Sym-Sl-D`, fileStr, symSLDEnd))
    fileStr = ""
    // ==================== LAYER CREATION ====================
    for (let i = 0; i < fileArr.length; i++) {
        createLayer(filePathTemplate + fileArr[i], strArr[i])
    }
}

// ============================== UTIL FUNCTIONS ==============================
function generateStr(layerCode, mainHotkeyStr, closingSection) {
    returnStr = `#HotIf currentLayer = "${layerCode}"
; ====================================== LETTERS ======================================
${mainHotkeyStr}
; ====================================== ADDITIIONAL KEYS ======================================
${closingSection}
    `
    return returnStr
}

async function createLayer(filePath, fileStr) {
    fs.writeFileSync(filePath, fileStr)
}

function createDir() {
    for (let dir of dirArr) {
        fs.access(dir, (error) => {
            // To check if the given directory 
            // already exists or not
            if (error) {
                // If current directory does not exist
                // then create it
                fs.mkdir(dir, (error) => {
                    if (error) {
                        console.log(error);
                    } else {
                        console.log("New Directory created successfully !!");
                    }
                });
            } else {
                Error("Given Directory already exists !!");
            }
        });
    }
}
// ============================== CALLING MAIN FUNCTIONS ==============================
// createDir()
main("")
main(true)