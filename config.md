# **Configuration**

## **Table of Contents**
* [Template Configuration](#template-configuration)    
* [Layer Configuration](#layer-configuration)
    * [Ordering Layers](#ordering-layers)    

## **Template Configuration**

Configuring the template is primarily done through the `settings.ini` file using the values under the heading `[Template Generator Settings]`. By changing the values on the right hand side of the equals signs, you can choose what kinds of keys you would like to have appear in your template file as well as default actions. 

Below is a full list of the various template generator settings, their possible values, and their meaning. Boolean values are either 0 (excluded), or 1 (included).

`includeMouseButtons`: Boolean. Handles inclusion of mouse specific buttons.  
`includeLetterKeys`: Boolean. Handles inclusion of all letter keys.    
`includeNumberKeys`: Boolean. Handles inclusion of all number keys.    
`includePunctuationKeys`: Boolean. Handles inclusion of all keys dedicated entirely to punctuation or symbols.    
`includeControlKeys`: Boolean. Handles inclusion of keys like `CapsLock`, `Backspace`, `Delete`, etc.    
`includeModifierKeys`: Boolean. Handle inclusion of `Control`, `Alt`, `Shift`, and `Windows` keys as the actual buttons themselves, rather than as modifiers to other keys.  
`includeNavigationKeys`: Boolean. Handles inclusion of keys like `Home`, `PgUp`, the arrow keys, etc.    
`includeNumKeys`: Boolean. Handles inclusion of all numpad keys. Based on the status of Numlock, these behave differently. See AHK docs for more detail.    
`includeMediaKeys`: Boolean. Handles inclusion of media specific keys that handle pressing play, pause, skipping to the next track, and other such specialized commands.    
`includeShift`: Boolean. Handles inclusion of all `Shift+key` hotkeys. Useful for remapping new `Shift` layers.    
`includeShiftRightLeft`: Boolean. Handles inclusion of `Shift` variants specific to either the right `Shift` button or the left. Useful for variable `Shift` layers.    
`includeControl`: Boolean. Handles inclusion of all `Control+key` variants, as per shift    
`includeControlRightLeft`: Boolean. Handles inclusion of right and left variants as per shift.    
`includeAlt`: Boolean. Same as above.    
`includeAltRightLeft`: Boolean. Same as previous right-left variants.    
`includeWindows`: Boolean. Same as previous, however no right-left variant exists for the `Windows` key as distinguishing between them is not supported.    
`includeAltGr`: Boolean. Includes AltGr modifier. However, many keyboards don't have this key.  
`includeWildcard`: Boolean. Includes wildcard modifier, which sends a hotkey regardless of what modifiers are being held down.  
`includeControlShift`: Boolean. Handles the `Ctrl+Shift` combination prefix to hotkeys.  
`includeAltShift`: Boolean. Handles the `Alt+Shift` combination prefix to hotkeys.  
`includeWindowsShift`: Boolean. Handles the `Windows+Shift` combination prefix to hotkeys.  
`includeWindowsAlt`: Boolean. Handles the `Windows+Alt` combination prefix to hotkeys.  
`includeControlAlt`: Boolean. Handles the `Control+Alt` combination prefix to hotkeys.  
`includeControlWindows`: Boolean. Handles the `Control+Windows` combination prefix to hotkeys.  
`includeControlAltShift`: Boolean. Handles the `Control+Alt+Shift` combination prefix to hotkeys.  
`includeControlAltWindows`: Boolean. Handles the `Control+Alt+Windows` combination prefix to hotkeys.  
`additionalKeys`: String (include the value in "double quotes, as demonstrated here"). Seperate the keys you wish to include with a comme, as follows:  
```  
additionalkeys = "x,y,z,CapsLock,a & s"  
```  
This includes the keys listed as their own entries in the template file. Useful for when you don't wish to include an entire group (such as all letters or all media keys), but don't want to create the objects manually. Note that the last entry is a chord, requiring you to press `a` and `s` together to trigger the hotkey.
`additionalModifiers`: String (include the value in "double quotes, as demonstrated here"). Seperate any desired modifier keys with a comma, as above. Modifier keys effectively add another sublayer that behaves like `Shift` to the layer. It creates a chord in the following format: `modifierKey & everyOtherKey`, for every key otherwise included in the template file. Thus, an additional modifier layer.  
`defaultAction`: A function call or single key. Adds the contents of the string to the single line hotkey as so:  
```  
<hotkey>::<defaultAction>  
```  
`defaultFunction`: String (include the value in "double quotes, as demonstrated here"). This details the default actions placed inside the hotkey object's function. Do not add typical function wrappings like `()=>{}`. Instead simply paste the code you would put inside the function, using `` `n `` to create line breaks. As an example:   
`universalDirectoryKey`: String. This optional entry, if set to a specific key, will always set that key to toggle back to layer 1, the directory layer. Useful when generating multiple templates.  
`deadLayer`: Boolean. If true, the template generated will be treated like a dead layer, and an additional `toggleLayer(previousLayer)` function call will be added to each hotkey to toggle the layer back after any key is pressed.  
`multipress`: Boolean. Handles whether or not to include formatted code allowing for a distinction between a single, double, or triple keypress (400 ms delay max). Cannot be used with inclusiveMultipress.  
`inclusiveMultipress`: Boolean. Handles whether or not to include formatted code allowing for a distinction between a single or double press (400 ms delay max), that always sends the single press action. Cannot be used with regular multipress.  
`longPress`: Boolean. Whether or not to use the `longPress` function as the default action. See [Long Press](#long-press) for more details.
`longPressOnRelease`: Boolean. Whether or not to use the long press function that has the result trigger on key release, rather than simply after a duration has expired.
`longPressDelay`: Number. The time (in seconds) that one must hold a key down for the long press to be activated.
`formatted`: Boolean. Determines whether or not the hotkey objects are on a single line, or formatted for readability. Turning formatting on makes it easier to add custom functions, especially multiline functions, to each hotkey object. However, it makes it more difficult to quickly scan several hotkeys at once, or easily change a single variable in each (as per remapping).
`defaultFolder`: String. Sets the default folder for saving a template. Useful when generating multiple template layers.  

Additionally, there are a few settings under `[Config Settings]` that are useful to know. 
`universalQuitKey`/`universalSuspendKey`: A string for the hot keys that quit or suspend k-plus, regardless of what layer you're on. Useful to have. By default, they are set to `Alt + Shift + q` `Alt + Shift + s` respectively.
`defaultLayer`: Set this to 0 to disable it or to whichver layer number you want k-plus to start with.
`layersToIgnoreAsPreviousLayer`: String. Space seperated list of layers, where each layer number/name is enclosed in parantheses. These layers aren't counted when the script toggles back to the previous layer. Useful for ignoring the directory and dead layers.
`tooltip`: Boolean. Turn this on to show a little tooltip displaying your current layer at all times. The options below this let you set the location of the tooltip; the default is the upper left corner of the screen. 

If you are ever unsure how to represent a particular key, or what a particular hotkey represents you can check out the [AHK v2 docs](https://lexikos.github.io/v2/docs/KeyList.htm) for the full list of keys and key codes.

## **Layer Configuration**

Once you've generated a layer template, or all your layer templates, you'll want to fill them out and ensure they are properly ordered. 

There are generally two ways to go about this. By default, the templates assigns each hotkey the letter `x`. If you're only goal is to remap keys for convenience across different layers, then all you need do is replace the `x` with whatever key you wish. As always, the [AHK v2 docs](https://lexikos.github.io/v2/docs/KeyList.htm) have a full list of keys you can rebind.

You'll also want to make sure some hotkeys are attached to the `toggleLayer(number)` function, so that you can appropriately swap between layers.

The alternative is to define your own functions, as per the AHK scripting language. In this case, I reccomend simply reading the docs and testing out your functions seperately before including them in your layer. Once configured, layers should work like a charm. 

### **Ordering Layers**
Ensuring your layer files are appropriately ordered is simple. When you generate a layer, make sure you input the appropriate layer number into the dialogue box that pops up. 

Later, if you want to change the layer number you can edit the first line of the layer file so that `currentLayer` equals the layer number you wish.

For the sake of clarity, I reccomend including the layer number in the filename along with whatever else you wish to name the layer. 

**IMPORTANT:** Do not include spaces in your layer file name. Other symbols are fine, but spaces cause issues with the config detector script and will likely result in errors.

Technically, you can create custom names for the layers instead of assigning them numbers. To do this, you need to change the line at the top of each file that says `currentLayer = ` and replace the number in that line with the case sensitive name of your layer, in double quotes. Like this: `currentLayer = "Directory"`. The `toggleLayer()` function needs to be similarly changed for the appropriate layer.