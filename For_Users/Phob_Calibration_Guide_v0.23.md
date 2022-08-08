**NOTE: This is for firmware version 0.23.**

For Version 0.22, use [this document](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Calibration_Guide_v0.22.md).

For later development versions of the software that have not yet been released, search for “Current Commands List” in the PhobGCC.ino file to see the commands for that version as they may have changed.

**NOTE 2: The controller starts in safe mode! To make any changes you must disable it first!**

I strongly recommend using Smashscope (either on a Wii or Dolphin) for all of this.
An alternative is Uncle Punch Training Mode 3.0. In the Training Lab menu, under General enable “Input Display”, and under Info Display enable “System LStick”, “System CStick”, and “System Trigger” as the first three rows.

# Initial Setup

* The first time you boot the PhobGCC, the sticks will not move at all. This is normal.
* First, use AXY+Start to toggle off Safe Mode.
* Next, use ABZ+Start to hard reset the controller.
* Unplug and replug the controller.
* If using Dolphin, restart the game (Smashscope or Uncle Punch).
* Toggle off Safe Mode (AXY+Start).
* Calibrate the left analog stick (AXY+L, follow procedure below).
* Unplug and replug the controller.
* Toggle off Safe Mode (AXY+Start).
* Calibrate the C-Stick (AXY+R, follow procedure below).

If you don't unplug and replug the controller between the first time calibrating each stick, the notch adjustment phase will be buggy for the second stick calibrated.
We're not quite sure why.

# Activating the Analog Sticks - B

* After plugging in the controller, press B to activate the analog sticks.
* If you are playing using Dolphin/Slippi, YOU MUST POWER CYCLE (unplug and plug back in) YOUR CONTROLLER EVERY TIME BEFORE YOU START SMASH, then press B once smash is running.
  * If you are using a Mayflash adapter, you must plug in both USB connectors for the controller to register in Dolphin/Slippi.
* If you do not do this your calibration may be off and you may not get 1.0 dashes.

# Making Changes On PhobGCC

* Every time you give the PhobGCC a command, except for during the stick calibration process, the Analog Stick and C-Stick will freeze pointing to the top right for 2 seconds.
* If you're in game without input visualization tools, you will see your character roll to the right to indicate this, or you'll see the menu tilt due to the C-Stick.

![Sticks pointing up and to the right, triggers pressed](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Calibration_Guide_v0.20_Images/FreezeSticks.png?raw=true)

# Safe Mode Toggle - AXY+Start

* To turn off Safe Mode, you have to hold the key combination for about 1 second, to prevent accidental activation.
  * Turning Safe Mode back on has no delay.
* This is necessary to be able to make any changes on the controller, otherwise it won’t let you change any settings.
* Even if you haven't pressed B, this will wake up the sticks.
* When you turn Safe Mode off (configuration is possible), the controller freezes for 2 seconds.
* When you turn Safe Mode back on (you can no longer configure), the controller freezes for 4 seconds to distinguish. You can also just unplug and plug the controller back in to ensure that you are in Safe Mode.

# Controller Reset - ABZ+Start

* **Use this if you have uploaded code to the controller for the first time, are upgrading from an older software version, or have messed up your settings in some way.**
* **You need to turn off Safe Mode in order to reset.**
* This will reset all the controller settings, including snapback filtering, analog delay, offsets, and calibrations.
* These default values will not be good, you **will need to calibrate and adjust snapback!**
  * Otherwise the sticks will be wonky.

# Rumble Configuration - XY + Du/Dd

* Rumble is only available on boards version 1.2 or later. This command will do nothing for earlier boards.
* Press XY + D-pad Up/D-pad Down to increase or decrease the rumble strength.
* There are settings from 0-7.
  * 5 is roughly equivalent to an OEM controller's rumble.
  * 0 turns off rumble entirely.
* Press BXY (without pressing A) to show the current rumble setting on the C-Stick.

# Analog Stick Calibration - AXY+L

