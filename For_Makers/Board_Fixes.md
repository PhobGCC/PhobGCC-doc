# Board Fixes

This is a document with illustrations that show you suggested fixes for some issues seen on PhobGCC Boards

Please ask in the [PhobGCC Discord Server](https://discord.gg/yrpUu7mgzm) if you have any questions.  

## Full Duplex - PhobGCC v1.0/1.1

Bridge the third and fourth pins on the top left of the Teensy 3.2 (as seen below) and flash the proper Diode_Short version of the firmware

![Full Duplex Picture](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/BoardFixPics/full_duplex.jpg?raw=true)

## L-stick Hall Sensor Joints - PhobGCC v1.X

Due to the use of leaded solder in the construction of PhobGCC v1.Xs, the left trigger guard applies significant pressure to the hall effect sensor joints.
There are 3 fixes that resolve the issue.

Temporarily - Simply remove the left trigger guards

Take out the two black screws holding it in place and remove it. This is temporary-only because the trigger guard is important to trigger stability.


Filing - File down the trigger guard at the circled points

Take out the two black screws holding it in place and remove the trigger guard. Proceed to file down the left trigger guard in the circled locations below to ensure that the joints are not being stressed.

![Trimmed TG HES](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/BoardFixPics/hes_tg.jpg?raw=true)


3D Print - Either 3D print yourself or order the 3D printed bracket from a service such as JLC and swap it output

**[INSERT LINK TO FILE HERE]**

## L-Stick Interference with L-slider - PhobGCC v1.X

As a result of the hall effect sensor placement, the analog stick is positioned upside down. This causes the notch in the skirt of the analog stick to not line up with the solder joint of the analog slider.
There are 3 fixes that resolve the issue.

During Assembly - Trim the pin flush with the hole and solder it so that the solder wets into the hole. This should result in a flat board on top where it does not interfere with the analog stick.

After Assembly - trim the pin flush and reflow the solder so that it wets into the hole.

Cutting - Trim the skirt as the other side so that it does not interfere with the solder joint of the analog slider. You want to replicate the cut-out that is already on the analog stick.

## L-trigger JST Interference

The placement of the L trigger holes is too high and interferes with the L trigger guard.
There are 3 fixes that resolve the issue

Temporarily - Simply remove the left trigger guards

Take out the two black screws holding it in place and remove it. This is temporary-only because the trigger guard is important to trigger stability.


Filing - File down the trigger guard at the bottom of the left screw post so that it is flush with the hole as shown below. You only need to remove 0.25mm of material

![INVENTOR EXAMPLE JST TG](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/BoardFixPics/jst_tg.png?raw=true)

![Trimmed TG JST](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/BoardFixPics/jst_tg2.jpg?raw=true)
