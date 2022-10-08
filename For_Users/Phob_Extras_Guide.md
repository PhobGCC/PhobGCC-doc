# PhobGCC Extras Guide

This is a guide to enabling Extras, community-created features that require to be manually enabled in the PhobGCC firmware.

# Prerequisites

* The ability to flash the PhobGCC firmware normally by following the [Phob Programming Guide](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Programming_Guide.md).

# Preface about Toggling and Configuring Extras

When enabling an Extra, it must be assigned to one of 4 directional configuration
inputs to toggle the feature and and configure its settings. The two button combination
that are used to toggle and configure Extras are:

* Toggle: A + B + Both Sticks Pointed Up/Down/Left/Right
* Configure: A + Dpad + Both Sticks Pointed Up/Down/Left/Right

For configuration, each dpad direction can be used to configure the Extra, but it's up to each Extra's
implementation to determine how it uses each direction of the Dpad. Please refere to the documentation
of the Extra you wish to enable to see how to configure it (if the Extra uses configuration).

# Enabling Extras

## Opening extras.h

Navigate to the folder where you downloaded the PhobGCC firmware, you should
see three folders along with the 'PhobGCC.ino' project file.

![image](https://user-images.githubusercontent.com/22358804/194706645-0aa14dc5-4d2f-4e39-a6be-a88dff56749b.png)

Open the 'extras' folder and there should be a file named 'extras.h' inside.

Open it by right clicking it and opening it with Notepad or a text editor of choice.

![image](https://user-images.githubusercontent.com/22358804/194707025-948928e9-693f-402b-bb94-c0d591a9ae9d.png)

## Enabling an Extra

Look at the top of the document for the following section:

```c++
/* Plugins and extra features outside the normal scope of
 * the PhobGCC can be found here. Uncomment each #define
 * to include the features they provide in a build then
 * set the configuration slot it uses (if it needs configuration)
 * 
 */
//------------------------------------------------------
//#define EXTRAS_ESS
//------------------------------------------------------
```

Here there is a list of Extras you can enable. Currently we only support one, 
which is ESS functionality for Ocarina of Time for WiiVC, but with time there
will be more to pick from.

Find the Extra(s) you wish to enable, then delete the `//` that comes at the
start of the line that looks like: `//#define EXTRAS_EXAMPLE`. 

If I wanted to enable the ESS Extra, my 'extras.h' would look like this:

```c++
/* Plugins and extra features outside the normal scope of
 * the PhobGCC can be found here. Uncomment each #define
 * to include the features they provide in a build then
 * set the configuration slot it uses (if it needs configuration)
 * 
 */
//------------------------------------------------------
#define EXTRAS_ESS
//------------------------------------------------------
```

## Setting an Extra's Configuration Direction

Next, you will need to set the configuration direction for the Extra. 

Scroll to the bottom of the file until you find the configuration block
related to the Extra you wish to enable.

For example, the ESS Extra looks like this:

```c++
#ifdef EXTRAS_ESS
	//-----------------------------------------
	ess::extrasEssConfigSlot = EXTRAS_UNSET;
	//-----------------------------------------
	Serial.println("Extra: Enabling ESS functionality...");
	extrasConfigAssign(ess::extrasEssConfigSlot, ess::toggle, NULL);
#endif
```

Look for the config slot direction for the Extra you enabled and replace `EXTRAS_UNSET` 
with one of: 

* `EXTRAS_UP`
* `EXTRAS_DOWN`
* `EXTRAS_LEFT`
* `EXTRAS_RIGHT`

You can only have one Extra per direction, for a total of 4 Extras enabled maximum.

If I were to set the ESS Extra to Sticks Down, the code would then look like this:

```c++
#ifdef EXTRAS_ESS
	//-----------------------------------------
	ess::extrasEssConfigSlot = EXTRAS_DOWN;
	//-----------------------------------------
	Serial.println("Extra: Enabling ESS functionality...");
	extrasConfigAssign(ess::extrasEssConfigSlot, ess::toggle, NULL);
#endif
```

If you leave the configuration direction unset, you **will not** be able to toggle or configure
the extra you enabled!

When you are finished, save extras.h and re-flash the firmware by using the Arduino Software.

# Toggling and Configuring an Extra

Once you've finished flashing your PhobGCC with the Extra-enabled firmware, you can then 
toggle and configure the Extra you enabled by using the button combinations listed at the
start of this document and following the configuration guide for the Extra you enabled.

If you have any issues, please refer to the PhobGCC Discord's tech support.
[PhobGCC Discord](https://discord.gg/yrpUu7mgzm)

