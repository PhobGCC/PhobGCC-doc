# PhobGCC Version 2.0.5 Ordering Guide

This is an illustrated guide to acquiring all the parts you need to assemble a PhobGCC v2.0.5.

# Required Parts

The following parts are unique to the PhobGCC and must be acquired per this guide, with no non-identical substitutions.

* 1x PhobGCC v2.0.5 Board
* 4x Magnets
* 4x Underslung Magnet Mounts
* 6x Wires
* Optional: 4x D-pad Buttons
* Optional: 1-6x Mouse Buttons for ABXYLR
* Optional for [PhobVision](https://youtu.be/8OOGupE3-ic):
  * Panel-mount 3.5mm TRRS Jack
  * JST-PH 2.0 2-pin male connector & female pigtail
  * TRRS to RCA video adapter cable (doesn't go in the controller but required for use)

The following parts are standard to a GCC and can be acquired via a number of different ways, some of which will be outlined here.

* 2x T3 Stickboxes
* 2x Trigger Potentiometers
* 2x Trigger Paddles
* 1x Cable with a GCC Plug
* 1x Rumble Bracket
* 1x Z-button Switch
* Optional: 1x Rumble Motor

There are two main ways to acquire a PhobGCC v2.0.5 Board.
The first way is if you intend to only build a single controller, you can contact a local modder in your region using [this map](https://www.nojonsmods.com/moddermap) to see if they have spare for sale.
Alternatively, you can also check [Etsy](https://www.etsy.com/) or [eBay](https://www.ebay.com/) as some often appear for sale.
If you cannot find a single board for sale or you intend to build more than one PhobGCC, you can order the boards directly from a board house.
These instructions will be for [JLCPCB](https://jlcpcb.com/) and [Elecrow](https://www.elecrow.com/).

## Parts You Don't Need

Don't acquire these, because they're not necessary or won't work with PhobGCC 2.0.5 at all:

* Snapback capacitors, snapback modules: snapback is corrected in software.
* Heartbeat modules or equivalent shunt resistors: we have no stick potentiometers so these are unnecessary.
* Teensy or Raspberry Pi Pico: the PhobGCC 2 has no need of any external microcontroller board.
* OEM C-Stick ribbon cables from a GCC: PhobGCC 2 needs 6 connections to the C-Stick daughterboard, and reusing the OEM cable has been a source of reliability issues.

## Purchasing the PhobGCC v2.0.5 board

There are two board houses you can purchase from, with their own benefits and drawbacks. They are JLCPCB and Elecrow.

Elecrow is the preferred board house, as they have proper quality control and validation. They do the testing procedure to ensure the boards came out cleanly and to ensure you will not receive a dead-on-arrival board. The drawback is that they often take 3-4 weeks for arrival.

Usually they are 50% more expensive than the alternative option, but enough PhobGCC motherboards have been ordered that they have reduced costs to be competitive or even cheaper at large volume.

[Elecrow Ordering Guide](/For_Makers/Phob2_Elecrow_Ordering_Guide.md)

JLCPCB is the secondary board house, as they lack significant quality control to ensure the board is assembled properly. JLC Economic assembly **should not** be used as the quality of the boards will be terrible and you risk dead-on-arrival boards. JLC Standard Assembly is better, but you risk poor plating and solder mask issues. The advantage to JLC is that they ship much faster than Elecrow (2 weeks), but you need to preorder some components and this can add a significant delay.

[JLCPCB Ordering Guide](/For_Makers/Phob2_JLCPCB_Ordering_Guide.md)

## Optional: Purchasing LR Trigger Paddles

If you don't or can't use OEM GCC Trigger paddles, you can order trigger paddles separately.

First, you can download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.5) in the releases section as shown below:

![PHOB2_PADDLE_RELEASE](/For_Makers/Phob_Ordering_Guide_Images/phob2_paddle_release.png)

Click "Order Now" on JLCPCB, make sure you are set to "Standard PCB/PCBA" tab, click "Add Gerber File", and upload the Trigger_Paddle_Gerbers.zip. Once the files are uploaded, you should see the board process and then load in as shown below:

![TRIGGER_BOARD](/For_Makers/Phob_Ordering_Guide_Images/trigger_board.PNG)

Once you've checked that the size is set to 9.7x41.72mm, you can progress with configuring it.
The recommended settings are the defaults, setting your board quantity, setting "Different Design" to 2, and setting the Surface Finish to ENIG, as seen below:

**NOTE: IF YOU ORDER MORE THAN 30, THE OPTION FOR DEBURRING/EDGE-ROUNDING APPEARS. IT'S RECOMMENDED TO ENABLE IT!**

**NOTE2: SINCE THESE BOARDS ARE SO SMALL, THE QUANTITY DOESN'T CHANGE THE PRICE. WE SUGGEST ORDERING PLENTY SINCE ITS CHEAP. THE DIFFERENCE BETWEEN 20 AND 200 IS $18.**

![TRIGGER_SETTINGS](/For_Makers/Phob_Ordering_Guide_Images/trigger_settings.PNG)

You can then click "Save To Cart" and pay for your boards.

# Optional: Purchasing DH1H1 Magnet Mounts

If you can't source magnet mounts locally or via [Etsy](https://www.etsy.com/), you can order them from JLCPCB.

**DO NOT USE THESE WITH MAGNETS OTHER THAN DH1H1.**

First, you can download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.5) in the releases section as shown below:

![PHOB2_MAGNET_RELEASE](/For_Makers/Phob_Ordering_Guide_Images/phob2_magnet_release.png)

Click "Order Now" on JLCPCB, make sure you are set to "3D Printing" tab, click "Add 3D Files", and upload the DH1H1_Magnet_Holder_JLCPCB.STL. Once the file is uploaded, you should see it render as shown below:

![MAGNET_MOUNTS](/For_Makers/Phob_Ordering_Guide_Images/dh1h1_mounts.PNG)

The recommended settings are SLS Nylon. You then set the product description to Other -> Fastener as shown below

**NOTE: QUANTITY 1 GETS YOU 10 MOUNTS, WHICH IS ENOUGH FOR 2.5 PHOBS. 2 GETS YOU 20 MOUNTS FOR 5 PHOBS. MAKE SURE YOU ORDER ENOUGH!**

![MAGNET_SETTINGS](/For_Makers/Phob_Ordering_Guide_Images/magnet_settings.PNG)

You can then click "Save To Cart" and pay for your mounts.

**NOTE: If you get asked about wall thickness, click "Yes" and confirm. It's okay**

# Purchasing Other PhobGCC Parts

The remaining parts can be purchased from distributors as listed below.
* Magnets: choose one type and stick with it.
  * [DH1H1 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=DH1H1)
  * [D12 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=d12-n52)
  * [N30H Magnets](https://www.digikey.com/short/br3n8hz3)
  * [Canadian option](https://www.indigoinstruments.com/magnets/rare_earth/discs/small-neodymium-cylinder-magnet-2.5x2.5mm.html) - Very similar to DH1H1
  * [EU option](https://www.supermagnete.de/eng/disc-magnets-neodymium?length-or-diameter=2.00,3.00&height=2.00,3.00)
* Magnet Mounts:
  * **NOTE: PhobGCC v1.X MAGNET MOUNTS WILL BE VERY BAD, AND MAY NOT WORK AT ALL. MAKE SURE TO GET THE UNDERSLUNG MAGNET MOUNTS!**
  * Download any of the Phob2.x STLs from [here](https://github.com/PFL-MushroomForge/PhobGCC-Magnet-Mounts) (credits to MushroomForge!). They are already set up for the most common magnet configurations, so you should be able to just print them (however, these will not work with JLCPCB!).
  * Alternatively, download [this](https://drive.google.com/file/d/10-lseJ4UK1-HkkXc6rjSJtsYRW7ihsXD/view?usp=share_link) OpenScad file. It is by default set up for DH1H1 Magnets, so you can edit it for whatever magnet you use, adjust it for your printer, and then generate the STL using [OpenScad](https://openscad.org/). Once you have the STL, you can print it using your own machine or check out local makerspaces, libraries, and print shops.
  * If you use magnets other than DH1H1, you will need to adjust the magnet offset to get the optimum signal strength using PhobVision to check. Speak with the devs on Discord to find out more.
* Wire:
  * 26-gauge stranded wire such as [this from McMaster](https://mcmaster.com/8054T11).
  * 6-pin Ribbon Cable from [Kadano](https://kadano.biz/phobgcc-2-0-c-stick-ribbon-cables-6pin/) (EU)
  * 6-pin Ribbon Cable from [Tbox](https://www.etsy.com/listing/1479077608/phob-202-6-pin-c-stick-ribbon-cables) (NA)
* Optional Mouse Buttons for ABXYLR: you can use mouse buttons for any number from 0 to 6 of the buttons. Generally the high actuation force buttons are preferred.
  * [Low Actuation Force Buttons](https://www.digikey.com/short/q4r0jh3j)
  * [High Actuation Force Buttons](https://www.digikey.com/short/dcddr0jr)
  * [Teflon Tape For Support](https://www.mcmaster.com/76475A51/) This is necessary for mouseclick face buttons, but there are alternatives.
* Optional Discrete Buttons for D-Pad:
  * [SMD Buttons](https://www.digikey.com/short/v93wrw12)
* Optional for [PhobVision](https://youtu.be/8OOGupE3-ic): you need all of these if you choose to install PhobVision.
  * [TRRS Jack](https://www.digikey.com/en/products/detail/cui-devices/SJ5-43502PM/1956558)
  * [JST-PH 2.0 2-Pin Connector and Pigtail](https://www.amazon.com/dp/B01DUC1O68) or similar: size is critical; don't use a double pigtail.
  * [TRRS to RCA Video Cable](https://www.amazon.com/dp/B08V1SV8BL) or similar: **MUST BE TRRS = Audio Left, Video, Ground, Audio Right**

# Purchasing Other GCC Parts

The GCC-specific Parts have a few different methods of acquisition
* Stickboxes
  * T3 GCCs as per [this guide](https://gccontrollerlibrary.com/guides/gamecube-controller-stamps-guide/)
  * Official Wii Classic and Wii Classic Pro Controllers
  * Sold Loose on [Etsy](https://www.etsy.com/)
* Trigger Potentiometers
  * Any GCC
  * Official Wii Classic Controllers (No Handles)
  * [Kadano's Etsy Store](https://www.etsy.com/listing/1361667533/new-gamecube-controller-potentiometers)
* Cable with a GCC Plug
  * Any GCC
  * Alibaba Cables
  * [Liquid Cable](https://firescc.com/diy-custom-cables)
* Rumble Bracket
  * Any GCC
  * [Wumble](https://github.com/wavtype/wumble)
  * [FIRESCC](https://firescc.com/mod-guides#/rumble-bracket)
  * [Ube-S-Phob](https://github.com/Flocloud9/Ube-s-Phob-Bracket)
* Z-button Switch
  * Stock - Any GCC
  * Tactile - Official Wii Classic Controllers (No Handles)
  * Heavy Tactile - [BattleBeaverCustoms](https://battlebeavercustoms.com/products/replacement-gamecube-tactile-z-switch)
  * Tactile - [FIRESCC](https://www.etsy.com/listing/753452766/fires-performance-mod-kit-for-the?)
  * Tactile - [Digikey](https://www.digikey.com/short/hp5vvv7w) **NOTE:  NEEDS SOME MODIFICATION OF CONTROLLER BUTTON RUBBER**
  * Mouseclick - [SimpleControllers](https://simplecontrollers.com/)
* Optional Rumble Motor
  * Any GCC
  * [Cellphone Rumble](https://www.amazon.com/10-Pieces-Vibration-Motor-Vibrating/dp/B00N9J3BTG)

# Assembly

Once you have all the parts you need, follow the [build guide](/For_Makers/Build_Guide_2.0.md) to assemble your PhobGCC.
