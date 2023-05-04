NOTE: This is for PhobGCC 2 with firmware version 0.29.

# PhobVision

PhobVision is a feature specific to PhobGCC version 2 that provides graphical configuration, calibration, and training tools built into the conttroller.

Not every PhobGCC v2 has PhobVision installed. If you're interested, ask your local modder if they can install it.

# Starting PhobVision

To start PhobVision:

1. Plug a 3.5mm TRRS to RCA video cable compatible with Sony camcorders into the controller, and plug the yellow plug into a TV composite input. You can alternately use the red plug of a 3.5mm TRS to stereo RCA audio cable.
2. Hold the Z button on the controller.
3. Plug the GCC cord into a powered-on console or GCC adapter.

If you hold Z while the controller first receives power, it will not connect to the console or adapter and instead boot into PhobVision mode where it will be outputting composite video.
Note that if the Z button is stuck, this may result in the controller never connecting to a console.

# Navigating PhobVision

Use the D-pad to navigate around, use A to select items, and hold B for 0.5 seconds to go back in the menu system.

If you change a setting, tapping B briefly will save the changes.
Continuing to hold B will cause you to back to the next higher menu level.

# Stick Calibration

When you use PhobVision to calibrate, you can follow the instructions onscreen, which should correspond with the instructions in the [PhobGCC Calibration Guide](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Calibration_Guide_Latest.md).
It doesn't have room to say it, but you can still press Start to skip the measurements and begin notch adjustment on the notches you've measured.

However, you are presented with more information than you would get while calibrating using Smashscope that may be useful.

TODO: insert picture

On the top right, it shows you what step you are at in the procedure.
During notch adjust, if you haven't measured some of the notches, then it will skip some of the steps.

On the bottom left, you see the raw measurements, in a range from 0 to 1, that the controller is reading from the Hall effect sensors.
This is useful for determining whether something is wrong with the controller.
Both axes should respond to the stick movement.
If the raw measurements for the C-Stick are always zero or one, then there is likely something wrong with the wiring. If only the C-Stick is affected, it's likely a broken connection, but if both sticks are affected, then it is likely a short affecting the shared communication bus.

At the center is the controller output that would be sent to the console, with floating point precision.
This is useful when doing notch adjustment to see where you are within each integer coordinate.

On the right is the coordinate Melee would see after the controller output gets mapped to its smaller input circle.

One more thing of note is that if you are currently calibrating, there only way to back out and cancel the calibration is to unplug the controller's GCC cable.

# Configuration

These should be fairly self-explanatory to operate.

Choose between which settings you change using (usually) left/right on the D-pad, and change the settings with up/down.
If you hold up/down for more than 10 changes, it will begin to change more rapidly.

If you have changed a setting from what was last saved, tapping B briefly will save the changes.
Continuing to hold B will cause you to back to the next higher menu level.

# PhobScope

The PhobScope tools let you view and record the controller's inputs and outputs to see the results of your calibration and configuration.

## Input Viewer

The Input Viewer shows the current stick positions of the controller, as well as the button and trigger states both before and after remapping and trigger modes are applied.

TODO: insert picture

The left side shows an octagon representing the standard 100-unit-radius stick gate, with the position of the left stick shown as a large square and the C-stick shown as a small square.

The top right shows the hardware inputs of the controller with no trigger modes, remapping, or button lockouts applied.
Below that you can see the actual output of the controller with your settings applied.
A non-active input will be gray, while an active input will be white.
The analog trigger values are shown numerically.
Occasionally there's a one or two unit discrepancy between the trigger analog values of the Hardware Inputs and Controller Outputs.
This is normal.

At the bottom are the stick coordinates output by the controller for the left stick and the C-stick.
You can see both the coordinates sent to the console and the coordinates as interpreted by Melee.

## Stickmap Plots

The Stickmap Plots let you record 100 milliseconds of stick motion in 2D and plot it overlaid on various stickmaps relevant to Melee.
This can help you perfect your stick inputs and filter configurations for in-game techniques such as ledgedashing and dashback out of crouch.

After you press Start, the recording begins after the unfiltered stick values move 10 units away from where it was when you pressed Start.

TODO: insert picture

On the left is the visualization of the stick motion.
The filtered stick output is shown as white points and the unfiltered stick motion is gray points.
The currently highlighted sample is shown as a large box for filtered output and a small box for unfiltered stick position.

On the right is the options you have for the recording, as well as a list of any buttons pressed at the time of the currently highlighted sample.
You can select from various stickmaps, choose which stick's motion to record, and scroll through the samples to see info at any recorded point of time.

At the bottom you can see the coordinates of the currently highlighted sample.

### Stickmaps

You can choose to overlay the stick motion on various stickmaps from Melee.

The regions on the edge of the Melee unit circle are extended out to edge of the full controller output space.

#### None

Self-explanatory: you only see the stick motion itself.

#### Deadzones

TODO: insert picture

This shows you the Melee deadzones.

It may be useful for practicing SDI.

#### Wait Attacks

TODO: insert picture

This shows you the stickmap for A attacks while standing in wait on the ground.

Here's a labered image of this stickmap, although the PhobVision version is made symmetrical:

TODO insert picture

#### Wait Movement

TODO: insert picture

This shows you the stickmap for movement while standing in wait on the ground.

Here's a labeled version of it:

TODO: insert picture

#### Crouch

TODO: insert picture

This shows you the stickmap for movement while crouching.

Here's a labeled version of it:

TODO: insert picture

This is particularly useful for practicing dashback out of crouch.
Check how long you spend in the lower "Remain in crouch, but if you stay here longer than 1f, Dash fails" zones.
If you spend more than 17ms, there's a chance your DBOOC will fail.
If you spend more than 33ms, then you're guaranteed to fail.
If you play on UCF 0.80 or prior, if you get unlucky and get polled by the console in the bright region at all, your dash will fail.

#### Left and Right Ledge

TODO: insert pictures

This shows you the stickmap for options while hanging from ledge (and the horizontal deadzone for your airdodge afterwards).

Here's a labeled version of it, ignoring the deadzones:

TODO: insert picture

This is useful for practicing ledgedashes.

Check your filtering settings and muscle memory for inputs to make sure you spend 17 ms or more in "drop from ledge" before inputting forward, before inputting a jump button.

## Value vs Time Plots


