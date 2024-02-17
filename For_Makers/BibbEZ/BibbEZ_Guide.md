# BibbEZ installation guide

This is a guide for installing the BibbEZ shell-mount mouseclick Z bracket.

![BibbEZ bracket](/For_Makers/BibbEZ/bibbez_06.jpg)

## Bracket

Download an FDM-ready 3D-printing model [here](https://www.printables.com/model/721075-bibbez-with-designed-support).

Print it with 0.2mm layers, 100% infill, and only one perimeter wall.

If you're using Cura to slice, turn on "experimental bridge settings" or it won't print properly.

## Switch

Use two-pin through-hole mouse microswitches.

You can get them [here on Aliexpress](https://www.aliexpress.us/item/3256804345508860.html).

Others may work but you need to verify that the dimensions are identical.

## Parts you'll need

![Parts laid out](/For_Makers/BibbEZ/bibbez_01.jpg)

1. JST-PH 2.0 through-hole perpendicular connector and pigtails with the wires cut about 0.75 inches (20mm) long
2. 28 AWG magnet wire, one 4.00 inches long (102mm) and one 4.25 inches long (108mm).
3. Printed BibbEZ bracket
4. Two-pin mouse microswitch
5. Heatshrink

## Assembly

### Strip, flux, and tin the wires.

![Stripped wire ends](/For_Makers/BibbEZ/bibbez_02.jpg)

This is fairly straightforward for the JST pigtail.

For magnet wire, you need to burn off the coating using your soldering iron.
Dip the tip of the magnet wire in flux paste, and put a large blob of solder on the tip of your iron.
Hold the cut tip of the wire where the copper is exposed in the blob of molten solder.
This will produce nasty fumes, so use proper ventilation and/or breathing protection.

### Bend the switch pins

![Bent switch pins](/For_Makers/BibbEZ/bibbez_03.jpg)

Bend the switch pins to the side, fairly flat against the back of the switch.

Make sure you bend it in the correct direction. It should match this.

### Trim the switch pins

![Trimmed switch pins](/For_Makers/BibbEZ/bibbez_04.jpg)

Use robust cutters to cut the switch pins flush with the side of the switch.

This is to help make it easier to insert the switch into the bracket.

### Solder magnet wire to switch

![Switch with wires](/For_Makers/BibbEZ/bibbez_05.jpg)

Solder the shorter wire to the left pin, as seen in this photo.

### Prepare BibbEZ bracket

![BibbEZ bracket](/For_Makers/BibbEZ/bibbez_06.jpg)

Trim the support wall off the front of the bracket using flush cutters.

![Trimmed BibbEZ bracket](/For_Makers/BibbEZ/bibbez_07.jpg)

### Install switch in bracket

![Wires bent on switch](/For_Makers/BibbEZ/bibbez_08.jpg)

Gently bend the wires to face away from the switch. They ideally do not protrude past the side of the switch.

Insert the wires into the slots in the BibbEZ bracket and slide the switch in.

![BibbEZ bracket with switch](/For_Makers/BibbEZ/bibbez_09.jpg)

### Bend wires to equalize length

![Bent wires on BibbEZ bracket](/For_Makers/BibbEZ/bibbez_11.jpg)

Bend the wires towards the side with the nub to make their ends line up.

### Insert heat shrink over wires

![Heat shrink on wires](/For_Makers/BibbEZ/bibbez_10.jpg)

Put heat shrink over the wires so that you can cover up the solder joints later.

Use thin ones for each wire and one thick one over both wires together.

### Solder wires to JST pigtail

![Wires soldered to pigtail](/For_Makers/BibbEZ/bibbez_12.jpg)

### Shrink small heatshrink tubes

![Shrunken small heatshrink tubes](/For_Makers/BibbEZ/bibbez_13.jpg)

### Shrink large heatshrink tube

![Shrunken large heatshrink tube](/For_Makers/BibbEZ/bibbez_14.jpg)

### Install JST socket in motherboard

First, tin the secondary Z hole on the PhobGCC 2.0.5  motherboard that has a round pad.

![Tinned Z hole](/For_Makers/BibbEZ/bibbez_15.jpg)

Then heat the pad from the front of the motherboard while inserting the JST socket (installed on a pigtail) from the rear side.

![JST partially soldered](/For_Makers/BibbEZ/bibbez_16.jpg)

Then solder the other pin and finish tinning the first pin.

![Fully soldered JST](/For_Makers/BibbEZ/bibbez_17.jpg)

### Install BibbEZ in shell

Orient the BibbEZ bracket like this:

![BibbEZ next to shell](/For_Makers/BibbEZ/bibbez_18.jpg)

Slide the BibbEZ onto the post between the X and Y buttons on the front shell.

![BibbEZ in shell](/For_Makers/BibbEZ/bibbez_19.jpg)

The button pad will not fit as-is...

![Button pad over BibbEZ](/For_Makers/BibbEZ/bibbez_20.jpg)

So trim it to fit over the bracket.

![Trimmed button pad around BibbEZ](/For_Makers/BibbEZ/bibbez_21.jpg)

Remove the spring from the Z button and make sure that the little nub contacts the switch plunger.

Third party Z button caps might not work properly with BibbEZ.

![Z button plunger and mouse switch](/For_Makers/BibbEZ/bibbez_22.jpg)
