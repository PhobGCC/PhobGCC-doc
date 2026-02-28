**NOTE: This is for firmware version 0.31.**

For older versions, use the appropriate calibration document [from here](../LEGACY.md).

For later development versions of the software that have not yet been released, search for “Current Commands List” in the `common/phobGCC.h` file to see the commands for that version as they may have changed.

**NOTE 2: The controller starts in safe mode! To make any changes you must disable it first!**

We strongly recommend using GCC Test Suite (GTS) either on a Wii or vanilla Dolphin for all of this. Slippi will not run GTS.
You can get GTS [from here](https://github.com/greenwave-1/GTS/releases/latest).

Previously we recommended SmashScope and Uncle Punch Training Mode 3.0 (now Training Mode Community Edition), but it is much easier to verify correct calibration on GTS.

# PhobVision

If you have a PhobGCC 2 with PhobVision installed and a CRT available, it's highly recommended to calibrate and configure using PhobVision.

PhobVision has menu options for all of these settings, and it walks you through the stick calibration process to minimize the chance of user error.

To use PhobVision, plug a 3.5mm TRRS to RCA cable compatible with Sony camcorders into the jack on the controller and the composite video input on a CRT television, hold Z on the controller, and plug the controller's GCC cable into a powered-on console or adapter.
Navigate with the D-pad, select an item by pressing A, and back out by holding B. 

Some menu pages are not complete yet, and on these you will be greeted by an "Under Construction" sign.

Full PhobVision manual available [here](/For_Users/Phobvision_Guide_Latest.md).

# Initial Setup

Do this if the controller has never been calibrated before, or if it has been flash nuked or hard reset.
If the controller is functioning normally, this has already been performed and you do not need to repeat the full process.

## Wii Initial Setup

* Turn on the Wii.
* Plug in the controller.
* Start GCC Test Suite.
* Navigate to Controller Test (using the D-Pad).
* Tap B (do not hold) to initialize the sticks.
* Verify that the Origin XY and C-Origin XY are both (-001, -001).

## Dolphin Initial Setup

* Install the latest Dolphin emulator (do not use Slippi Dolphin).
* Set up the controller menu so that Port 1 is GameCube Adapter for Wii U.
* Plug in the controller. DO NOT PRESS B.
* Begin emulation (run GTS_GC.dol).
* Navigate to Controller Test (using the D-Pad).
* Tap B (do not hold) to initialize the sticks.
* If using an OEM or Mayflash adapter or older Lossless adapters, verify that Origin XY and C-Origin XY are both (-1, -1). If using a HHL GC Pocket adapter or a newer firmware version of Lossless, the origins should be zero.

## Controller Setup
* Verify that the sticks are both pointing slightly up and to the right. At neutral, they should be somewhere in the range of 0.3 to 0.6. When moved, they should respond very slightly, going in all four directions. If this is not the case, there is a hardware problem that must be resolved before proceeding with calibration.
* Toggle off Safe Mode by holding **AXY+Start** for until the sticks jump to the extreme top right, then immediately letting go.
* Calibrate the left analog stick with **AXY+L**, following [this procedure](#analog-stick-calibration---axyl). The left stick should now behave normally.
* Calibrate the right analog stick with **AXY+R**, following [this procedure](#C-Stick-calibration---axyr). The right stick should now behave normally.
* Adjust snapback filtering to reduce snapback to roughly 20 or less in each direction. If snapback won't be fully corrected at maximum filtering strength, add some thick silicone grease into the stickbox to slightly reduce the unfiltered snapback to within the range of the snapback filter.

# Activating the Analog Sticks - B

* After plugging in the controller, press **B** to activate the analog sticks. Before this, the sticks are hardcoded to be centered so that the game properly zeroes.
* If you are playing using Dolphin/Slippi, you must first have Dolphin running, then have the controller plugged in before starting the game.
  * By enforcing that the sticks are centered when starting the game, this ensures that you get 1.0 cardinals and accurate notches.
  * If you are using a Mayflash adapter, you must plug in both USB connectors for the controller to register in Dolphin/Slippi.
* This is necessary because if the sticks are miscalibrated, it will be very difficult to correctly calibrate them with the sticks incorrectly zeroed.
  * Once the sticks are calibrated and you are sure they are reliably zero when released, you can disable this. See [here](#toggle-auto-initialize---axyz).
  * But each time you reset or calibrate, you will once again be required to press B.

# Making Changes On PhobGCC

* **All commands use the physical buttons specified, regardless of any remapping that has occurred**.
  * L and R buttons must have electrically functional digital press, regardless of trigger modes that disable the digital press.
* Most of the time, when you give the PhobGCC a command, the Analog Stick and C-Stick will freeze pointing to the top right 127/127.
  * For binary commands, it'll hold for two seconds.
  * For numerical values, it'll hold for 0.75 seconds to make it faster to change.
  * For trigger offsets, which have a wide numerical range, it will only hold for 0.1 second.
* If you're in Melee without input visualization tools, you will see your character roll to the right to indicate this, or you'll see the menu tilt due to the C-Stick.

![Sticks pointing up and to the right, triggers pressed](/For_Users/Phob_Calibration_Guide_v0.20_Images/FreezeSticks_GTS.png)

# Safe Mode Toggle - AXY+Start

* As a reminder, all commands including this one utilize the hardware buttons specified, regardless of remapping.
* To turn off Safe Mode, you have to hold the key combination for about 1 second, to prevent accidental activation.
  * Turning Safe Mode back on has no delay.
* This is required to make any changes on the controller, to prevent you from reconfiguring things during gameplay.
* Even if you haven't pressed B, this will wake up the sticks.
* When you turn Safe Mode off (configuration is possible), the controller freezes for 2 seconds.
* When you turn Safe Mode back on (you can no longer configure), the controller freezes for 4 seconds to distinguish. You can also just unplug and plug the controller back in to ensure that you are back in Safe Mode.
* If either L or R digital is active, this command will not work (to prevent safe mode toggling when doing PM salty runback).

# Display Software Version - AZ + Du

* The C-Stick will display the software version in raw units as if it were not preceded by the "0."
  * The Y-axis will show the tens and ones digits. In this case, it would be 31.
  * The X-axis will show the thousands and hundreds digits. In this case, it would be 0.
* You must use GTS to see this numerically.
* If the controller doesn't show 31, then you need to reference an older configuration document [here](LEGACY.md).
  * If it doesn't respond to this command at all, then it's likely the version is 0.23 or lower and you should [upgrade the controller firmware](/For_Users/Phob_Programming_Guide.md).

# Controller Reset - Hold ABZ then press Start

* **Use this if you are upgrading from an older software version or have messed up your settings in some way.**
* **You need to turn off Safe Mode in order to reset.**
* This will reset all the controller settings except for stick calibration. This includes snapback filtering, waveshaping, analog delay, offsets, and button remapping.
* There is a hidden hard reset option that will also erase the stick calibration, but we are not publishing the button combination because it's unhelpful almost all of the time. Ask the devs in the Discord what it is if you really need this.

# Toggle Auto-Initialize - AXYZ

* When you turn this on, both sticks will briefly point up and to the right. When you turn it off, both sticks will briefly point down and to the left.
* If you are positive that both of your sticks are calibrated well, you can use this to avoid the need to press B when plugging the controller in.
* If calibration ever gets wonky, you need to disable this, then recalibrate.
* This automatically gets turned off when you:
  * Recalibrate: if you mess up the calibration then the controller won't initialize correctly and it'll be hard to calibrate properly
  * Reset: if you reset it returns everything to defaults including this setting.

# Rumble Strength Configuration - AB + Du/Dd

* Rumble is only available on boards version 1.2 or later. This command will do nothing for earlier boards.
* Press **AB** + **D-pad Up/Down** to increase or decrease the rumble strength.
* There are settings from 0-11.
  * 9 is roughly equivalent to an OEM controller's rumble.
  * 0 turns off rumble entirely.
* Press **AB+Start** to show the current rumble setting on the C-Stick.

# Tournament Toggle Configuration - Z + Start + D-pad Up

This command was changed in version 0.31 to prevent accidental activation.

* Tournament Toggle reduces the chance of misinputs of either Start or D-Pad Up (taunt) during gameplay.
* Press **Z + Start + D-pad Up** to switch to the next mode. The mode will be shown on the C-Stick.
* There are 6 different modes, ranging from 1 to 6.
  * Mode 1: Default behavior: both buttons respond immediately.
  * Mode 2: D-Pad Up must be held for 1.5 seconds to activate.
  * Mode 3: D-Pad Up is disabled entirely.
  * Mode 4: Start must be held for 1.5 seconds to activate.
  * Mode 5: Start and D-Pad Up both must be held for 1.5 seconds to activate.
  * Mode 6: D-Pad Up is disabled entirely and Start must be held for 1.5 seconds to activate.
* You can bypass the lockout or delay. For D-Pad Up, holding D-Pad Up and then pressing Start will output only D-Pad Up. For Start, holding Start and pressing D-Pad Down will output only Start.

# Raw Stick Output - L+R+Du/Dd

This command is new in version 0.31.

Raw stick output isn't a setting, but a temporary mode that helps diagnose stick issues.
Instead of the remapped stick output, it shows the unprocessed sensor values in a range from 0 to 100.

Enable it with **LR** + **D-pad Up** and disable it with **LR** + **D-pad Down**.

Alternatively, if you hard reset the controller (or have never calibrated it before) any uncalibrated sticks will default to raw stick output.

With the sticks centered, Phob 2s and some Phob 1.2s should be close to 50. Phob 1.1s and most Phob 1.2s should be roughly 30.

When you move a stick horizontally or vertically, the raw output should change only in that axis by at least 10 in each direction.

If this isn't the case, then the hardware likely needs some sort of repair.

# Analog Stick Calibration - AXY+L

Before you begin calibration, you must verify that the sticks are working electrically and that GCC Test Suite is initialized properly.

Check that the Origin XY and C-Origin XY are both (-001, -001).

Put the controller into Raw Stick Output mode and verify that the sticks are centered roughly on 30 or 50, and are sensitive enough to stick motion in all axes.

[Basic PhobGCC Analog Stick Calibration - YouTube](https://www.youtube.com/watch?v=rkgtqwIE8Iw)

[PhobGCC Analog Stick Calibration Guide - YouTube](https://www.youtube.com/watch?v=nUbpmkcleF8)

[PhobGCC Notch Calibration Guide - YouTube](https://youtu.be/hscmtzy7dqs)


* Stick calibration has two phases: measurement and notch adjustment.
  * During the Measurement Phase, you have the controller record the physical location of the corners of the gate and any modder-added notches.
  * During the Notch Adjustment Phase, you can tweak the output angles of the notches you measured.
  * You **must** complete both measurement and notch adjustment for the setting to be saved.
* If you’ve already calibrated the stick and just want to adjust notches you have already measured, you can skip the measurement phase and immediately begin notch adjustment by pressing Start at any time during the measurement phase.
* Calibrating either stick turns off Auto-Initialize.

## Measurement Phase

The first phase involves having the controller record the positions of the physical gate corners and notches as calibration reference points.

When in the measurement phase, the C-Stick's output will alternate between the center and a position along the rim, starting with the cardinal directions.

The C-Stick's output shows what notch, if present, you are to measure.

The control stick output will show the output of the previous calibration. Depending on the previous calibration, this may be accurate, inaccurate, freak out randomly, or in the case of an uncalibrated PhobGCC 2.0, it will be mostly pegged to (125,125). The output you see here has no bearing on the results.

* If the C-Stick is centered, let go of the control stick and press either **L**, **R**, or **A** to measure that position.
* If the C-Stick is not centered, **hold the physical analog stick into the notch indicated by the C-Stick's output** and press **L**, **R**, or **A** to measure that position.
  * Make sure to enter the notch from the direction you would during gameplay.
* If you don't have a notch at the position indicated by the C-Stick, **let go of the stick** and press **L**, **R**, or **A**.
* **You must measure all four cardinal directions (East, North, West, South) and all four diagonal directions** or calibration will not work.
* The first time you calibrate a controller that has modder-added notches, it is highly recommended to skip all the modder added notches and start with only the 8 primary directions.
* If you think you messed up a measurement, you can go back to a previous notch measurement by pressing **Z**. It'll go back to measuring the center immediately before a given notch.
* Once you finish measuring all the notches (32 presses of **L/R/A**), the stick should behave normally. **You are not done calibrating.** Proceed to the [Notch Adjustment Phase](#notch-adjustment-phase) below.
  * If it does not behave as expected, see Measurement Phase Troubleshooting below.

### Measurement Phase Troubleshooting

* If the Analog Stick's output is not accurate during this phase, do not worry. The previous calibration does not matter.
* If the C-Stick is not alternating between being centered and circling all the way around the rim, and you are using Dolphin to calibrate, you need to reinitialize Dolphin by making sure that Auto-Initialize is off, unplugging and replugging, restarting Dolphin, and then tapping **B**.
* If after the measurement phase is done, the stick has one or two sectors that jump into another quadrant randomly, you probably mis-measured a notch. Mash **L**, **R**, or **A** a bunch to finish the calibration and start again.
* If after the measurement phase is done, the stick output is completely haywire and jumping all over the place randomly, you may have let go of the stick before pressing **L**, **R**, or **A**. Mash **L**, **R**, or **A** a bunch to finish the calibration and start again.
  * Alternatively, if you have Firefox notches, try calibrating the main 8 directions only to completion, then go back and calibrate all of them.
* If after the measurement phase is done, the stick output is backwards on one or both axes, you probably were trying to make the stick *output* match the C-Stick, instead of moving the *physical* stick into the notch indicated by the C-Stick. Mash **L**, **R**, or **A** a bunch to finish the calibration and start again.

## Notch Adjustment Phase

After the measurements are complete, this phase lets you adjust exactly where the non-cardinal notches are mapped to.

When in the notch adjustment phase, the C-Stick will stay along the rim and rotate along from notch to notch, starting with the diagonals.

This indicates which notch is currently being adjusted.

* The Analog Stick position does not affect notch adjustment. The output is a live preview of how the calibration will be with your given adjustments.
* The C-Stick points at the notch that is currently up for adjustment.
* Press **X** or **Y** to shift the output of the notch clockwise or counterclockwise, respectively.
  * You won't see anything change if you don't put the stick into the notch that's being adjusted.
  * Make sure to enter the notch from the same direction you would during gameplay when checking the output.
* To reset to an undistorted position for the notch, press **B**. The C-Stick will be displaying the position that was measured.
* Press **L**, **R**, or **A** to move to the next notch.
* To go back to a previous notch, press **Z**. You cannot go back to the measurement phase.

When the C-Stick's output returns to center, the stick calibration is now saved.

### Notch Adjustment Troubleshooting

* If your notch coordinates are very inconsistent, try twisting the stick like a knob and see if the origin value shifts. If so, try gently tightening the screws holding the stickbox down; they may be loose.
* If your notch coordinates have slightly different values when approaching straight from center compared to rolling clockwise or counterclockwise along the rim, this is normal (within two or three values).
* If your notch coordinates cannot be adjusted to the desired value, check the C-Stick's coordinates to see if it's too far from the desired value. You can try recalibrating from the start and measuring it again, but it may not help. See a modder to get your notches adjusted if needed.

# C-Stick Calibration - AXY+R

This process is exactly like Analog Stick Calibration, but instead, the Analog Stick moves to show you how to move the C-Stick.

# Analog Stick Smart Snapback Adjustment - A + X/Y + Du/Dd

Increasing the Analog Stick Smart Snapback Filter adjustment doesn’t hurt responsiveness of the stick when moving away from the center. Increasing the value of this filter only makes it return to center more slowly.

* Press **A** + **X/Y** for your axis + **D-pad Up/Down** to increase/decrease.
  * Example: **AX+Du** suppresses X-axis snapback more, **AY+Dd** suppresses Y-axis snapback less.
  * When you change this setting, the current snapback filter settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from -10 to +10, and defaults to 4.
  * 0 completely disables the Smart Snapback Filter. This removes the rise time improvements, hurting dashdancing on the X axis, and you will have snapback.
  * Positive values have strong rise time reduction that promotes fast tilt inputs into smash inputs.
    * Higher values have stronger snapback suppression.
    * 4-10 is equivalent to 1-7 on v0.22-0.23 and 0-6 on v0.21.
  * Negative values are a new filter that minimizes rise time reduction and makes the stick behave more like an OEM controller.
    * More negative values have stronger snapback suppression.
  * Sticks usually need a setting of 4-7. 9+ is for special situations such as metal stick caps or lighter spring weights.
  * If you have an OEM stick cap and snapback is still a problem, try setting the snapback filter to 0 and check how far the snapback goes. If it goes past 70, you may have to tame snapback by adding a bit of grease to the stickbox.
* Press **L+Start** to see the current Smart Snapback filter values on each axis of the Analog Stick.
  * At the same time, you can see the current axis smoothing values on the C-Stick and Waveshaping values on the triggers.

# Analog Stick Waveshaping Adjustment - L + X/Y + Du/Dd

The Waveshaping filter stops the output from moving while the stick axis is moving quickly.
This setting controls the threshold where that transition occurs.

This can be used to make pivots or short flicks behave more like a good OEM controller.
This enhancement to pivots and flicks works best with an OEM spring or a Smalley L2 spring, not with lighter "slickbox" style springs, but you can crank it up and make it work at the expense of responsiveness.

* Press **L** + **X/Y** for your axis + **D-pad Up/Down** to increase/decrease.
  * Example: **LX+Du** strengthens the effect on the X-axis, **LY+Dd** reduces the effect on the Y-axis.
  * When you change this setting, the current Waveshaping filter settings are shown as the numerical coordinates of the C-stick.
* The scale goes from -24 to +24, and defaults to 0.
  * 0 disables Waveshaping entirely.
  * Positive Waveshaping behaves like mild PODE.
  * Negative Waveshaping behaves like strong PODE. Strong negative Waveshaping in combination with zero Smart Snapback suppression this can be used to mimic OEMs that cannot empty pivot while suppressing all snapback. Small negative Smart Snapback can be used to attenuate this effect.
* Press **L+Start** to see the current Waveshaping filter values on the L and R trigger analog values.
  * At the same time, you can see the current Smart Snapback filter values on the Analog Stick and the axis smoothing values on the C-Stick.

# Analog Stick Axis Smoothing Adjustment - R + X/Y + Du/Dd

The Analog Stick Axis Smoothing is just a simple low-pass filter similar to a capacitor on a vanilla Gamecube controller.
Increasing this setting slightly reduces responsiveness.
If you have the Smart Snapback Filter disabled, you can use this to suppress snapback.

* Press **R** + **X/Y** for your axis + **D-pad Up/Down** to increase/decrease.
  * Example: **RX+Du** increases the X-axis Delay, **RY+Dd** decreases the Y-axis delay.
  * When you change this setting, the current axis smoothing settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-18, and defaults to 0.
  * Single-Motion Ledgedashing: ~5 on X-axis and 0 on Y-axis
  * Alternatively, set the Smart Snapback adjustment on the Y-axis to 0 and set the Axis Smoothing to 0 for both X and Y-axes. This gives stronger single-motion ledgedashes but you may experience Y-axis snapback.
  * 9 in versions before 0.31 was changed to 18, adding increased precision between 8 and the former 9.
* Press **L+Start** to see the current axis smoothing values on each axis of the C-Stick.
  * At the same time, you can see the current Smart Snapback filter values on the Analog Stick and Waveshaping values on the triggers.

# Analog Stick Scaling Adjustment - L + A + Du/Dd

The Analog Stick Scaling setting allows the user to adjust what value the stick can reach at the edge of the gate.
Super Smash Bros. Melee has a unit circle that ranges from -80 to +80, OEM Gamecube controllers range from roughly -100 to +100, and the GCC protocol allows for -128 to +127.
The PhobGCC hard limits its own stick outputs to a range from -125 to +125, but this setting corresponds to what you get immediately after calibration.

* Press **L** + **A** + **D-pad Up/Down** to increase/decrease.
  * Example: **LA+Du** increases the value at the rim of the analog stick.
  * When you change this setting, the current analog stick scaling setting is shown as the numerical coordinates of the analog stick.
* The scale goes from 90-110, and defaults to 100.
  * This changes the physical distance to the rim of the Melee unit circle.
  * 100 will behave identically to previous firmware versions that do not feature stick scaling.
  * In 0.31 the adjustment range was reduced to be rules-compliant.

# Analog Stick Cardinal Snapping Adjustment - R + A + Du/Dd

The Analog Stick Cardinal Snapping setting allows the user to adjust the width of the window around the cardinals around which the stick will snap to perfect 1.0.
This is mainly for use on vanilla Melee or versions of UCF v0.80 and prior, as all nonnegative values will be overwritten by UCF v0.84's own snapping algorithm (which corresponds to a setting of 6 here).

* Press **R** + **A** + **D-pad Up/Down** to increase/decrease.
  * Example: **RA+Du** increases the snapping range of the analog stick.
  * When you change this setting, the current analog stick cardinal snapping setting is shown as the numerical coordinates of the analog stick.
* The scale goes from -2 to 6, and defaults to 6.
  * At -2, the stick will snap 7 units away from the cardinal so that the stick cannot output 1.0 cardinals at all, including on UCF v0.84.
  * At -1, the stick will snap 1 unit away from the cardinal so that the stick cannot output 1.0 cardinals for Zelda teleport on UCF v0.84.
  * At 0, the stick will not snap to cardinals at all. This is equivalent to OEM cardinal behavior.
  * Between 1-6, the stick will snap to the cardinal from that far away in both positive and negative directions.

# C-Stick Snapback Adjustment - AZ + X/Y + Du/Dd

The C-Stick Snapback Filter is actually a low-pass filter similar to the Analog Stick Axis Smoothing that has dual purposes, for reducing the chance of getting the wrong move and for suppressing snapback.

* Press **AZ** + **X/Y** for your axis + **D-pad Up/Down** to increase/decrease.
  * Example: **AZX+Du** increases the X-axis snapback suppression, **AZY+Dd** decreases the Y-axis snapback suppression.
  * When you change this setting, the current filter settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from 0-18 and defaults to 0.
  * 9 in versions before 0.31 was changed to 18, adding increased precision between 8 and the former 9.
* To reduce the chance of getting the wrong move, increase the value on the axis that you don’t want, and decrease the value on the axis you do want.
* To fully suppress snapback on an axis, use a somewhat high value here (start with 7).
* Press **R+Start** to see the current snapback filter values on each axis of the Analog Stick.
  * At the same time, you can see the current offset values on the C-Stick and Waveshaping values on the triggers.

# C-Stick Waveshaping Adjustment - LZ + X/Y + Du/Dd

The Waveshaping filter stops the output from moving while the stick axis is moving quickly.
This setting controls the threshold where that transition occurs.

* Press **LZ** + **X/Y** for your axis + **D-pad Up/Down** to increase/decrease.
  * Example: **LZX+Du** increases the effect on the X-axis, **LZY+Dd** decreases effect on the Y-axis.
  * When you change this setting, the current filter settings are shown as the numerical coordinates of the C-Stick.
* The scale goes from -24 to +24, and defaults to 0.
  * 0 disables Waveshaping entirely.
  * Positive Waveshaping behaves like mild PODE.
  * Negative Waveshaping behaves like strong PODE. In combination with zero snapback suppression this is an alternate, highly effective way to eliminate all snapback, while helping make quick flicks more likely to be polled properly.
* Press **R+Start** to see the current Waveshaping filter values on the L and R trigger analog values.
  * At the same time, you can see the current snapback filter values on the Analog Stick.

# C-Stick Offset

* This feature was removed in v0.29.

# C-Stick Scaling Adjustment - L + A + Z + Du/Dd

The C-Stick Scaling setting allows the user to adjust what value the stick can reach at the edge of the gate.
Super Smash Bros. Melee has a unit circle that ranges from -80 to +80, OEM Gamecube controllers range from roughly -100 to +100, and the GCC protocol allows for -128 to +127.
The PhobGCC hard limits its own stick outputs to a range from -125 to +125, but this setting corresponds to what you get immediately after calibration.

* Press **L** + **A** + **Z** + **D-pad Up/Down** to increase/decrease.
  * Example: **LAZ+Du** increases the value at the rim of the C-Stick.
  * When you change this setting, the current C-Stick scaling setting is shown as the numerical coordinates of the C-Stick.
* The scale goes from 90-110, and defaults to 100.
  * This changes the physical distance to the rim of the Melee unit circle.
  * 100 will behave identically to previous firmware versions that do not feature stick scaling.
  * In 0.31 the adjustment range was reduced to be rules-compliant.

# C-Stick Cardinal Snapping Adjustment - R + A + Z + Du/Dd

The C-Stick Cardinal Snapping Adjustement allows the user to adjust the width of the window around the cardinals around which the stick will snap to perfect 1.0.
This is mainly for use on vanilla Melee or versions of UCF v0.80 and prior, as all nonnegative values will be overwritten by UCF v0.84's own snapping algorithm (which corresponds to a setting of 6 here).

* Press **R** + **A** + **Z** + **D-pad Up/Down** to increase/decrease.
  * Example: **RAZ+Du** increases the snapping range of the C-Stick.
  * When you change this setting, the current C-Stick cardinal snapping setting is shown as the numerical coordinates of the C-Stick.
* The scale goes from -1 to 6, and defaults to 6.
  * At -1, the stick will snap *away* from the cardinal so that the stick cannot output 1.0 cardinals at all, including on UCF v0.84.
  * At 0, the stick will not snap to cardinals at all. This is equivalent to OEM cardinal behavior.
  * Between 1-6, the stick will snap to the cardinal from that far away in both positive and negative directions.

# Analog Trigger Modes AB + L/R

Modes 8 and 9 are new in version 0.31.

* Press **AB + L** to cycle through the trigger modes for L-trigger.
* Press **AB + R** to cycle through the trigger modes for R-trigger.
* Press **L+R+Z** to view all trigger settings without changing anything.
  * Left trigger mode is on the left stick X axis.
  * Right trigger mode is on the right stick X axis.
  * Left trigger offset is on the left stick analog.
  * Right trigger offset is on the right stick analog.
* There are 9 trigger modes:
  * Mode 1: Standard behavior with the analog slider active and a digital press at the bottom of the travel. GTS will show red bars and then turn blue on digital press.
  * Mode 2: Digital-only, where the analog slider is disabled. GTS will highlight the outline on digital press.
  * Mode 3: Analog-only, where the digital press is disabled. GTS will show only red bars.
  * Mode 4: Lightshield then Digital, where the analog slider will only go up to the user-defined max (see [below](#analog-trigger-value-adjustment---b--lr--dudd)) and then allow you to input a digital value. GTS will show red bars that rise but stop at a predefined value, and they will turn blue and max out on digital press.
  * Mode 5: Analog Value At Digital, where the analog slider is disabled and the digital press will result in a user-defined analog value (see [below](#analog-trigger-value-adjustment---b--lr--dudd)). GTS will only show red bars.
  * Mode 6: Analog and Digital Value at Digital, where the analog slider is disabled and the digital press will result in a user-defined analog value (see below) and a digital input. GTS will show only blue bars.
    * This is useful when using a controller with trigger plugs for Smash Ultimate and other games that disregard the digital press.
  * Mode 7: Hairtrigger Analog, where the analog value is multiplied between one and threefold based on the user-defined analog value (see [below](#analog-trigger-value-adjustment---b--lr--dudd)). The digital output is unchanged.
    * The greater the value, the higher the multiplier. This is useful for Smash Ultimate so you don't need to push down as far to activate your shield.
  * Mode 8: Lightshield on Analog: like mode 4 but with no digital output whatsoever.
  * Mode 9: Hairtrigger Lightshield Then Digital: like mode 4 but with 2.5x more sensitive analog. This is useful for using analog with short travel triggers like keyboard switch triggers.
* When changing settings, the trigger modes are displayed as Analog Stick values for the L-trigger and C-Stick values for the R-trigger.
* Regardless of trigger modes (or remaps), L+R+A+Start will function and output full analog and digital on the triggers. This can be used to verify that the hardware is functioning properly.

# Analog Trigger Value Adjustment - B + L/R + Du/Dd

* For Analog Trigger Modes 4-6, this shifts the user-defined limit for the analog value.
* For Analog Trigger Mode 7, this adjusts the scaling of the analog value from 1x at 49 to 3x at 227.
* Press **B** + your trigger (**L/R**) + **D-pad Up** to increase or D-pad Down to decrease.
  * The possible range of values goes from 49 to 227, with 49 being equivalent to Z-lightshield in Melee, the largest legal value.
  * Melee treats all values 140 and above as the strongest analog shield.
  * Ultimate only shields when the analog value is 79 or above.
  * The values are displayed on the C-Stick, with the X-axis corresponding to L and the Y-axis corresponding to R.
  * Once you cross above 100, the corresponding Analog stick axis will display 100 and the remainder of the value will be shown on the C-Stick.
  * If you configure in Uncle Punch or 20XX, the C-Stick might not reflect the actual value when the displayed coordinate is outside the Melee input circle. Confirm your settings using GTS or by checking the actual resulting trigger value.
* Press **L+R+Z** to view all trigger settings without changing anything.
  * Left trigger mode is on the left stick X axis.
  * Right trigger mode is on the right stick X axis.
  * Left trigger offset is on the left stick analog.
  * Right trigger offset is on the right stick analog.

# Full Button Remapping - B + X + Y

This replaced predetermined trigger jump remaps in version 0.31.

* You can freely swap the A, B, D-pad Up, L, R, X, Y, and Z buttons.
* Press **B + X + Y without pressing A** to initialize the remapping process, then press the buttons you want to become A, B, Du, L, R, X, Y, and Z in that order. 
  * The easy way to remember this is that they are in alphabetical order.
  * For example, if you wanted to swap just X and Z, you would press A B Du L R Z Y X.
  * Pressing already-used buttons will have no effect.
* Press **B + X + R without pressing A** to reset the remaps to default.
* Any buttons swapped with a trigger only actuate on the digital press of the trigger.
* If you swap a trigger button to a digital-only button, you should probably use Mode 5 or 6 depending on the desired analog or digital behavior.
* Remaps have no effect on any of the commands used in this document.
* Remaps also are ignored if you press L+R+A+Start using the un-remapped buttons.

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
