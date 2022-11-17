#Requires AutoHotkey v2.0-beta
#SingleInstance Force

readTemplateSettings(section){
    Return IniRead("./settings.ini", "Template Generator Settings", section)
}

readConfigSettings(section){
    Return IniRead("./settings.ini", "Config Settings", section)
}