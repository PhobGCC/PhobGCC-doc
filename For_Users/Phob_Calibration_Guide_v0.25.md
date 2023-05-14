**THIS IS LEGACY FIRMWARE! PLEASE UPDATE TO THE [LATEST!](/For_Users/Phob_Calibration_Guide_v0.28.html)**

**NOTE: This is for firmware version 0.25.**

For Version 0.24, use [this document](/For_Users/Phob_Calibration_Guide_v0.24.html).

For later development versions of the software that have not yet been released, search for “Current Commands List” in the PhobGCC.ino file to see the commands for that version as they may have changed.

**NOTE 2: The controller starts in safe mode! To make any changes you must disable it first!**

I strongly recommend using Smashscope (either on a Wii or Dolphin) for all of this.
An alternative is Uncle Punch Training Mode 3.0. In the Training Lab menu, under General enable “Input Display”, and under Info Display enable “System LStick”, “System CStick”, and “System Trigger” as the first three rows.

# Initial Setup

**This has changed for version 0.25.**

**This is only necessary the the first time the controller is set up after it is made.**
You do not need to do this otherwise.

* If using Dolphin, start Dolphin. If using a Wii, turn on the Wii and use another controller to set up your configuration environment.
* Plug in the controller.
* If using Dolphin, start the game (Smashscope or Uncle Punch).
* Toggle off Safe Mode (AXY+Start). Both sticks should be wonky right now.
* Calibrate the left analog stick (AXY+L, follow [this procedure](#analog-stick-calibration---axyl)). The left stick should behave normally now.
* Calibrate the C-Stick (AXY+R, follow [this procedure](#c-stick-calibration---axyr)). The right stick should behave normally now.

# Activating the Analog Sticks - B

* After plugging in the controller, press B to activate the analog sticks. Before this, the sticks are hardcoded to be centered so that the game properly zeroes.
* If you are playing using Dolphin/Slippi, you must first have Dolphin running, then have the controller plugged in before starting the game.
  * By enforcing that the sticks are centered when starting the game, this ensures that you get 1.0 cardinals and accurate notches.
  * If you are using a Mayflash adapter, you must plug in both USB connectors for the controller to register in Dolphin/Slippi.
* This is necessary because if the sticks are miscalibrated, it will be very difficult to correctly calibrate them with the sticks incorrectly zeroed.
  * Once the sticks are calibrated and you are sure they are reliably zero when released, you can disable this. See [here](#toggle-auto-initialize---ablrstart).
  * But each time you reset or calibrate, you will once again be required to press B.

# Making Changes On PhobGCC

* Most of the time, when you give the PhobGCC a command, the Analog Stick and C-Stick will freeze pointing to the top right for 2 seconds.
* If you're in game without input visualization tools, you will see your character roll to the right to indicate this, or you'll see the menu tilt due to the C-Stick.

![Sticks pointing up and to the right, triggers pressed](/For_Users/Phob_Calibration_Guide_v0.20_Images/FreezeSticks.png)

# Safe Mode Toggle - AXY+Start

* To turn off Safe Mode, you have to hold the key combination for about 1 second, to prevent accidental activation.
  * Turning Safe Mode back on has no delay.
* This is required to make any changes on the controller, to prevent you from reconfiguring things during gameplay.
* Even if you haven't pressed B, this will wake up the sticks.
* When you turn Safe Mode off (configuration is possible), the controller freezes for 2 seconds.
* When you turn Safe Mode back on (you can no longer configure), the controller freezes for 4 seconds to distinguish. You can also just unplug and plug the controller back in to ensure that you are back in Safe Mode.

# Display Software Version - AZ + Du

* The C-stick will display the software version in Melee units as if it were not preceded by the "0."
  * The Y-axis will show the tens and ones digits. In this case, it would be 25.
  * The X-axis will show the thousands and hundreds digits. In this case, it would be 0.
* You must use Smashscope to see this numerically.

# Controller Reset - ABZ+Start

* **Use this if you are upgrading from an older software version or have messed up your settings in some way.**
* **You need to turn off Safe Mode in order to reset.**
* This will reset all the controller settings except for stick calibration. This includes snapback filtering, analog delay, offsets, and button remapping.
* There is a hidden hard reset option that will also erase the stick calibration, but we are not publishing the button combination because it's unhelpful almost all of the time. Ask the devs in the Discord what it is if you really need this.

# Toggle Auto-Initialize - ABLR+Start

* When you turn it on, both sticks will point up and to the right. When you turn it off, both sticks will point down and to the left.
* If you are positive that both of your sticks are calibrated well, you can use this to avoid the need to press B when plugging the controller in.
* If calibration ever gets wonky, you need to disable this, then recalibrate.
* This automatically gets turned off when you:
  * Recalibrate: if you mess up the calibration then the controller won't initialize correctly and it'll be hard to calibrate properly
  * Reset: if you reset it returns everything to defaults including this setting.

# Rumble Configuration - XY + Du/Dd

* Rumble is only available on boards version 1.2 or later. This command will do nothing for earlier boards.
* Press XY + D-pad Up/D-pad Down to increase or decrease the rumble strength.
* There are settings from 0-7.
  * 5 is roughly equivalent to an OEM controller's rumble.
  * 0 turns off rumble entirely.
* Press BXY (without pressing A) to show the current rumble setting on the C-Stick.

# Analog Stick Calibration - AXY+L

[Basic PhobGCC Analog Stick Calibration - YouTube](https://www.youtube.com/watch?v=rkgtqwIE8Iw)

[PhobGCC Analog Stick Calibration Guide - YouTube](https://www.youtube.com/watch?v=nUbpmkcleF8)

[PhobGCC Notch Calibration Guide - YouTube](https://youtu.be/hscmtzy7dqs)

* Stick calibration has two phases: measurement and notch adjustment.
* If you’ve already calibrated the stick and just want to adjust notches, you can skip the measurement phase and immediately begin notch adjustment by pressing Start at any time during the measurement phase.
* Calibrating the either stick turns off Auto-Initialize.

## Measurement Phase

* During the measurement phase, if the stick started off uncalibrated (for example, if this is the first time you are calibrating the controller, or if you replaced the stickbox or magnets), then the Analog Stick will still behave wonky. This is normal.
* The C-Stick will alternate between center and positions along the rim. First it will have you measure the cardinal directions (right, up, left down), then the 45 degree diagonals, then it will allow you to measure one notch in each eighth segment of the circle.
  * If the C-stick is not doing this, then you have initialized the controller incorrectly.
* To measure, **hold** the stick in the indicated notch, then press either L or R to go to the next step.
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
* The scale goes from 0-10, and defaults to 4.
  * 0 completely disables the Smart Snapback Filter. This removes the rise time improvements, hurting dashdancing on the X axis, and you will have snapback.
  * 4-10 is equivalent to 1-7 on 0.22-0.23 and 0-6 on v0.21.
  * Sticks usually need a setting of 4-7. 9+ is for special situations such as metal stick caps or lighter spring weights.
* Press L+Start+D-pad Down to see the current smart snapback filter values on each axis of the Analog Stick.
  * At the same time, you can see the current axis smoothing values on the C-Stick.

# Analog Stick Axis Smoothing Adjustment

The Analog Stick Axis Smoothing is just a simple low-pass filter similar to a capacitor on a vanilla Gamecube controller. Increasing this setting slightly reduces responsiveness. If you have the Smart Snapback Filter disabled, you can use this to suppress snapback.

* Press L + (A/B) + To increase or decrease (D-pad Up/D-pad Down)
  * A corresponds to the X axis, B corresponds to the Y axis.
  * Example: LA+Du increases the X-axis Delay, LB+Dd decreases the Y-axis delay.
  * When you change this setting, the current axis smoothing settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-9, and defaults to 0.
  * Single-Motion Ledgedashing: ~5 on X-axis and 0 on Y-axis
  * Alternatively, set the Smart Snapback adjustment on the Y-axis to 0 and set the Axis Smoothing to 0 for both X and Y-axes. This gives stronger single-motion ledgedashes but you may experience Y-axis snapback.
* Press L+Start+D-pad Down to see the current axis smoothing values on each axis of the C-Stick.
  * At the same time, you can see the current smart snapback filter values on the Analog Stick.

# C-Stick Snapback Adjustment

The C-Stick Snapback Filter is actually a low-pass filter similar to the Analog Stick Axis Smoothing that has dual purposes, for reducing the chance of getting the wrong move and for suppressing snapback.

* Press R + Your Axis (X/Y) + To increase or decrease (D-pad Up/D-pad Down)
  * Example: RX+Du is increasing the X-axis Snapback, RY+Dd is decreasing the Y-axis snapback.
  * When you change this setting, the current snapback filter settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-9 and defaults to 0.
* To reduce the chance of getting the wrong move, increase the value on the axis that you don’t want, and decrease the value on the axis you do want.
* To suppress snapback on an axis, use a somewhat high value here (start with 7).
* Press R+Start+D-pad Down to see the current snapback filter values on each axis of the Analog Stick.
  * At the same time, you can see the current offset values on the C-Stick.

# C-Stick Offset

* Press R + (A/B) + To increase or decrease (D-pad Up/D-pad Down)
  * A corresponds to the X-axis, B corresponds to the Y-axis.
  * Example: LA+Du is increasing the C-Stick X Offset, LB+Dd is decreasing the C-Stick Y Offset.
  * When you change this setting, the current offset settings are shown as the numerical coordinates of the C-Stick.
* This shifts the global coordinate C-Stick coordinate, not delay. This is for hitting downward angled forward smashes, for example.
* Press R+Start+D-pad Down to see the current offset values on each axis of the C-Stick.
  * At the same time, you can see the current snapback filter values on the Analog Stick.

# Z-Jump

* Press XZ+Start to swap X and Z. This will swap back if previously swapped.
* Press YZ+Start to swap Y and Z. This will swap back if previously swapped.
* Press AXY+Z to reset to the default.

# Analog Trigger Modes

* Press ZL+Start to cycle through the trigger modes for L-trigger.
* Press ZR+Start to cycle through the trigger modes for R-trigger.
* There are 6 trigger modes:
  * Mode 1: Standard behavior with the analog slider active and a digital press at the bottom of the travel. Smashscope will show red bars and then turn blue on digital press.
  * Mode 2: Digital-only, where the analog slider is disabled. Smashscope will show nothing. You will still get LRA+Start in this mode.
  * Mode 3: Analog-only, where the digital press is disabled. You will still get LRA+Start in this mode. Smashscope will show only red bars.
  * Mode 4: Trigger-Plug Emulation, where the analog slider will only go up to the user-defined max (see [below](analog-trigger-value-adjustment---zlzr--dudd)) and then allow you to input a digital value. Smashscope will show red bars that rise but stop at a predefined value, and they will turn blue on digital press.
  * Mode 5: Analog Value At Digital, where the analog slider is disabled and the digital press will result in a user-defined analog value (see [below](analog-trigger-value-adjustment---zlzr--dudd)). You will still get LRA+Start in this mode. Smashscope will only show red bars.
  * Mode 6: Analog and Digital Value at Digital, where the analog slider is disabled and the digital press will result in a user-defined analog value (see below) and a digital input. Smashscope will show only blue bars.
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

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