[PhobGCC Analog Stick Calibration Guide - YouTube](https://www.youtube.com/watch?v=nUbpmkcleF8)

[PhobGCC Notch Calibration Guide - YouTube](https://youtu.be/hscmtzy7dqs)

* Stick calibration has two phases: measurement and notch adjustment.
* If you’ve already calibrated the stick and just want to adjust notches, you can skip the measurement phase and immediately begin notch adjustment by pressing Start at any time during the measurement phase.

## Measurement Phase

* During the measurement phase, the C-Stick will alternate between center and positions along the rim. First it will have you measure the cardinal directions (right, up, left down), then the 45 degree diagonals, then it will allow you to measure one notch in each eighth segment of the circle.
* To measure, move the stick to the indicated notch, then press either L or R to go to the next step.
  * When measuring, move the Analog Stick into the notch in the same way you would during gameplay. For cardinals, move straight from center. For the lower 45 degree diagonals, slide down from horizontal to mimic the shield drop motion.
* If you think you messed up a measurement (measured the wrong notch, for example), you can go back to the previous notch measurement by pressing Z while the C-Stick is centered. Press multiple times to go back more steps.
* Measuring tertiary notches between the cardinals and 45 degree notches is optional. If you don’t have a notch where the C-Stick is indicating, simply leave the Analog Stick centered.

## Notch Adjustment Phase

* During the notch adjustment phase, the C-Stick will indicate along the rim which notch is currently being adjusted. Only notches that were measured may be adjusted. Any notches that were not measured will be automatically skipped.
* The C-Stick’s displayed value will be exactly the notch position that was measured during the measurement phase.
* If the Analog Stick was uncalibrated and outputting gibberish values before, it should now be behaving normally. It gives you a live preview of how the stick will behave based on the current notch adjustment settings.
* To adjust the notch that the C-Stick is pointing towards, press X to shift the notch clockwise and Y to shift the notch counterclockwise. Make sure you check how your notches behave as the stick enters from different directions.
* Reset the current back to the originally measured position by pressing B.
* When you’re done adjusting the current notch, press either L or R to go to the next notch. Press Z to go back to the previous notch, but you cannot go back to the measurement phase.
* When the C-Stick’s output returns to center (and you can move it), your stick is now calibrated.

# C-Stick Calibration - AXY+R

This process is exactly like Analog Stick Calibration, but instead, the Analog Stick moves to show you how to move the C-Stick.

# Analog Stick Smart Snapback Adjustment - LX/LY + Du/Dd

Increasing the Analog Stick Smart Snapback Filter adjustment doesn’t hurt responsiveness of the stick when moving away from the center. Increasing the value of this filter only makes it return to center more slowly.

* Press L + Your Axis (X/Y) + To increase or decrease strength (D-pad Up/D-pad Down)
  * Example: LX+Du suppresses X-axis snapback more, LY+Dd suppresses Y-axis snapback less.
  * When you change this setting, the current snapback filter settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-7, and defaults to 1.
  * 0 completely disables the Smart Snapback Filter. This removes the rise time improvements, hurting dashdancing on the X axis, and you will have snapback.
  * 1-7 is equivalent to 0-6 on v0.21.
  * Sticks usually need a setting of 1-4. 5+ is for special situations such as metal stick caps or lighter spring weights.
* Press L+Start+D-pad Down to see the current snapback filter values on each axis of the Analog Stick.
  * The C-Stick will show the axis smoothing values.

# Analog Stick Axis Smoothing Adjustment

The Analog Stick Axis Smoothing is just a simple low-pass filter similar to a capacitor on a vanilla Gamecube controller. Increasing this setting slightly reduces responsiveness. If you have the Smart Snapback Filter disabled, you can use this to suppress snapback.

* Press L + (A/B) + To increase or decrease (D-pad Up/D-pad Down)
  * A corresponds to the X axis, B corresponds to the Y axis.
  * Example: LA+Du increases the X-axis Delay, LB+Dd decreases the Y-axis delay.
  * When you change this setting, the current axis smoothing settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-9.
  * Single-Motion Ledgedashing: ~5 on X-axis and 0 on Y-axis
  * Alternatively, set the Smart Snapback adjustment on the Y-axis to 0 and set the Axis Smoothing to 0 for both X and Y-axes. This gives stronger single-motion ledgedashes but you may experience Y-axis snapback.
* Press L+Start+Dpad Down to see the current axis smoothing values on each axis of the C-Stick.
  * The Analog Stick will show the snapback filter values.

# C-Stick Snapback Adjustment

The C-Stick Snapback Filter is actually a low-pass filter similar to the Analog Stick Axis Smoothing that has dual purposes, for reducing the chance of getting the wrong move and for suppressing snapback.

* Press R + Your Axis (X/Y) + To increase or decrease (D-pad Up/D-pad Down)
  * Example: RX+Du is increasing the X-axis Snapback, RY+Dd is decreasing the Y-axis snapback.
  * When you change this setting, the current snapback filter settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-9.
* To reduce the chance of getting the wrong move, increase the value on the axis that you don’t want, and decrease the value on the axis you do want.
* To suppress snapback on an axis, use a somewhat high value here (start with 7).
* Press R+Start+D-pad Down to see the current snapback filter values on each axis of the Analog Stick.
  * The C-Stick will show the current offset values.

# C-Stick Offset

* Press R + (A/B) + To increase or decrease (D-pad Up/D-pad Down)
  * A corresponds to the X-axis, B corresponds to the Y-axis.
  * Example: LA+Du is increasing the C-Stick X Offset, LB+Dd is decreasing the C-Stick Y Offset.
  * When you change this setting, the current offset settings are shown as the numerical coordinates of the C-Stick.
* This shifts the global coordinate C-Stick coordinate, not delay. This is for hitting downward angled forward smashes, for example.
* Press R+Start+D-pad Down to see the current offset values on each axis of the C-Stick.
  * The Analog Stick will show the current snapback filter values.

# Z-Jump

* Press XZ+Start to swap X and Z. This will reset Y if previously swapped.
* Press YZ+Start to swap Y and Z. This will reset X if previously swapped.
* Press AXY+Z to reset to the default.

# Analog Trigger Modes

* Press ZL+Start to cycle through the trigger modes for L-trigger.
* Press ZR+Start to cycle through the trigger modes for R-trigger.
* There are 6 trigger modes:
  * Mode 1: Standard behavior with the analog slider active and a digital press at the bottom of the travel. Smashscope will show red bars and then turn blue on digital press
  * Mode 2: Digital-only, where the analog slider is disabled. Smashscope will show nothing.
  * Mode 3: Analog-only, where the digital press is disabled. You will still get LRA+Start in this mode. Smashscope will show only red bars.
  * Mode 4: Trigger-Plug Emulation, where the analog slider will only go up to the user-defined max (see below) and then allow you to input a digital value.
  * Mode 5: Analog Value At Digital, where the analog slider is disabled and the digital press will result in a user-defined analog value (see below).
  * Mode 6: Analog and Digital Value at Digital, where the analog slider is disabled and the digital press will result in a user-defined analog value (see below) and a digital input.
    * This is useful when using a controller with trigger plugs for Smash Ultimate and other games that disregard the digital press.
* The trigger modes are displayed as Analog Stick values for the L-trigger and C-Stick values for the R-trigger.

# Analog Trigger Value Adjustment - ZL/ZR + Du/Dd

* This shifts the user-defined limit for Analog Trigger Modes 4-6.
* Press Z + your trigger (L/R) + D-pad Up to increase or D-pad Down to decrease.
  * The possible range of values goes from 49 to 227, with 49 being equivalent to Z-lightshield in Melee, the largest legal value.
  * Melee treats all values 140 and above as the strongest analog shield.
  * Ultimate only shields when the analog value is 79 or above.
  * The values are displayed on the C-Stick, with the X-axis corresponding to L and the Y-axis corresponding to R.
  * Once you cross above 100, the corresponding Analog stick axis will display 100 and the remainder of the value will be shown on the C-Stick.
  * If you configure in Uncle Punch or 20XX, the C-Stick might not reflect the actual value when the displayed coordinate is outside the Melee input circle. Confirm your settings using Smashscope or by checking the actual resulting trigger value.
* A known bug is that when adjusting the trigger values, Smashscope on Wii will recenter occasionally, making the stick values go wild. Simply unplug and replug the controller to verify that the changes you made are correct.
  * Alternatively, simply perform this configuration on Dolphin and this bug will not occur.

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
