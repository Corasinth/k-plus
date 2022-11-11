// This is the tracker that determines the current layer
let CURRENT_LAYER = 0

// This is a number used to record CURRENT_LAYER for temporary layer swaps
let PLACEHOLDER_LAYER = 0

// The layer matrix is an array of arrays containing imported objects from the various configuration files.
// Each object contains a key (which is the hotkey) and a function (which is the function the hotkey performs on press)
// The matrix makes it easier to import a variable number of layers, based on the number of config files. The array can be looped through, each subarray corresponding to its own layer, without having to define specific variables for each layer.
let LAYER_MATRIX = [] 

// The main method for swapping between one layer and another
function layerToggle(newLayer) {
    // This function takes in a new layer, and sets the CURRENT_LAYER to the new layer
    CURRENT_LAYER = newLayer
    // Then it runs hotKeyMap to toggle the keyboard layout over to the new layer
    hotkeyMap()
}

// A way to temporarily access a particular layer by holding down a key, like the shift layer
function layerModifier(hotkey, newLayer) {
    // This function takes in a new layer and makes a record of the current layer
    // It must also keep track of the state of the given hotkey. 
    PLACEHOLDER_LAYER = CURRENT_LAYER
    // Then it sets the CURRENT_LAYER as the newLayer inputted, and runs the remap function
    CURRENT_LAYER = newLayer
    hotkeyMap()
    // When the function detects that the pressed hotkey has been released, it resets the CURRENT_LAYER to its previous value, and remaps the keyboard again
    CURRENT_LAYER = PLACEHOLDER_LAYER
    hotkeyMap()
}

// A way to allow quick access to layers only needed for a single character, like access to the special character/number layer for a period or comma.
function layerDeadKey(newLayer) {
    // Thos function starts by recording the current layer, then setting the CURRENT_LAYER to the inputted new layer
    PLACEHOLDER_LAYER = CURRENT_LAYER
    CURRENT_LAYER = newLayer
    hotkeyMap()

    // Then, as soon as any key (other than a modifier key) has been pressed, it resets the CURRENT_LAYER to its previous value and runs the remap function
    CURRENT_LAYER = PLACEHOLDER_LAYER
    hotkeyMap()
}

// Alternatively, it may be simpler to implement dead keys and layer modifiers as follows: 

// Dead keys: A dead key layer is indistinguishable from a regular layer, except that each function within it not only sends some other key, but also records the current layer in the placeholder variable, performs its function, and then runs hotkeyMap with a parameter of the previous layer, effectively toggling back. In short, on pressing a button assigned to toggle to the dead key layer a full remapping is done, and on pressing any key in the dead key layer a function runs to revert to the previous value.

// Layer modifiers can be achieved with a special layer modifier key binding. On {key}down the layer toggles over to the designated destination, and on {key}up the layer toggles back. Some work needs to be done here to prevent binding conflicts........

// The main function for mapping the relevant keys, seperated so it can be called upon by any of the previous methods of accesing a particular layer. 
function hotkeyMap(desiredLayer) {
    // This function takes in a parameter of the desired layer.
    // Then it sets the hotkeys for each key based on the appropriate row of the layer matrix, with the index of the row corresponding to the desiredLayer
    // It then sets CURRENT_LAYER to the desiredLayer
    // The array corresponding to that index is looped through and assigned to each of the variables of the hokey assignments such that the variable baseQ is assigned to the hotkey 'q', and baseQ is set equal to the variable layer0-q
    // Finally, it handles assigning the hotkeys for the various methods of swapping between layers
    // For each layer, there are three potential hotkeys. 
    // 1 hotkey that runs the layerToggle([i]) function where 'i' is the layer in question
    // 1 hotkey that runs the layerModifier([i]) function where 'i' is the layer in question
    // 1 hotkey that runs the layerDeadKey([i]) function where 'i' is the layer in question
    // Based on the variables whose values are assigned in the layer's config file, the hotkeys for each of the three fucntions above, for each layer, are assigned. 
}
