#Requires AutoHotkey v2.0-beta
#SingleInstance Force

possibleHotkey:="1"


Hotkey(possibleHotkey, script)

script(ThisHotkey) {
    SendInput "x"
}

Esc::ExitApp