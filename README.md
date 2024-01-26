# **Keyboard Plus**

## **Description**

K-plus is tool for enabling layers on non-mechanical keyboards that don't usually have access to alternate layouts. K-plus is built on [AutoHotKey Script v2-beta](https://lexikos.github.io/v2/docs/AutoHotkey.htm) and is therefore a Windows only tool. 

It's designed to be configurable and flexible; supporting as many layers as you'd like to include. Once configured, a compiled version can easily be carried on a flash drive and run on any Windows device, letting you use your layers between devices.

Each layer is setup using AHK's hotkeys. This can be a little complex if you aren't used to AHK, but is pretty flexible. With AutoHotKey script and k-plus you can toggle layers, use chords (on their own, or as global modifiers), create multipress options, dead keys, and set up variable length presses (for use in implementing Autoshift and similar features).

AHK's own docs are the first place to turn for help managing specific hotkeys. However, in this README you can find explanations for using the k-plus infrastructure and managing the more useful features.

If you find yourself needing advanced features, however, or planning on a set of layers that makes heavy use of them, you might benefit more from some of the software found in the [Additional Resources](#additional-resources) section. Ultimately, this set of scripts was designed around my personal use, and while you may find it useful it won't be as well implemented as more actively maintained/developed software.

If you just want some simple remapped layers (for programming for example) skip to [Remapping](#remapping)

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

After creating a configuration you like, you can compile the main script `k-plus.ahk` using AHK v2's built-in compiler. This will make the script much easier to move around, though you'll have to recompile when changing the configuration.

## **Remapping**

Although there's plenty of felxibility in configuring layers, if all you want is a few layers with remapped keys follow this simplified guide. 

But firstly, when editing your layers be mindful of semicolons. 

Lines that start with a semicolon are considered commented out, and therefore are not active in the code. Most of these are helpful descriptions, but some are not. The default layer in `config/example-layers`, `1-directory.ahk`, contains several lines of commented out code. Delete the semicolon in front of these lines to enable them.

Create a new file for each layer you want to make in the style of the example layers (or just edit the example layers).

In each layer file, ensure you have a line that describes when the current layer will be active, as so:

```
#HotIf currentLayer = "nameOfLayer"
```
Then ensure each hotkey you want to remap is present and appropriately paired with the desired output, like so:

```
<hotkey>::<remapped key to output>
```
where
```
q::h
```
remaps the `q` key so it sends the letter `h` instead.  

Instead of remapping a hotkey, you can include the  function `toggleLayer(x)` where `x` is your destination layer. Use this to allow yourself to move from one layer to another. I reccomend at least one key on each layer point to the master directory in `directory-1.ahk`. You should also check out/edit the configuration of the directory layer.   

Then run the file `detect-config.ahk`.   

Finally, run `k-plus`, and check that your layers work. Congrats! You're done!

## **Configuration**

Configuring k-plus is fairly simple. You just need to create your layer files, and hook them up to k-plus. You create a dedicated folder for your layers in the config folder, then run the `detect-config.ahk` script.  

You can set the folder that k-plus will look to find layers (within the config folder) by adjusting the `layerFolder` setting in `settings.ini` under `[Config Settings]`. This is primarily useful if you want to occasionally swap between different sets of layers, and have created a few folders in `config` that hold your alternate layer setups.

You can see that I have a variety of layer sets ready for use, though you can safely ignore or delete these.

For more advanced users, you can also use the `settings.ini` file and the `template-generator.ahk` script to create template layers. A more detailed explanation of this can be found in [config.md](./config.md).

There are also a variety of variables in the main `k-plus.ahk` file that control a few basic features. These include: the exact coordinate location (pixel) of the ToolTip, the default layer the script should start up on, and any layers that should be ignored when using the `previousLayer` tracker (see [Features](#features)).

## **Usage**

Using k-plus for complex layer arrangments requires a more than just "configuring your template files and filling in your hotkeys.

The main issue, especially if you have several layers, is handling the navigation between them and keeping track of what layer you're on. Eventually, tracking the layers becomes more about muscle memory, but at the start you can use the `tooltip` setting to keep track.

Actually navigating to a layer is a little trickier. There are three main ways.

1. You can set a hotkey to the `toggleLayer("layerName")` function, where `<layerName>` is replaced with the destination layer name. That will let you move directly from one layer to another predetermined layer. 
2. You can set a hotkey to the `toggleLayer(previousLayer)` function. That will let you move from your current layer to your previous layer.  
3. And you can set a hotkey to the `toggleLayer("directory")` function. That will let you move from your current layer to the directory layer, where you can then select any of your layers. 

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

K-plus has a lot of features. However, each and every feature here is simply something you can do with AutoHotKey itself, and so their [official docs](https://lexikos.github.io/v2/docs/AutoHotkey.htm) are a much better source of support and ideas for what you can make your layers do.

Below I have included some of the core features I believe will be central to anyone using multiple layers, but these should not be taken as an exahustive list, merely suggestions about what you can do with k-plus without too much effort.

There are also a few additional variables and functions included in the main `k-plus.ahk` file used to tweak things for my personal liking. These are all commented, but may require some basic coding knowledge to understand.

### **Previous Layer**

K-plus keeps a record of your last layer. This is to enable dead layers toggling back to your previous layer and enable keys set to `toggleLayer(previousLayer)` to send you back to your last used layer.

In the `settings.ini` file, the `layersToIgnoreAsPreviousLayers` option is used to exlude some layers from memory. By default layer 1, the directory layer, is exluded. So for example you can swap from layer 4 to the directory and then to layer 5, then use a toggle-to-previous-layer hotkey to move back to layer 4. 

As detailed in the configuration section, you can ignore any number of layers (though at some point there may be a performance issue as the script goes through each of the layers to exclude).

### **ToolTip**

In order to help keep track of layers k-plus uses tooltips in a customizable location to display the current layer. The tooltip's location can be customized to a specific pixel location on your screen using the appropriate variables in `k-plus.ahk`. 

This can occasionally be inconvenient; if your tooltip hangs out in the bottom right corner of the screen, it may cover up buttons, icons, or other controls. 

You can set an alternate set of coordinates in `k-plus.ahk` that the tooltip will 'flicker' too when the mouse hovers over the area surrounding the tooltip. The flickering of the tooltip can also be disabled by changing the appropriate variable from a 1 to a 0. 

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

For example, while developing new layers can be very useful, k-plus does not include a convenient way to reference the keybindings of a particular layer. Developing a script to create a reference map for a layer would be beneficial, as printing out a keyboard layout and penciling in your options can be inconvenient.

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