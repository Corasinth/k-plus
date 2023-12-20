// ============================== MAIN VARIABLES ==============================
const keys = "asdfjkl;"
// et
const base = "base"
const baseSL = "base-SL"

// 87642135
// ybvkxjqz 
const alph1 = "zqjkbyvx"

// 68742135
// dcumfpgw
const alph2 = "pwgmcduf"

// 76842135
// aoinsrhl
const alph3 = "hrlnoais"

// Ring
const symStr1 = '! ? . , \' `" ; :'
// SL VERSION
const symStr2 = '<>{Left} # `` _ @ / = ~'

// Pinky 
const symStr3 = '{{}}{Left} (){Left} []{Left} & - / + $'
// SL VERSION
const symStr4 = '° «»{Left} | ^ — – * €'

const symb1 = symStr1.split(' ')
const symb2 = symStr2.split(' ')
const symb3 = symStr3.split(' ')
const symb4 = symStr4.split(' ')

const keyArr = [base, baseSL, alph1, alph1.toUpperCase(), alph2, alph2.toUpperCase(), alph3, alph3.toUpperCase(), symb1, symb2, symb3, symb4]

const { lookup } = require('dns')
const fs = require('fs')
const dirArr = ["./node-templater/min-Layers"]

// ============================== CORE FUNCTIONS ==============================
async function main() {
    let filePathTemplate = dirArr[0]
    let ext = `toggleLayer("Ext")`

    let fileStr = ""

    const fileArr = [
        `/1-base.ahk`,
        `/2-base-SL.ahk`,
        `/3-alph1.ahk`,
        `/4-alph1-SL.ahk`,
        `/5-alph2.ahk`,
        `/6-alph2-Sl.ahk`,
        `/7-alph3.ahk`,
        `/8-alph3-SL.ahk`,
        `/9-sym1.ahk`,
        `/10-sym-SL.ahk`,
        `/11-sym2.ahk`,
        `/12-sym2-SL.ahk`,
        `/13-num.ahk`,
    ]
    const layerCode = [
        `base`,
        `base-SL`,
        `${alph1}`,
        `${alph1.toUpperCase()}`,
        `${alph2}`,
        `${alph2.toUpperCase()}`,
        `${alph3}`,
        `${alph3.toUpperCase()}`,
        `sym1`,
        `sym1-SL`,
        `sym2`,
        `sym2-SL`,
        `num`,
    ]

    const strArr = []

    for (let i = 0; i < keyArr.length ; i++) {
        for (let j = 0; j < keys.length; j++) {
            let theKey = keys[j]
            if (theKey === ";") {
                theKey = "`;"
            }

            if(i === 0 || i === 1){
                fileStr += `${theKey}::{
    toggleLayer("${layerCode[j+2]}")
}
`
            } else {
            fileStr += `${theKey}::{
    SendInput("{Blind}${keyArr[i][j]}")
    toggleLayer("base")
}
`
            }
        }
            strArr.push(generateStr(layerCode[i], fileStr))
            fileStr = ""
        }
        // ==================== LAYER CREATION ====================
        for (let i = 0; i < fileArr.length; i++) {
            createLayer(filePathTemplate + fileArr[i], strArr[i])
        }
    }

    // ============================== UTIL FUNCTIONS ==============================
    function generateStr(layerCode, mainHotkeyStr) {
        returnStr = `#HotIf currentLayer = "${layerCode}"
; ====================================== LETTERS ======================================
${mainHotkeyStr}
; ====================================== ADDITIIONAL KEYS ======================================
CapsLock::toggleLayer("Ext")
'::^BackSpace
q::toggleLayer("base")
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
    main()