# **Personal Layout**

## Introduction
Below is a relatively up to date explanation of my various layers, how I manage them, and the design principles I used. 

For this last category, I've limited the explanations to those choices that I haven't seen elsewhere or are peculiar to me. More general explanations of the design principles behind alternate layouts can be found all over the web, usually in areas like Reddit, Discord, forums, and personal sites dedicated to a range of topics including Dvorak, Colemak, alternate keyboard layouts, QMK, mechanical keyboards, ergonomic keyboards, and more. 

If you want to try out my layers, or modify them for yourself, I reccomend giving this a read since the layers themselves are not commented. However, this is not the place to examine the exact layouts of each layer. While I might eventually generate some nice images for core layers, generally you should just checkout the layer files themseleves if you want to know how the buttons are arranged.

My current layer files are kept in the numbered folders, while the others remain for legacy reasons.

I'll try to keep this up to date as it also serves as a central area to keep notes about my layer system.

Key positions are generally referred to by their ANSI QWERTY positions, while what they actually output is specified as they typed result.

## **Table of Contents**

* [Design Principles](#design-principles)
* [Issues](#issues)
* [Universal Features](#universal-features)
    * [Directory Key](#directory-key)
    * [Previous Layer](#previous-layer)
    * [Windows Backspace Key](#windows-backspace-key)
    * [CapsLock](#capslock)
    * [Autoshift](#autoshift)
    * [Key Repeat](#key-repeat)
    * [Shift Lock](#shift-lock)
* [Core Ecosystems](#core-ecosystems)
    * [Alpha](#alpha)
    * [Sym](#sym)
    * [Ext](#ext)
* [Additional Layers](#additional-layers)
    * [Diacritics](#diacritics)
    * [Function Keys](#function-keys)
    * [Greek](#greek)
    * [Mathematical Symbols](#mathematical-symbols)
    * [Alchemical Symbols](#alchemical-symbols)
    * [Morse](#morse)

## **Design Principles**

In developing a keyboard layout and layer system, my primary goal was to minimize finger effort while using the keyboard for navigation, writing, and coding. Thus, my first priority was removing keys from consideration that required strain or stretching to type. 

Obviously, eliminating everything wasn't feasible (or at least not for me, homerow keyboards notwithstanding). My eventual compromise was 35 keys. With the exception of the `p` and `z` letter keys, I kept every letter as well as `Tab`, `CapsLock`, `LShift`, `LAlt`, `Spacebar`, `RAlt`, `semicolon`, `comma,`, `period`, `apostrophe`, and `Enter`.

Ultimately, I would have liked to remove `period` as well, but just couldn't manage without that 35th key. 

This is primarily due to my second, and much less important, design principle. I wanted to be able to 'plug and play' my layer script on any standard laptop or keyboard. That meant that I would have to miss out on the common split spacebar, since mechanical keyboard setups were out (for now at least). 

While my keychoices will make more sense when looking at how I generated my [core ecosystem](#core-ecosystems), suffice to say that `p` is an awful letter to press and `z` is not much better. `Period` is almost as bad as `z`, but something about the ring finger press of that key on the right hand is easier than the left. Similarly, I prefer pressing `LShift` as opposed to `RShift`. 

Finally, I personally prefer layers accessed by toggling or used as one-shots (what I call dead layers). I do not enjoy chording modifiers. Therefore, my layer switches are accomplished by simply tapping a key, rather than holding it down. I find this to be superior to the inclusion of additional modifiers, the way many layer systems like to handle extra layers. 

I will acknowledge that the downside of tap vs hold layer switches is that you must also tap back. That can make typing certain keys, like periods and commas, tedious indeed. As a compromise, I use dead layers. Essentially, an entire layer is coded so that upon pressing any key the layer swaps back to the previous layer. This greatly increases the number of layers I have, but k-plus does not have a real limit and the solution is worth avoiding complex chords that strain the hands.

## **Issues**

Of course, starting principles and one's loft goals can diverge quite heavily from the final product. 

In the case of k-plus, a full accounting of my desired layers resulted in a host of issues. Random capitalizations, sudden failures of a hotkey or 8, immense lag, stuck down modifier keys, and the sudden cessation of any hotkey at all firing ever again are just some of the issues that appeared. Worse, I have yet to pin down a precise cause and some issues appear to crop up without any alteration to the code.

One way or the other I have eliminated several of these issues, though undoubtedly some still remain. Several incredibly repetitive chunks of code appear to work much much better when hardcoded, rather than using a variable or function as is best practice. Thus my layers are somewhat difficult to read. Why this would be the case still baffles me.

Moreover, it seems that k-plus becomes unreliable past a certain number of layers, or perhaps hotkeys, or perhaps even lines of code. I cannot say for certain. What I do know is that below 9 or so layers things become much more stable. Since I desired something like 21 layers, this was an issue. 

I resolved this by creating multiple sets of layers, compiling a version of k-plus with each set of layers, and linking the sets via the suspend function.

By running multiple compiled `.exe`s simultaneously, but leaving all but a single one suspended, I can effectively swap between layers by strategically suspending and unsuspending each script. By binding the unsuspend hotkey for one script in another script's directory (along with a command to suspend itself), I can swap between scripts almost as easily as I would swap between layers. 

## **Universal Features**

There are some features and keys that remain constant across layers. This makes learning to navigate the layers easier, and some macros and keys simply need to be accesible everywhere, or almost everywhere. 

There are also a few features that are not universal, but often present. 

For the most part, control keys like `Tab`, `Shift`, and `Space` are in their usual positions and roles. Exceptions are generally noted. 

### **Directory Key**

On every layer the same key is dedicated to toggling to the directory layer. `LAlt`, when tapped, changes the layer to the directory from which every layer can be accessed. When held down and used in combination with another key, however, `LAlt` functions just like `LAlt`. The layer switch occurs on key release.

### **Previous Layer**

On some layers the same key is dedicated to toggling to the previous layer, where the previous layer is the last layer used that isn't one of two exceptions. These exceptions are the directory, and dead layers. 

The key used to toggle to the previous layer is `RAlt`. This is setup similarly to the directory key, where holding down `RAlt` and pressing another key lets it act like `Control`, while simply tapping it activates the previous layer macro.

However, for many other layers (mainly the core letter and symbol layers), `RAlt` instead swaps from either letters to symbols or vice versa.

### **Windows Backspace Key**

While not every layer has this key, every layer dedicated to typing characters (as opposed to function keys or navigation) has this key. 

The `apostrophe` key on QWERTY has been replaced by a dual role `Windows` and `Ctrl + Backspace` key. It works the same as the directory and previous layer keys, modifier on hold, `Ctrl + Backspace` on tap. 

While the official navigation layer has a regular `Backspace` (and `Delete`) in convenient positions, sometimes while typing you just need a quick dose of white-out. `Ctrl + Backspace` deletes the last word, so whatever the most recent typo I can simply tap this key with my right pinky and fix the error. More advanced editing will simply use the navigation layer.

### **CapsLock**

Rightly considered a joke, `CapsLock` is a useful key that does not deserve a homerow position. On every layer where this matters, tapping swaps to the navigation layer.

### **Autoshift**

While `LShift` isn't awful, it is still annoying to press as often as it is needed. That's why, for every layer that types characters, autoshift has been implemented. Long pressing a key results in its shifted state, whether I'm typing letters or symbols.

Ultimately, I don't like the 'character types on key release' effect of having home row mods, so I went with autoshift instead of a homerow mod-tap. Longpressing backspaces a character and retypes the letter, so it's wise to be careful where an unintentional backspace could cause issues.

Also, unlike QMK's implementation, because it backspaces rather than waiting for a key release, you don't have to wait for the key to release for the character to appear. If you like the QMK implementation, you'll probably want to use the other utility function for longpresses included with k-plus.

### **Key Repeat**

The downside of autoshift is you can no longer quickly type a string of the same character. To reenable key repeate wherever autoshift is enabled, I've implemented an inclusive multipress. Double tapping a key and then holding it down results in the regular key repeat behavior. 

This means you have to pause to not accidentally trigger a double press when typing something like 'aA', but the edge case is so small I haven't bothered trying to account for it.

### **Shift Lock**

`CapsLock` is sometimes useful, but shift lock is better. Tapping shift on a layer that types characters shift locks everything. Autoshift works in reverse, and so does regular shift. Sometimes the shift tap doesn't like to register properly, but that's what the tooltip is for. 

I'm continuing to investigate the issue.

## **Core Ecosystems**

Here are the core layers that get used most frequently, and usually have keys dedicated to moving to another layer in the ecosystem without passing through the directory. 

Technically, there are two ecosystems, though they are almost identical to each other. 

The issue is that before I got started on my custom keyboard layout, I learned the basics of Vim keybindings. Currently, I use those bindings in VS Code through an extension. That's useful muscle memory I have no wish to waste or retrain, and Vim is a nicer navigation/editing 'layer' than my own design. Besides, my muscle memory is for the keys of Vim, not the letters......

One ecosystem is traditional, and `CapsLock` toggles my navigation layer. The other ecosystem is specifcally for my Vim usage. It's identical, except `CapsLock` outputs `Esc` and then toggles to a special 'Vim' layer that is basically just QWERTY. 

However, the strings and keys that one would use to go from Normal mode in Vim to Insert mode send their respective characters, than toggle back to the regular Alpha layer. Maybe its not the most efficient setup, but I'm attached to Vim and have no desire to orient the layout of my regular letters for Vim convenience. This is a suitable compromise, though it means I have two core ecosytems that are almost identical save for the function of `CapsLock`.

### **Alpha**

The standard alphabet layer. I use a modified version of canary with the wide, angle, and curls mods.

```
w  l  y  p  k  z  m  o  u  ;  [  ]
c  r  s  t  b  f  n  e  i  a  '
/  v  d  g  j  x  h  q  ,  . 
```

The punctuation in the layout above is copied from canary, however all my punctuation is on a seperate layer.

The right middle curl on the bottom layer replaces the left ring curl for the bottom layer. `J` sits in the center of the board, displacing `Q` to the right hand. That makes `QU` less than ideal, but it is a compromise given the infrquence of that particular bigram and allowing `J + vowel` to remain orderly. 

Additionally `M` and `X` swap places, the former being more frequent than the letter and the top row being nicer for me than the bottom. The fingers for these remain the same however, so sfbs are not impacted.

The rest of the non-letter keys are standard as per [Universal Features](#universal-features).

### **Sym**

The symbol layer. There's a regular toggle variant, shift locked variant, and dead layer for each ecosystem (Vim vs. Custom Nav). That's because tapping `Shift` while in the dead layer acts like a layer lock, toggling you to the regular symbol layer for the ecosystem you're in. From there, you can use the dedicated previous layer key to return to the appropriate alpha layer.

However, the non-dead variants do have the usual features, including `CapsLock` as a toggle to whichever navigation layer they're dedicated to.

Since the symbol layer doesn't need a key dedicated to going to the dead symbol layer, it has 27 keys for symbols. With shift states that's 54 keys. A standard keyboard only has 42 symbols and numbers. That means I was able to add several additional symbols that might occasionally be nice to type, like the `°` symbol.

Because of this nonstandard assortment and the dearth of analysis into optimal symbol layouts, I've hand designed this. Feedback is appreciated, though I think I've found a good mix of intuitive, useful for coding as well as writing prose, and something that places common coding bigrams appropriately. 

A seperate symbol layer for writing vs. coding is not worth the bother.

The symbol layer assumes the 'curl' mod for the home row, and avoids the sfb of common operators.

The dead symbol layer also only reverts to the previous layer once you release a key, so as long as you aren't tapping the same key, you can often get away with typing two characters on the dead layer, rather than one (handy for bigrams like `${` and `+=`).

### **Ext**

The Vim 'nav' is hardly worth mentioning. The actual nav layer is heavily based on DreymaR's Extend (see Additional Resources in the root [README.md](../README.md)), thus the naming. It orients around left hand homerow mods and right hand arrow keys, which when combined let you do any of the navigating, highlighting, deleting, copying, pasting, and similar tasks one might need when editing text.

Check out the layer for the full list of shortcuts and keys used.

## **Additional Layers**

Once you get a taste, its hard to know where to stop. Here are some of the additional layers I've implemented, or am planning to implement. These aren't part of the core ecosystem, to use them I navigate through the directory. However, it isn't terribly difficult to change that should a layer, like the diacritics, become more frequently used in the future.

### **Diacritics**

As many of the English letters with diacritics from other languages as I could find and fit. 

### **Function Keys**

The function keys, from `F1` to `F24`. There's a general layer, as well as a dead layer variant.

### **Greek**

The Greek letters. 

### **Mathematical Symbols**

Specialized mathematical symbols for typing equations and the like. I don't use these often, but when it comes up it's such a pain to do a search and copy paste the result.

### **Alchemical Symbols**

The alchemical symbols, which are always fun to use. A full keyboard of these makes for interesting key smashes. 

### **Morse**

This layer turns the specified hotkeys into morse code buttons. By default, it waits for you to be idle for a certain period of time before typing a character, and a longer period of time before typing a space. Dots and dashes are determined by short vs long presses. You can also specify a hotkey to tap after every letter if you're learning and don't have the timing down. 

Why you want to type in morse code is your business, but you can make every letter key a morse code key if you wish letting you pretend to type random letters while inexplicably still outputting readable text. 

Just like in actual morse code, capitalization is not supported. I reccomend a seperate script that will auto-capitalize for you.