# **Keyboard Plus**

## **Description**

K-plus is tool for enabling layers on non-mechanical keyboards that don't usually have access to alternate layouts. K-plus is built on [AutoHotKey Script v2-beta](https://lexikos.github.io/v2/docs/AutoHotkey.htm) and is therefore primarily a Windows tool. 

It's designed to be configurable and flexible; supporting as many layers as you'd like to include. Once configured, a compiled version can easily be carried on a flash drive and run on any Windows device, letting you move your layers between devices.

While configuration is a little complex, it sacrifices simplicity for versatility. K-plus supports layer toggling, AHK's version of chords (usable on their own, or as global modifiers), and dead keys (though the implementation is a little hacky).

## **Table of Contents**


* [Installation](#installation)
* [Configuration](#configuration)
    * [Template Configuration](#template-configuration)    
    * [Layer Configuration](#layer-configuration)
        * [Ordering Layers](#ordering-layers)    
        * [Layer Functions](#layer-functions)
* [Usage](#usage)
    * [Dead Layers](#dead-layers)
    * [Tips on Chords](#tips-on-chords)
* [Features](#features)
* [Compatibility](#compatibility)
* [Contributing](#contributing)
* [Credits](#credits)
* [Additional Resources](#additional-resources)
* [License](#license)


## **Installation**

Installation requires two downloads. Firstly, it is nessecary to have AHK v2 installed to run the script. While it can later be compiled, it must first be configured which is signifigantly easier with the associated utility scripts included in this repo. 

AHK v2 is currently in beta, but plans to be backward compatible with its current version. You can [download it here](https://www.autohotkey.com/v2/). If this link succumbs to rot, AHK v2 should still be fairly easy to find online. 

With AHK installed, the next step is to clone or download this repo into an appropriate folder. From there, you can move on to configuration without worry. 

After creating a configuration you like, I reccomend compiling the main script `k-plus.ahk` using AHK v2's built-in compiler. This will make the script much easier to move around, though you'll have to recompile if you wish to change the configuration.

## **Configuration**

K-plus is very flexible, but this comes at the cost of complexity in configuration. In order to fully set up your custom layers, it is highly reccomended to first create template layer files. These files, generated by `template-generator.ahk` in the `config` folder, provide blueprints for setting up the hotkeys. It is of course possible to write these files entirely yourself, and in places it may even be helpful to do so. However, a base template will make configuration much easier.

Once these config files have been generated you'll need to customize them for your needs. This involves filling out the details of each custom function, or in the case of simple remapping, ensuring that your desired keys are sending the desired outputs in any given layer. 

Finally, config files must be hooked up to the main `k-plus.ahk` script. This part can be done by simply running the `detect-config.ahk` script in the root folder; it will take care of all the details. This script needs to be run each time there are new layers to be found in the `./config/layers` folder. There's no need to run it every time you generate a new layer file, but any files created since the last run will not be included as layers in `k-plus.ahk`.

### **Template Configuration**

Configuring the template is primarily done through the `./config/settings.ini` file. By changing the values on the right hand side of the equals signs, you can choose what kinds of keys you would like to have appear in your template file as well as default actions. 

Below is a full list of the various settings, their possible values, and their meaning. Boolean values are either 0 (excluded), or 1 (included).

`includeMouseButtons`: Boolean. Handles inclusion of mouse specific buttons.  
`includeLetterKeys`: Boolean. Handles inclusion of all letter keys.  
`includeNumberKeys`: Boolean. Handles inclusion of all number keys.  
`includePunctuationKeys`: Boolean. Handles inclusion of all keys dedicated entirely to punctuation or symbols.  
`includeControlKeys`: Boolean. Handles inclusion of keys like `CapsLock`, `Control`, `Delete`, etc.  
`includeNavigationKeys`: Boolean. Handles inclusion of keys like `Home`, `PgUp`, the arrow keys, etc.  
`includeNumKeys`: Boolean. Handles inclusion of all numpad keys. Based on the status of Numlock, these behave differently. See AHK docs for more detail.  
`includeMediaKeys`: Boolean. Handles inclusion of media specific keys that handle pressing play, pause, skipping to the next track, and other such specialized commands.  
`includeShift`: Boolean. Handles inclusion of all `Shift+key` variants. Useful for remapping new `Shift` layers, like capitalization.  
`includeShiftRightLeft`: Boolean. Handles inclusion of `Shift` variants specific to either the right `Shift` button or the left. Useful for variable `Shift` layers.  
`includeControl`: Boolean. Handles inclusion of all `Control+key` variants, as per shift  
`includeControlRightLeft`: Boolean. Handles inclusion of right and left variants as per shift.  
`includeAlt`: Boolean. Same as above.  
`includeAltRightLeft`: Boolean. Same as previous right-left variants.  
`includeWindows`: Boolean. Same as previous, however no right-left variant exists for the `Windows` key as distinguishing between them is not supported.  
`formatted`: Boolean. Determines whether or not the hotkey objects are on a single line, or formatted for readability. Turning formatting on makes it easier to add custom functions, especially multiline functions, to each hotkey object. However, it makes it more difficult to quickly scan several objects are once, or easily change a single variable in each (as per remapping)  
`defaultFunction`: String (include the value in "double quotes, as demonstrated here"). This details the default actions placed inside the hotkey object's function. Do not add typical function wrappings like `()=>{}`. Instead simply paste the code you would put inside the function, using `` `n `` to create line breaks. As an example: 
```
defaultFunction = "SendInput("2")`nMsgBox(You just pressed" x "key, and produced 2")
```
`additionalKeys`: String (include the value in "double quotes, as demonstrated here"). Seperate the keys you wish to include with a comme, as follows:
```
additionalkeys = "x,y,z,CapsLock,a & s"
```
This includes the keys listed as their own entries in the template file. Useful for when you don't wish to include an entire group (such as all letters or all media keys), but don't want to create the objects manually. Note that the last entry is a chord, requiring you to press `a` and `s` together to trigger the hotkey.
`additionalModifiers`: String (include the value in "double quotes, as demonstrated here"). Seperate any desired modifier keys with a comma, as above. Modifier keys effectively add another sublayer that behaves like `Shift` to the layer. It creates a chord in the following format: `modifierKey & everyOtherKey`, for every key otherwise included in the template file. Thus, an additional modifier layer (not compatible with the other normal modifier layers).

While I have endeveroued to make it as easy as possible to make a configuration file that just requires adding function definitions to complete, there will undoubtedly be edge cases. For these, I reccomend copying the format of the other lines and simply replacing the `key` property in each object (enclosed by curly braces) with the desired hotkey.

Here is a example hot key object to demonstrate how you might copy paste the general format for your specific uses. 

```
{
      key:"<Your Key Here>",
      function:(x)=>(
          <Your function code here>
      )
    },
```
If you want to add a custom chord, but don't want to generate combos for every key displayed, you can do so by replacing the key with `key1 & key2`. The hotkey will work perfectly. Note however, as per the AHK specifications, that `key1` will lose its native function. Personally, I think this is a feature, not a bug, as it prevents unintentional key presses.

However, if you really want a key to work in concert with another while keeping its native function (or just having any function at all), simply assign `key1` its own hotkey in the layer's config file. 

Finally, if you are unsure of how to represent a particular key, you can create a template file with every key combination in it. This will include the prefixes for special modifier keys (like representing Ctrl + i with the `^` prefix like so: `^i`).

Alternatively, you can check out the [AHK v2 docs](https://lexikos.github.io/v2/docs/KeyList.htm) for the full list of keys and key codes.

### **Layer Configuration**

Once you've generated a layer template, or all your layer templates, you'll want to fill them out and ensure they are properly ordered. 

There are generally two ways to go about this. By default, the templates default action is `SendInput("x")`. If you're only goal is to remap keys for convenience across different layers, then all you need do is replace the `x` with whatever key you wish. As always, the [AHK v2 docs](https://lexikos.github.io/v2/docs/KeyList.htm) have a full list of keys you can rebind.

The alternative is to define your own functions, as per the AHK scripting language. In this case, I reccomend simply reading the docs and testing out your functions seperately before including them in your layer. Once configured, layers should work like a charm. 

For more information about how to use the layers appropriately check out [Usage](#usage)

#### **Ordering Layers**
Ensuring your layer files are appropriately ordered is relatively simple. Name your layers with the following format `layerX.ahk` where X is the layer number. This will ensure that the files are sorted correctly. You could also change up the format a little, but if it isn't clear to the program which layers is layer 1 and which is layer 2, your layer toggling won't work as expected.

However, the naming format `customTextX.ahk` should also work.

## **Usage**

### **Dead Layers**

### **Tips on Chords**

## **Features**

[Descripton of features and basic method for loading in the config files]

## **Compatibility**

K-plus is built entirely with AHK, which means that it inherits the issues AHK has. These are extensive, and several are buried in the AHK documentation. 

Notably, AHK does not play well with video games, so sadly the reliability of layers in games cannot be guaranteed. While layers would be nice, I reccomend simply suspending or quitting the app during gameplay and relying on your base keyboard layout. Since games usually demand positional keyboard memory rather than specific letters (or typing), the only issue this causes is a lack of the options layers usually provide, which can't be helped.

Additionally, `Alt+Tab` has unusual behaviour in AHK scripts. If you wish to rebind the `Alt+Tab` function and `Alt+Shift+Tab`, I reccomend following the [official guidance found here](https://lexikos.github.io/v2/docs/Hotkeys.htm#alttab). In short, the official shortcuts for `Alt+Tab` options can only be used with same line hotkeys, which are not supported by k-plus.

Lastly, numpad keys behave differently depending on whether or not `NumLock` is engaged, and with `Ctrl` pressed, pressing `Pause` produces `CtrlBreak` and `NumLock` produces `Pause`. AHK reccomends using `^CtrlBreak` in hotkeys instead of `^Pause`, where the `^` prefix stands in for Ctrl.

If you encounter unexpected compatability issues, I reccomend checking out the source code and the [AHK v2 docs](https://lexikos.github.io/v2/docs/AutoHotkey.htm). You can also open an issue.

## **Contributing**

Feel free to fork/create a pull request to fix bugs, refactor code, or add new featues. While I aimed to create something flexible and easy to configure, I'm certainly not a master of AHK and there's certainly room for improvement.

In particular, the settings for creating template layers must be edited manually, and would likely benefit from some simple GUI options. Morevoer, there may be more efficient ways of formatting and setting up the templates, or making it easier to navigate them to fill in functions as desired.

Currently, k-plus does not support hotstrings. While you can of course generate your own hotstring scripts, you cannot define custom hotstrings in a given layer. Adding this functionality while maintaining performance is a good project to contribute to.

Finally, a general refactoring of code might provide a way to use the script with `.ini` files instead of `.ahk` libraries. This would provide the advantage of having a script whose layers are configurable even after being compiled. That would simplify the installation process and likely make the user configuration experience simpler. 

It's probable the code can be refactored to work entirely with `.ini` files, without losing too much efficacy, though I suspect some degree of versatility will be inevitably lost. If `.ini` files are better for you, and you're interested in tackling the refactoring, go for it, I'll make a dedicated branch for the project.

Other fixes, suggestions, improvements, and additional features are welcome.

## **Credits**

The AHK software and docs have been invaluable to making K-Plus work.

In addition, [DreymaR's Extend layer](https://github.com/DreymaR/BigBagKbdTrixPKL) layout has been used as one of the suggested default layers (with some modifications), and I highly reccomend checking out the Extend layers in general if you aren't already familiar.

## **Additional Resources**

K-plus is a useful tool, but it was designed to serve a single individual's needs. DreymaR's Extend layer is a modifier-based program with a great deal more versatility than k-plus. Although it lacks layer toggling (its one major flaw) it does come with a GUI, support for a variety of keyboard layouts, an active community with active developers, and many more features (like powerstrings, chords, and more advanced dead keys) than I could create. I reccomend checking it out for more details. 

I also have to reccomend [kmonad](https://github.com/kmonad/kmonad), an incredibly flexible layer program designed to work (to one degree or another) on Linux, Windows, and Mac. While the tool is less actively developed, it includes a wider variety of features including layer toggling, dead keys, chords, powerstrings, modifier-based layers, and variable key functions depending on how the key is pressed (double-tapped, held vs tapped, etc.). While support seems to be primarily focused on Linux systems, kmonad truly offers it all, though it comes with a comparable amount of configuration to set up even simple layers. Definately give it a whirl if you lean more towards 'poweruser'.

## **[License](./LICENSE)**
This program uses the open-source MIT License.

--- 