# PhobGCC 2.0 Build Guide

This is an illustrated guide to making a PhobGCC 2.0, using photos taken of a PhobGCC board version 2.0.0.

If you want to see it in motion, watch the **[PhobGCC 2.0 Assembly Video]**.

Unlike previous releases, PhobGCC v2.0 is much more beginner friendly and it is possible to build a PhobGCC as your very first soldering project.

It is still recommended to get a soldering practice kit to build your physical understanding of the soldering process with before you start.

# Tools

It's possible to work with cheap tools and supplies if you're very skilled.

But if you cheap out on solder or soldering iron "because you're just a beginner" you will be in for a lot of pain and suffering.

Come to the [PhobGCC Discord Server](https://discord.gg/yrpUu7mgzm) for advice on what to get if you're at all unsure.

## Required Tools

1. Temperature-controlled soldering iron with a moderate size chisel tip. DO NOT USE AN UNCONTROLLED TEMPERATURE IRON!
2. Flux-core solder, ideally no-clean flux (Sn63Pb37 is easier, SAC305 is lead-free for safety)
3. No-clean rosin flux paste (not to be confused with solder paste)
4. Tri-Wing screwdriver and small Phillips or ideally JIS driver set
5. Sharp tweezers
6. Solder sucker (or more sophisticated desoldering tool)
7. Vise or PCB support (the alligator clip kind is not very useful)
8. Multimeter for debugging
9. 90%+ rubbing alcohol and cotton swabs

## Suggested Tools

1. Non-magnetic tweezers, if you're not using printed magnet holders
2. Anti-static mat/grounding strap
3. Fume fan

# Parts

Some of the parts are taken from a donor Gamecube controller, while others must be sourced new. Check the [PhobGCC Ordering Guide](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob2_Ordering_Guide.md) for a list of what you need to purchase.

## New Parts

1. PhobGCC v2.0.0 board (includes C-stick board)
2. 4x magnets
3. 3D-printed magnet holders and or superglue
4. Optional 2x trigger paddles
5. Optional 4x D-pad buttons
6. Optional 4x mouse buttons for ABXY (assembly not depicted)
7. Optional 1x or 2x mouse buttons for triggers (assembly not depicted)

## Internal Parts Harvested from Donor GCC

Not counting the shell, buttons, stick caps, etc.

1. 2x Stickboxes
2. 2x Trigger potentiometers
3. Cable (or make or buy your own)
4. Rumble Motor (or use a cellphone rumble)
5. Rumble Bracket (or source your own 3D-printed one)
6. Z-button switch
7. Trigger paddles with attached wires

# Build Process

## Magnet Mounting

If you're using superglue to mount magnets to the stickboxes, consult slide 16 of the [PhobGCC 1.1 Build Guide](https://docs.google.com/presentation/d/1Awil69v7xDhX-VOdLnVhseILLCY89gFpTTAPPEig6E4/edit#slide=id.g121d68271e5_0_0). You want to do this before the rest of the process, preferably a few hours before.

If you're using 3D-printed magnet holders, you can do this right before putting the stickboxes on the board.
First press-fit the magnet holders over the pegs on the stickboxes then press-fit the magnets themselves into the magnet holders.
Consult **[this section of the PhobGCC 2.0 Assembly Video]**.

Even if you're using magnet holders, we strongly suggest you augment them with superglue (thin superglue is better for this).

![Magnet Holders on Stickboxes](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/BuildPics_1.2.2/CVAC1076_LwKzi7N-output.jpg?raw=true)

Make sure the magnets are oriented horizontally.

## Soldering Interlude

Many people attempting to build PhobGCCs are new or relatively novice solderers.
In this section I outline the basic processes and techniques involved in soldering in the hopes of making the process go more smoothly.

Soldering is basically applying fancy conductive hot glue to the surfaces, with some important differences.
The first difference is that the parts that are getting soldered together must be very hot in order for the solder to stick.
Additionally, the parts that are being soldered are usually damaged by too much heat, or heat applied for too long.
Finally, the oxidation on the surface of the metal must be stripped off somehow.

These must all be considered together in order to successfully solder.

### Heating
First, in order to properly heat the joint, you need to heat the joint to above the melting temperature of the solder.
This involves a few considerations.

First is the melting temperature of the solder, which you use to determine the iron temperature.

* Leaded Sn63Pb37 solder melts at 183C/361F, and is usually soldered with the iron at **315-340C/600-650F**.
* Lead-free SAC305 (Sn 96.5%, Ag 3%, Cu 0.5%) solder melts at a higher temperature of 217C/423F, and is usually soldered with the iron at **340-370C/650-700F**.

If you set the iron too cold, it takes too long to heat the joint to a sufficient temperature, and nearby parts may be overheated and damaged.
Conversely, if you set the iron too hot, the joint itself can be overheated and this can cause damage to the pads on the PCB or lift traces.
I recommend you use the lower end of the temperature scales I listed as a starting point.

The second consideration is your soldering iron and its tips.

Make sure you are using a **temperature-controlled soldering iron** that can be set to specific temperatures, not just power levels.
If it's not temperature-controlled, just don't use it.
A non-controlled iron will heat up to hotter than you want when it's not being actively used, and cool down to lower than you want when it's being used.
It's not worth the suffering involved.
You will hate the iron, hate yourself, and in all likelihood end up with nonfunctional PhobGCCs.

Next is the tip size.
In general, you want to get the most contact between the tip and the solder joint without touching adjacent joints.
Ideally, you use a chisel tip that is exactly as wide as the pads.
Most people don't switch soldering iron tips frequently, so in this case you should select the widest tip usable for the smallest joints.
On the PhobGCC 1.2, the smallest joints are the Hall effect sensors, which have pads 0.8mm wide.
I recommend you use a **chisel tip from 0.8 to 1mm wide**, ideally.
I actually use a 1.6mm wide tip, which works better for the larger pads but is slightly more difficult to use for the Hall effect sensors.

Additionally you have to consider tip condition when heating.
When metal is left at a high temperature, the metal surface reacts with oxygen in the air to form an oxide layer that insulates the tip, preventing heat transfer, and also doesn't let solder stick to it.
It is important to **keep the tip tinned with fresh solder** or tip-tinner whenever it is not in use.
While the solder oxidizes, it is also liquid at operating temperature so any oxidation of it can be easily wiped off with a wet sponge before beginning to solder.
If the tip has oxidized significantly, you can scrub off the oxide coating using a **brass wool** sponge, followed immediately by dipping the tip in **tip tinner** or alternatively coating the tip with normal solder.
If you aren't using your iron for a while, make sure to turn it off to stop it from oxidizing.

Finally, it comes down to technique.
In order to transfer the heat as effectively as possible, **apply a lot of pressure** using the soldering iron to both parts that you want to join together.
The board is robust, so you can press down on it very hard, and press across onto pins as hard as you can without bending them, which may vary based on the pin thickness.

### Removing Oxidation from Surfaces
While oxidation quickly grows thick on very hot metal like the soldering iron tip, a thin layer exists on almost every metal.
To remove this, a material called **flux** is applied.
When flux is heated, it becomes reactive and strips the oxygen out of the metal oxides.
This lets the solder bond properly to the surface.

Most solder has a **flux-core**, where flux is actually inside the solder wire so that it is automatically applied when you melt the solder.
Do not get solder that is "solid wire".
There are various kinds of flux as well.
You should get no-clean rosin flux.
More active flux types are useful when soldering to different materials, but you don't need any more than no-clean rosin flux for the gold-plated board of the PhobGCC.
If you do use more active types of flux, then you need to clean the board off after soldering in order to prevent corrosion.

In addition to flux core, if you are having trouble, you can add additional flux, which can come as a gel, a liquid in a syringe or bottle, or in a pen.
I personally find that I have no need for these, but some find it very helpful.

To effectively use flux-core solder, you must apply solder to the joint, not to the iron.
If you apply solder to the iron, all the flux gets used up on the surface of the iron and there's no effect on the joint surfaces that you want to bond to.
Additionally, if you apply solder to the joint and not to the iron, you can be sure the joint is hot enough before the solder is applied.
Another benefit is that this lets you better control the amount of solder.
If you touch the solder onto the iron tip, you might end up with a big blob of solder on the iron tip and none on the board.

### General description of technique

First, turn on the iron and wait for it to heat up.

Then, for each joint:

1. Scrub off oxidation on soldering iron tip with brass wool.
2. Tin the tip with solder or tip tinner.
3. Clean most of the tinning off the tip with brass wool or wet sponge.
4. Strongly press the tip against both parts that are being soldered together.
5. Apply flux-core solder wire to the joint between the two parts without touching it to the soldering iron tip.
6. Wait for the solder to melt, then feed the wire in until it forms a concave cone. Do not apply too much.
7. Continue heating a second or two more to let the flux in the joint stop bubbling.
8. Remove the soldering iron and let the joint cool without blowing on it.
9. Continue with other adjacent joints.
10. When you're done soldering for now, clean the tip with brass wool or sponge.
11. Apply fresh solder or tip tinner.

### Cleaning Flux

If you leave flux behind from soldering, it can cause problems.
One thing is that the flux residue itself can be conductive, which can cause the Hall sensors to not work properly.
This is especially problematic with flux that isn't labeled as No-Clean.
Additionally, the flux residue is corrosive and can cause the components to corrode long-term.

To remedy this, use rubbing alcohol (as high concentration as you can get) with a cotton swab to clean the flux residue from the PCB when you're done soldering.

## RP2040 Programming

Begin by programming the RP2040 according to **[this guide]**.

## Trigger Potentiometer Soldering

See **[this section of the PhobGCC 2.0 Assembly Video]**.

Mount the trigger potentiometers to the back of the board. Do not mount them to the same side as the RP2040.

**[IMAGE OF TRIGGER POTS GOES HERE]**

You can tape them to the board with masking tape to keep them in place, or just rest the board on top of the potentiometers to secure then in place while you solder them.

**[IMAGE OF SOLDERED TRIGGER POTS GOES HERE]**

## Z-button Switch Soldering

See **[this section of the PhobGCC 2.0 Assembly Video]**.

Mount the Z-button switch to the top of the board, the same side as the RP2040. Do not mount it to the back of the board.

**[IMAGE OF Z-BUTTON GOES HERE]**

Solder it to the board, with extra solder applied to the contacts at the board edge. These are structural.

**[IMAGE OF SOLDERED Z-BUTTON GOES HERE]**

You do not need to solder the inner pads on the board edge.

## OPTIONAL D-pad Buttons

This is an optional enhancement to the D-pad that goes underneath the OEM rubber domes.

This does not enhance the feel of the buttons, but it makes them harder to press accidentally and more consistent when you do want to press them. This is not suggested for Samus mains because it makes it harder to activate the Extended Grapple.

First, observe the wings on the button pads. The wings are where the switch contacts will go.

**[IMAGE OF D-PAD NO SWITCHES GOES HERE]**

The switches on the right and left pads must be oriented with the contacts oriented horizontally, while the switches on the top and bottom pads must be oriented with the contacts oriented vertically.

If you mix this up, the buttons will be shorting the contacts all the time.

**[IMAGE OF 2 PLACED D-PAD SWITCHES GOES HERE]**

The process of soldering goes as shown:

**[IMAGE OF 2 PLACED D-PAD SWITCHES GOES HERE]**

Top: Apply a tiny bit of solder to one wing of the contact only.

Left: Using tweezers, hold a switch in place and melt the existing solder to tack it in place. Do all the buttons to this stage, then fit-check their placement using the shell to make sure they are centered under the rubber domes..

**[IMAGE OF FIT CHECKING DPAD GOES HERE]**

Right: Tack the opposite corner down using solder, then remelt the first corner and then this corner to eliminate strain.

Bottom: Solder down the rest of the corners.

The buttons should now look like this:

**[IMAGE OF 4 PLACED D-PAD SWITCHES GOES HERE]**

Using a multimeter, check continuity between the exposed copper pads that stick out past the button. They should be disconnected when the switch isn't pressed, and shorted when the switch is pressed.

## C-stick Cable Soldering

See **[this section of the PhobGCC 2.0 Assembly Video]**.

## Controller Cable Soldering

See **[this section of the PhobGCC 2.0 Assembly Video]**.

If you are using an OEM cable harvested from a first-party Gamecube controller, the black wire should be placed farthest from the center of the controller, and the blue wire closest to the center of the controller.

**[IMAGE OF CONTROLLER CABLE COLORS GOES HERE]**

The pins themselves are actually basketlike sheet metal forms, so when you solder them, they take up a fairly large amount of solder.

**[IMAGE OF SOLDERED CONTROLLER CABLE GOES HERE]**

## Trigger Paddle Soldering

If you don't harvest the trigger paddles from the OEM controller, you will need to prepare new wires for the PhobGCC's trigger paddles.

It is possible to solder mouse buttons to these trigger paddles, but that is not covered here as it involves a more invasive modification to the OEM controller hardware.

Cut and strip wires that are roughly 1 inch long (25mm), and solder them in so that the wires are on the opposite side of the PCB from the pads.

Do not have the wires exit the front side with the contacts, or they can short to the Hall effect sensor pins.

![Wires soldered into trigger paddles](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/BuildPics_1.2.2/CVAC1108_AFMbsiO-output.jpg?raw=true)

Load the trigger paddles with pads exposed into the rumble bracket (whether OEM or third-party), and mount the rumble bracket to the PCB.
Make sure the wires safely exit the slots and do not get caught or pinched under the bracket.

**[IMAGE OF TRIGGER PADDLES IN RUMBLE BRACKET GOES HERE]**

Tuck the trigger paddle wires into the nearby holes in the motherboard.

**[IMAGE OF TRIGGER WIRES IN HOLES GOES HERE]**

Then, being careful not to let them slip out, solder them to the motherboard.

**[IMAGE OF SOLDERED TRIGGER WIRES GOES HERE]**

## Rumble Motor Soldering

Next, mount the rumble motor back in the rumble bracket by inserting it into the rectangular box.
Make sure that the shaft is on the cable side, and the motor is rotated so that the wires are on the D-pad side, close to the edge of the box.

**[IMAGE OF RUMBLE MOTOR IN PLACE GOES HERE]**

Apply a generous blob of solder to each of the rumble motor pads.

**[IMAGE OF SOLDER GLOBS GOES HERE]**

To solder the wires down, melt the blob of solder with your soldering iron and use tweezers to hold the wire in the pool.
Remove the hot soldering iron, and keep the wire still as the solder cools.

Clip the wires into place on the rumble bracket.

**[IMAGE OF SOLDERED RUMBLE WIRES GOES HERE]**

# Completion and next steps

**[IMAGE of PHOB2 COMPLETE GOES HERE]**

Now that you have completed the soldering steps, follow the **[Board Debugging Guide for PhobGCC 2.0]** to make sure it's ready to go.

Then, reassemble it, and follow the Initial Steps in the [PhobGCC Calibration Guide](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Calibration_Guide_v0.27.md) for the version of the software you have flashed on the RP2040.

And, enjoy!

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
