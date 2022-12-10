# **Keyboard Plus**

## **Description**

K-plus is tool for enabling layers on non-mechanical keyboards that don't usually have access to alternate layouts. K-plus is built on [AutoHotKey Script v2-beta](https://lexikos.github.io/v2/docs/AutoHotkey.htm) and is therefore a Windows only tool. 

It's designed to be configurable and flexible; supporting as many layers as you'd like to include. Once configured, a compiled version (along with the `settings.ini` file) can easily be carried on a flash drive and run on any Windows device, letting you use your layers between devices.

Each layer is setup using AHK's hotkeys. This can be a little complex if you aren't used to AHK, but is pretty flexible. With AutoHotKey script and k-plus you can toggle layers, use chords (on their own, or as global modifiers), create multipress options, dead keys, and set up variable length presses (for use in implementing Autoshift and similar features).

AHK's own docs are the first place to turn for help managing specific hotkeys. However, in this README you can find explanations for using the template layer generator and managing the more useful features.

If you find yourself needing advanced features, however, or planning on a set of layers that makes heavy use of them, you might benefit more from some of the software found in the [Additional Resources](#additional-resources) section. Ultimately, this set of scripts was designed around my personal use, and while you may find it useful it won't be as well implemented as more actively maintained/developed software.

If you just want some simple remapped layers (for programming for example) skip to [Remapping](#remapping)

**Note** While the the information below is generally accurate and k-plus works for straightforward remapping, unfortunately strange issues seem to crop up while using the more elaborate functions in combination. Occasionally the hotkeys will fail, and rapid typing can even permanently disable the script until it is reloaded. The investigation into why this occurs is ongoing, but I until resolved I can only reccomend k-plus for simple remapping. 

I have found that, instead of using variables and orderly utility functions, replicating desired code and values everywhere they are used cuts down on some of these issues, despite making the code much much harder to manage and read. You can check out the `personal` branch for how I am managing the issues. 

## **Table of Contents**


* [Installation](#installation)
* [Remapping](#remapping)
* [Configuration](#configuration)
* [Usage](#usage)
* [Features](#features)
    * [Direct Remapping](#direct-remapping)
    * [Dead Layers](#dead-layers)
    * [Tips on Chords](#tips-on-chords)
    * [Multipress](#multipress)
    * [Inclusive Multipress](#inclusive-multipress)
    * [Mapping Modifier Keys](#mapping-modifier-keys)
    * [Long Press](#long-press)
    * [Multi Long Press](#multi-long-press)
* [Compatibility](#compatibility)
* [Contributing](#contributing)
* [Credits](#credits)
* [Additional Resources](#additional-resources)
* [License](#license)


## **Installation**

Installation requires two downloads. K-plus requires having AHK v2 installed to run. While it can later be compiled, it must first be configured which is signifigantly easier with the associated utility scripts included in this repo. 

AHK v2 is currently in beta, but plans to be backward compatible with its current version. You can [download it here](https://www.autohotkey.com/v2/). If this link succumbs to rot, AHK v2 should still be fairly easy to find online. 

With AHK installed, the next step is to clone or download this repo into an appropriate folder. From there, you can move on to configuration without worry. 

After creating a configuration you like, you can compile the main script `k-plus.ahk` using AHK v2's built-in compiler. This will make the script much easier to move around, though you'll have to recompile when changing the configuration, and you'll want to bring the settings file along with the compiled version.

## **Remapping**

Although there's plenty of felxibility in configuring layers, if all you want is a few layers with remapped keys follow this simplified guide. 

When editing your layers be mindful of semicolons. 

Lines that start with a semicolon are considered commented out, and therefore are not active in the code. Most of these are helpful descriptions, but some are not. The default layer 1, `1-directory.ahk`, contains several lines of commented out code. Delete the semicolon in front of these lines to enable them.

1. Open `template-settings.ini` from the config folder and choose what groups of keys to exclude by setting them to `0`. [Template Configuration](#template-configuration) has more information.   
2. Run `template-generator.ahk` from the config guide, and name the resulting file. The first layer has already been assigned to a directory of other layers.  
3. Repeat step 2 for each layer until you have the layers you want. Then edit the new files so that the default action (usually `x`) has been replaced with your desired key, like so:
```
<hotkey>::<remapped key>
```
where
```
q::h
```
remaps the `q` key so it sends the letter `h` instead.  
3. Instead of remapping a hotkey, you can include the  function `toggleLayer(x)` where `x` is your destination layer. Use this to allow yourself to move from one layer to another. I reccomend at least one key on each layer point to the master directory in `directory-1.ahk`. You should also check out/edit the configuration of the directory layer.   
4. Run `detect-config.ahk`.   
5. Run `k-plus`, and check that your layers work. Congrats! You're done!

## **Configuration**

K-plus is very flexible, but this comes at the cost of complexity in configuration. In order to fully set up your custom layers, it is highly reccomended to first create template layer files. These files, generated by `template-generator.ahk`, provide blueprints for setting up the hotkeys. It is of course possible to write these files entirely yourself, and in places it may even be helpful to do so. However, a base template will make configuration much easier.

Once these config files have been generated you'll need to customize them for your needs. This involves filling out the details of each custom function, or in the case of simple remapping, ensuring that your desired keys are sending the desired outputs in any given layer. 

Finally, config files must be hooked up to the main `k-plus.ahk` script. This part can be done by simply running the `detect-config.ahk` script in the root folder; it will take care of all the details. This script needs to be run each time there are new layers to be found in the `./config/layers` folder. There's no need to run it every time you generate a new layer file, but any files created since the last run will not be included as layers in `k-plus.ahk`.

You can set the folder that k-plus will look to find layers (within the config folder) by adjusting the `layerFolder` setting in `settings.ini` under `[Config Settings]`. This is primarily useful if you want to occasionally swap between different sets of layers, and have created a few folders in `config` that hold your alternate layer setups.

For a full breakdown of how to use `template-generator.ahk` and `settings.ini`, refer to [config.md](./config.md).

## **Usage**

Using k-plus for complex layer arrangments requires a more than just configuring your template files and filling in your hotkeys.

The main issue, especially if you have several layers, is handling the navigation between them and keeping track of what layer you're on. Eventually, tracking the layers becomes more about muscle memory, but at the start you can use the `tooltip` setting to keep track.

Actually navigating a layer is a little trickier. There are three main ways.

1. You can set a hotkey to the `toggleLayer(<layer number>)` function, where `<layer number>` is replaced with the destination layer number. That will let you move directly from one layer to another predetermined layer. 
2. You can set a hotkey to the `toggleLayer(previousLayer)` function. That will let you move from your current layer to your previous layer.  
3. And you can set a hotkey to the `toggleLayer(1)` function. That will let you move from your current layer to the directory layer, where you can then select any of your layers. 

The directory layer is key to managing multiple complex layers. In theory, it should contain only hotkeys that toggle you to another layer, and contain a hotkey for every layer you have. In practice you may have to uncomment some lines (delete the preceding semicolon).

While using a directory requires more keypresses to navigate layers (at least two, compared to the first two options), I strongly reccomend keeping at least one key on every layer that sends you back to the directory layer. Firstly, it allows for infrequently used but occasionally desirable swaps between layers not directly connected. Secondly, if you have a lot of layers it is easier to use a single map than try to create custom hotkeys on every layer pointing to every layer. 

I also reccomend that this key be in the same position for every layer, since that will make it much easier to develop muscle memory. The `universalDirectoryKey` setting in `settings.ini` is helpful for setting that default directory key in every generated template.

It's also inadvisable to wholly remap your control keys and mouse buttons when starting out. Remapping those while you are still experimenting with layers makes it easy to get in a situation where some error is thrown (such as in a custom function) and you can't actually navigate to the error window because all your mouse buttons, `Tab`, and `Enter` keys simply send the letter `x` (the default action).

However, if you do find yourself in a similar situation, I have included universal quit and suspend keys, as detailed in the configuration section. Beware conflicts however, as setting a hotkey in a layer to the universal quit and suspend combos could result in unpredictable behavior. 

Additionally, when generating your templates I highly recommend copy and pasting the specific sections you want. For example, if you want to add multipress options to just a few keys, generate a template layer with multipress for that key group, copy the keys you want, and paste them into your actual layer file, replacing the defaults for the keys there.

You can stitch together templates like this for greater customizability.

Hotkeys not included in layer will 'fall through', defaulting to their registry mappings. Usually this will be the normal QWERTY keyboard, unless you've made specific changes. You can change this default behavior by remapping keys to the keyword `Return`, which will effectively disable a key entirely in a given layer.

Finally, by default hotkeys are sent with an input level of 1. This means that they are capable of triggerings hotkeys and hotstrings in other scripts with a lower input level (if no input level is specified in a script, the level is 0). So when pressing the hotkey `a` to trigger the hotkey `h`, any other scripts that have a hotkey of `h` will be triggered. 

If you have scripts with higher input levels, you can edit k-plus directly to change the default input level. Otherwise, k-plus is meant to act for most people as a replacement keyboard layout that can directly interface with your other AHK scripts as if you weren't using a layer script and the keys showing up on the screen were the physical keys you were pressing.

## **Features**

K-plus has a lot of features that can be accessed via `settings.ini`. However, each and every feature here is simply something you can do with AutoHotKey itself, and so their [official docs](https://lexikos.github.io/v2/docs/AutoHotkey.htm) are a much better source of support and ideas for what you can make your layers do.

Below I have included some of the core features I believe will be central to anyone using multiple layers, but these should not be taken as an exahustive list, merely suggestions about what you can do with k-plus without too much effort.

It should be noted that while the included utility functions that can be used to implent k-plus are convenient and generally work, using the extensively results in wild and unpredicatable errors (as seen in the note at the top).

For more advanced users, the utility functions should be used as a blueprint for reliability. 

### **Previous Layer**

K-plus keeps a record of your last layer. This is to enable dead layers toggling back to your previous layer and enable keys set to `toggleLayer(previousLayer)` to send you back to your last used layer.

In the `settings.ini` file, the `layersToIgnoreAsPreviousLayers` option is used to exlude some layers from memory. By default layer 1, the directory layer, is exluded. So for example you can swap from layer 4 to the directory and then to layer 5, then use a toggle-to-previous-layer hotkey to move back to layer 4. 

As detailed in the configuration section, you can ignore any number of layers (though at some point there may be a performance issue as the script goes through each of the layers to exclude).

### **Direct Remapping**

The easiest way to use k-plus is direct remapping. Direct remapping looks like this: `a::h`, and is the default way to use k-plus. 

In the previous example, `a` is remapped to `h`. Remapping in this way also remaps modifier combinations, which is extremely useful. So `Ctrl+a` will function identically to `Ctrl+h` and capitalization will work as expected.

You can read the full details [here](https://lexikos.github.io/v2/docs/misc/Remap.htm).

### **Dead Layers**

Dead layers are how k-plus implements dead keys. For those unfamiliar, dead keys do nothing when pressed, but the subsequent key has an altered function. For example, the English international keyboard uses the apostrophe key as a dead key to produce diacritical marks over specific letters.

K-plus also allows you to create dead keys by linking them to a dead layer. The dead key will toggle to a dead layer where each key does some custom function (like produce a special letter variant), and then toggles back to the previous layer. 

This can be handy for symbols or punctuation layers, where you only want to send a single punctuation mark before automatically returning to your usual letters. 

The template generator can automatically make a layer 'dead' via the appropriate setting. You can create as many dead layers as you wish, allowing you to create tap-dances of key combinations that dance across multiple layers.

### **Tips on Chords**

AHK happily supports custom key combinations. A custom cumbo takes the following form: `key1 & key2::<output event>`. AHK does not support more than two keys in combination at a time. 

A custom combination disables the usual function of `key1` in order to prevent unwanted inputs when using the combination. However, this can be overridden by specificying a hotkey for `key1`. 

While you can add custom combinations to a layer manually or by including the combos in the `additionalKeys` setting, you can also include keys in the `additional modifier` settings. This will generate a custom combination for each key you include + every other key on the keyboard included in your template. 

Custom combinations do not support prefix modifiers, so you cannot chord together `Ctrl+Alt+z+y` for example.

A custom modifier is useful for generating a new shift-like layer within a layer.

### **Multipress**

K-plus includes a special setting for multipress detection. Turning this option on in the settings attatches a piece of code to every hotkey which distinguishes between single, double, and triple presses. You can fill in custom functions to send keys or perform other tasks under each option.

Multipress works by waiting 400ms for a new keypress and keeping track of the number of keypresses in a row. That means if you want a single press function to trigger, there is a 400ms delay while the script checks to make sure you aren't actually trying to input a double press.

That makes multipress an inconvenient option for rapid keyboard inputs or even quick toggling between layers. However, for uses like running a specific program or complex functions you use infrequently and don't require immediate subsequent key presses, it is an excellent option.

### **Inclusive Multipress**

Inclusive multipress works similarly to multipress, adding a new batch of code with slots for custom functions. However, there are a few key differences. 

Firstly, it only distinguishes between single and double presses, triple press support is not present at this time. 

More importantly, when pressing an inclusive multipress key the single press option always fires. If the single press option has the key send the character `x`, while the double press option sends the character `y`, then the actual behaviour of a double press will be to first send `x`, then on the second press send `y`. 

This can be inconvient, but inclusive multipress has been included in k-plus for a few reasons.

It's much more responsive than regular multipress, requiring no delay before action is taken. 

For sending characters, one can set the double press action to backspace the previously typed character before sending the appropriate character. 

Modifier keys can be set up with inclusive multipress since a single press of, for example, Shift, usually does nothing anyway. 

And it is useful for enabling key repeat in conjunction with long presses (see [Multi Long Press](#multi-long-press))

### **Mapping Modifier Keys**

If you'd like, you can also remap modifier keys so that they retain their normal function when holding them down, but produce a new result or character when tapped. To do this, use the following format: 
```
modifierKey::SendInput("customCharacter")/customFunction
modifierKey & <Any other Key>::<Any custom function or character> 
```
By creating a custom combination with the modifier key, the modifiers native function is restored. See the docs for [more information](https://lexikos.github.io/v2/docs/HotkeyFeatures.htm#easy-to-reach).

It is important that when remapping modifier keys you do not use the direct remapping format of `modifierKey::outputCharacter`. This format can cause issues, occasionally even across layers for reasons I do not understand. 

Notably, directly remapping a key in this way prevents you from defining custom combinations of modifier keys like `Ctrl+Shift`. You can define a hotkey as `Ctrl+key` or `Shift+key`, but not `Ctrl+Shift+Key` or any other combinations. This interferes with the default universal quit and suspend hotkeys.

### Long Press

The long press options uses a premade function to generate a variable effect based on how long a key has been pressed. The built in function is used primarily for typing characters using `SendInput()`.

The function for long presses, and long presses on release are identical in use. They take four parameters, as follows:
```
longPress(ThisHotkey, defaultString, longPressString, numOfBackspaces)
longPressOnRelease(ThisHotkey, defaultString, longPressString, numOfBackspaces)
```
The default string is the string sent when pressing the key. If the key is held down for long enough the rest of the long press function kicks in. The function backspaces what was previously typed, then sends the new long press string. 

The number of backspaces allow you to define multicharacter strings, or accomodate sending modified characers (like `Ctrl + x`). For autoshift you can just set this to 1.

Using the `longPressOnRelease()` variant is a little different. No backspaces are sent, instead the character is sent on release and depends on how long you held the key down for.

The long press functions are designed to only work with strings of typed characters. In fact, their primary purpose is to allow a more readable implementation of Autoshift (which is when a key outputs its shifted state on a long press) that can be easily customized for non-standard symbol/punctuation keys.

Implementing Autoshift works pretty well. However, if your layer is a non-QWERTY layout remapping gets more complicated. That's because while simple remapping, like `a::b` is complete in that it also automatically includes modifiers (so that `Ctrl+a` would send `Ctrl+b`), setting up a long press like `a::longPress(ThisHotkey, "b", "B")` would **not** include modifiers.

You would have to add those remappings seperately, like so:
```
^a::^b
+a::+b
!a::!b
```

For more custom code, the long press function can be found in `k-plus.ahk`, copied, and modified to suit. While it is not the best implementation of long presses in AHK, if you can see how to improve it you can also probably improve it yourself. Copying the code and pasting it into a layer file is sufficient for custom long press functions.

One likely use of a custom long press function is to enable homerow mods. These would let you use your home row keys as normal, but on a long press the typed character would be deleted and instead a modifier like shift would be active until released. This is a more limited and easier to use version of home row mods (since key presses are still sent on a depress so you don't have to retrain, but also sending a character and a backspace each time you use the mod, even if you aren't in a text field).

An implementation of homerow shift modifiers for the `d` and `k` keys works like this:
```
$<+d::Return
$d::{
    SendInput("d")
    if(!KeyWait("d","T0.130")){
        SendInput("{BackSpace}")
        SendInput("{LShift down}")
        KeyWait("d")
        SendInput("{LShift up}")
    }
}

$>+k::Return
$k::{
    SendInput("k")
    if(!KeyWait("k","T0.130")){
        SendInput("{BackSpace}")
        SendInput("{RShift down}")
        KeyWait("k")
        SendInput("{RShift up}")
    }
}
```
It's important to do the right and left versions of the modifier seperately, so that you can prevent, for example, `Shift+k` being sent repeatedly. You prevent that by simply returning the right/left `Shift+key`. By specifying the right/left versions you can continue to use the other version on a key, so that `RShift` still applies to `d` and vice versa.

All that said, Autoshift is still a better use of this implementation of long presses, and if you really want home row mods I recommend more advanced layer software (as in the [Additional Resources](#additional-resources) section).

### Multi Long Press

For my personal implementation of autoshift, I have also included a special function that shifts a key on long press, but enables key repeat on a double press and hold. 

The function can be used as follows:
```
multiLongPress(ThisHotkey, defaultSend, longPressSend, numOfBackspaces, timeDelay)
```

These parameters are the same as the usual long press functions, with the exception of `timeDelay`. That is the number of milliseconds you are allowed to take between taps of the key for it to still count as a double press.

## **Compatibility**

K-plus is built entirely with AHK, which means that it inherits the issues AHK has. These are extensive, and several are buried in the AHK documentation. 

Notably, AHK does not play well with video games, so sadly the reliability of layers in games cannot be guaranteed. While layers would be nice, I reccomend simply suspending or quitting the app during gameplay and relying on your base keyboard layout. Since games usually demand positional keyboard memory rather than specific letters (or typing), the only issue this causes is a lack of the options layers usually provide, which can't be helped.

Additionally, `Alt+Tab` has unusual behaviour in AHK scripts. If you wish to rebind the `Alt+Tab` function and `Alt+Shift+Tab`, I reccomend following the [official guidance found here](https://lexikos.github.io/v2/docs/Hotkeys.htm#alttab). The most important issue is that `Alt+Tab` remappings are **not** affected by `#HotIf`, and so can't be assigned to specific layers with k-plus. 

Lastly, numpad keys behave differently depending on whether or not `NumLock` is engaged, and with `Ctrl` pressed, pressing `Pause` produces `CtrlBreak` and `NumLock` produces `Pause`. AHK reccomends using `^CtrlBreak` in hotkeys instead of `^Pause`, where the `^` prefix stands in for Ctrl.

If you encounter unexpected compatability issues, I reccomend checking out the source code and the [AHK v2 docs](https://lexikos.github.io/v2/docs/AutoHotkey.htm). You can also open an issue.

## **Contributing and Future Development**

Feel free to fork/create a pull request to fix bugs, refactor code, or add new featues. While I aimed to create something flexible and easy to configure, I'm not a master of AHK and there's certainly room for improvement.

Currently, k-plus responds much better when each piece of code and the values it uses (like the current key) are hardcoded. Why this should be the case, I cannot say, and where the line is is unclear. However, until the issue is resolved this means that increasing the flexibility, power, and configurability of the `template-generator.ahk` is critical to making k-plus convenient and easy-ish to use. 

In particular, making it easier to add custom code blocks is important, as well as improving how the `template-generator` script handles writing these code blocks. 

K-plus would also benefit heavily from a configuration option that takes in a list of keys, and slots them into the code attached to each hot key, so that one does not have to manually edit a layer file to have `X` hotkey output `Y` character.

There are also a few additional areas for improvement.

Currently, k-plus does not support hotstrings. While you can of course generate your own hotstring scripts or custom add hotstrings to a layer, there is no built in generator for hotstrings, hotstring options, or hotstring end characters. Adding this functionality in a clean and convenient way is a probable area of future development.

Another area for improvement is implementing k-plus in a way that allows for layered `Alt+Tab` and other hotkeys unaffected by `#HotIf` would be great. A possible avenue here is looping through an array of objects when switching between layers for these special remappings.

Finally, developing new layers can be very useful, but k-plus does not include a convenient way to reference the keybindings of a particular layer. Developing a script to create a reference map for a layer would be beneficial, as printing out a keyboard layout and penciling in your options can be inconvenient.

Other fixes, suggestions, improvements, and additional features are welcome.

## **Credits**

The AHK software and docs have been invaluable to making K-Plus work.

In addition, [DreymaR's Extend layer](https://github.com/DreymaR/BigBagKbdTrixPKL) layout has been used as one of the suggested default layers (with some modifications), and I highly reccomend checking out the Extend layers in general if you aren't already familiar.

## **Additional Resources**

K-plus is a useful tool, but it was designed to serve a single individual's needs. [DreymaR's Extend layer](https://github.com/DreymaR/BigBagKbdTrixPKL) is a modifier-based program with a great deal more versatility than k-plus. Although it lacks layer toggling it does come with a GUI, support for a variety of keyboard layouts, an active community with active developers, and many more features (like powerstrings) than I could create. I reccomend checking it out for more details. 

I also have to reccomend [kmonad](https://github.com/kmonad/kmonad), an incredibly flexible layer program designed to work (to one degree or another) on Linux, Windows, and Mac. While the tool is less actively developed than DreymaR's Extend, it includes a wide variety of features including layer toggling, leader keys, chords, powerstrings, modifier-based layers, and variable key functions depending on how the key is pressed (double-tapped, held vs tapped, etc.). While support seems to be primarily focused on Linux systems, kmonad offers features for all three major operating systems (Mac, Windows, and Linux). However, it does have less flexibility in designing the kind of custom functions you can attach to keys with AHK, and lacks conveniences like a `previousLayer` variable and a notification that tracks the current layer. Despite that, it offers a lot of flexibility in constructing custom layouts, and is definately worth checking out.

## **[License](./LICENSE)**
This program uses the open-source MIT License.

--- 