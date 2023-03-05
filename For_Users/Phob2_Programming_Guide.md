# PhobGCC v2.0 Programming Guide

This is a guide to programming the teensy microcontroller on PhobGCC v2.0.

# Tools

* A computer running Windows, MacOS, or Linux.
* A screwdriver for opening your controller (Tri-point is the stock screw, but some controllers may be built with Torx or Phillips).
* A data-capable micro-USB cable.

# Controller Disassembly

Unplug and then open your controller by removing the six screws on the back located at the end of the handles, near the triggers, and behind the C-stick and D-pad.
Pull the back shell off and lay it down.
Carefully lift the board out of the shell and place the front shell down.

# Downloading and Flashing The PhobGCC v2.0 Firmware

Go to the [Releases](https://github.com/PhobGCC/PhobGCC-SW/releases) section of the PhobGCC-SW Github and download the latest available firmware. For the PhobGCC v2.0 board, you will want to download the .uf2 file as shown below:

![PHOB2_FILES](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Programming_Guide_Images/phob2_files.PNG?raw=true)

Move the .uf2 file to somewhere you can easily find it. Then unplug your controller from the adapter or console it is connected to, hold down the button on the front of the board, and plug the controller in as shown below:

**NOTE: It is easier to plug in Micro-USB first and then hold the button and plug in USB-A on your computer**

![PHOB2_PLUGIN](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Programming_Guide_Images/phob2_hold.jpg?raw=true)

You should have it appear as a mass storage device, similar to a flashdrive. Drag the .uf2 file onto the controller and it'll transfer over the firmware and disconnect.

![PHOB2_PLUGIN](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Programming_Guide_Images/Phob2_transfer.PNG?raw=true)

Once this is complete, you can unplug your PhobGCC and reassemble the controller. Continue to the calibration guide.

# Troubleshooting

## Controller not accepting any commands

Should the controller not be accepting any commands, there is a chance that the flash may have come with garbage data and it may be messing the controller up. Follow the steps below:

1. Download [This file](https://drive.google.com/file/d/15iXiLqbS9To-jfmHwR3WShfgkgc5nex1/view?usp=sharing).
2. Flash that file onto your PhobGCC v2, and **don't** disconnect the Micro-USB cable. After about 10 seconds, It'll reconnect as a mass storage device again.
3. Flash the normal firmware and proceed with calibration.


For all other issues, please refer to the PhobGCC Discord's tech support.
[PhobGCC Discord](https://discord.gg/yrpUu7mgzm)
