# PhobGCC Version 2.0.2 Ordering Guide

This is an illustrated guide to acquiring all the parts you need to assemble a PhobGCC v2.0.2.

# Required Parts

The following parts are unique to the PhobGCC and must be acquired per this guide, with no non-identical substitutions.

* 1x PhobGCC v2.0.2 Board
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

There are two main ways to acquire a PhobGCC v2.0.2 Board.
The first way is if you intend to only build a single controller, you can contact a local modder in your region using [this map](https://www.nojonsmods.com/moddermap) to see if they have spare for sale.
Alternatively, you can also check [Etsy](https://www.etsy.com/) or [eBay](https://www.ebay.com/) as some often appear for sale.
If you cannot find a single board for sale or you intend to build more than one PhobGCC, you can order the boards directly from a board house.
These instructions will be for [JLCPCB](https://jlcpcb.com/).

## Parts You Don't Need

Don't acquire these, because they're not necessary or won't work with PhobGCC 2.0.2 at all:

* Snapback capacitors, snapback modules: snapback is corrected in software.
* Heartbeat modules or equivalent shunt resistors: we have no stick potentiometers so these are unnecessary.
* Teensy or Raspberry Pi Pico: the PhobGCC 2 has no need of any external microcontroller board.
* OEM C-Stick ribbon cables from a GCC: PhobGCC 2 needs 6 connections to the C-Stick daughterboard, and reusing the OEM cable has been a source of reliability issues. 

# JLC Ordering Process Overview

This is very important, or else you will get nonfunctional boards.

1. Preorder the SMD components that are in limited supply, as listed below.
  * These are not stocked by JLC but they are stocked by distributors; JLC will order them and keep them in your name until you order boards that need them.
2. **Once ALL OF THE PARTS come in, only then order boards with assembly.**
  * You may need to wait a week or more.
  * Do not order boards before you receive notification that ALL of your parts are available.
  * If you order boards before parts are available, then they will be assembled without the parts and they will not function.
3. Wait for your boards to come in.

## Pre-ordering SMD components

Since the 2.0.2 board is fully integrated, all of the non-GCC components are soldered onto the board at the board house. Some of these may be out of stock, and as such need to be pre-ordered before you place a board order. Pre-ordered components take on average 2 weeks to arrive at the JLCPCB warehouse after you pay for them. If a component takes longer, you can contact JLCPCB support for a more accurate timeframe of arrival.

The following parts usually have low stock and pre-ordering them is advised:

**NOTE: These part quantities are for a single 2.0.2 board. You need to multiply them by the number of boards you plan to order.**
**NOTE 2: You can only order PCBs in quantities of 5, 10, 15, 20, 25, 30, 50, or more. Do not order SMD components for amounts other than these or you will either have unused extra parts or unpopulated PCBs later.**

* [1x RP2040](https://jlcpcb.com/partdetail/RaspberryPi-RP2040/C2040)
* [1x NOR Flash Chip](https://jlcpcb.com/partdetail/WinbondElec-W25Q128JVSIQ/C97521)
* [4x DRV5055 SMD Hall Sensor](https://jlcpcb.com/partdetail/TexasInstruments-DRV5055A3QDBZR/C266128)
* [2x MCP3202 ADC](https://jlcpcb.com/partdetail/MicrochipTech-MCP3202_CISN/C56997)
* [1x Crystal Oscillator](https://jlcpcb.com/partdetail/390662-TAXM12M4RKDCDT2T/C403945)

Once you've clicked on each link and added the quantities you need into your cart, click the cart icon in the top right, go to the "Parts Manager Tab", to the "Order Parts" subtab, to the "Cart" subtab as follows:

![PHOB_PREORDER_PARTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_preorder_parts.PNG?raw=true)

This is where you double-check the part quantities you've selected and make sure that they're all checked, even if in stock.
Once you checkout, JLC will attempt to purchase those parts for you at the quoted price.
If they end up costing more, they'll email you about supplementing the cost, and if they end up costing less, you will be refunded the difference.
You can check the status of part orders in the "Parts Order History" subtab.

Some of the parts may be in stock and be available immediately.
You must wait until **ALL PARTS** are available before proceeding.
This may take one or two weeks.

## Purchasing the PhobGCC v2.0.2 board

**NOTE: Once your pre-ordered SMD Components have come in (report as "Complete" in the parts order history), you may proceed to ordering boards. If they are not in, the parts will not be present on your board**

Download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.2) in the releases section as shown below:

![PHOB2_BOARD_RELEASE](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_board_release.png?raw=true)

Make sure to redownload the latest even if you already downloaded it in the past, as occasionally we make changes to the components to account for stock shortages.

Once you've extracted the files from the .zip, you should have three files. The Phob2_Gerbers .zip, the Phob2_Bom.csv, and the Phob2_Pos.csv. Click "Order Now" on JLCPCB, make sure you are set to "Standard PCB/PCBA" tab, click "Add Gerber File", and upload the Phob2_Gerbers.zip. Once the files are uploaded, you should see the board process and then load in as shown below:

![PHOB2_BOARD](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_board.PNG?raw=true)

Once you've checked that the size is set to 90.26x125.5mm, you can progress with configuring it.
The recommended settings are the defaults, setting your board quantity, setting "Different Design" to 2, and setting the Surface Finish to ENIG, as seen below:

**NOTE: ONLY ORDER THE BOARD QUANTITY YOU HAVE PARTS FOR!**

![PHOB2_SETTINGS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_settings.PNG?raw=true)

Scroll down to PCB Assembly and toggle it on the right.
Select Economic PCBA Type (Not available for large orders or colors), the top side, and confirm parts placement as seen below.

**NOTE: For large orders such as more than 50 boards or different colors, Standard Assembly is required. This attaches removable rails to the PCB at a significant extra cost.**

**NOTE2: If arranging group buys or purchasing in large quantities, we strongly suggest using Standard PCBA so DOA boards are less likely.**

![PHOB2_ASM](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_asm.PNG?raw=true)

Click "Confirm" and then upload the Phob2_Bom.csv to the left and and the Phob2_Pos.csv to the right.
Set the usage description to Research/Education/DIY -> DIY HS Code and click "Next".
The text at the top of the next screen should look like the following with all 25 confirmed.
If they are not confirmed, and are not one of the five above in the pre-ordering section, stop ordering and ask in the [PhobGCC Discord](https://discord.gg/yrpUu7mgzm).

![PHOB2_PARTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_parts.PNG?raw=true)

After clicking "Next", you'll be presented with a view of the parts on the board.
If this screen is corrupted, that's okay.
The files are known good and this is just the website bugging out.
You want to make sure there are no red boxes anywhere as those indicate missing components.
You can then click "Save To Cart" and pay for your boards.

## Optional: Purchasing LR Trigger Paddles

If you don't or can't use OEM GCC Trigger paddles, you can order trigger paddles separately.

First, you can download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.2) in the releases section as shown below:

![PHOB2_PADDLE_RELEASE](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_paddle_release.png?raw=true)

Click "Order Now" on JLCPCB, make sure you are set to "Standard PCB/PCBA" tab, click "Add Gerber File", and upload the Trigger_Paddle_Gerbers.zip. Once the files are uploaded, you should see the board process and then load in as shown below:

![TRIGGER_BOARD](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/trigger_board.PNG?raw=true)

Once you've checked that the size is set to 9.7x41.72mm, you can progress with configuring it.
The recommended settings are the defaults, setting your board quantity, setting "Different Design" to 2, and setting the Surface Finish to ENIG, as seen below:

**NOTE: IF YOU ORDER MORE THAN 30, THE OPTION FOR DEBURRING/EDGE-ROUNDING APPEARS. IT'S RECOMMENDED TO ENABLE IT!**

**NOTE2: SINCE THESE BOARDS ARE SO SMALL, THE QUANTITY DOESN'T CHANGE THE PRICE. WE SUGGEST ORDERING PLENTY SINCE ITS CHEAP. THE DIFFERENCE BETWEEN 20 AND 200 IS $18.**

![TRIGGER_SETTINGS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/trigger_settings.PNG?raw=true)

You can then click "Save To Cart" and pay for your boards.

# Optional: Purchasing DH1H1 Magnet Mounts

If you can't source magnet mounts locally or via [Etsy](https://www.etsy.com/), you can order them from JLCPCB.

**DO NOT USE THESE WITH MAGNETS OTHER THAN DH1H1.**

First, you can download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.2) in the releases section as shown below:

![PHOB2_MAGNET_RELEASE](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_magnet_release.png?raw=true)

Click "Order Now" on JLCPCB, make sure you are set to "3D Printing" tab, click "Add 3D Files", and upload the DH1H1_Magnet_Holder_JLCPCB.STL. Once the file is uploaded, you should see it render as shown below:

![MAGNET_MOUNTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/dh1h1_mounts.PNG?raw=true)

The recommended settings are SLS Nylon. You then set the product description to Other -> Fastener as shown below

**NOTE: QUANTITY 1 GETS YOU 10 MOUNTS, WHICH IS ENOUGH FOR 2.5 PHOBS. 2 GETS YOU 20 MOUNTS FOR 5 PHOBS. MAKE SURE YOU ORDER ENOUGH!**

![MAGNET_SETTINGS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/magnet_settings.PNG?raw=true)

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
  * Download [This](https://drive.google.com/file/d/10-lseJ4UK1-HkkXc6rjSJtsYRW7ihsXD/view?usp=share_link) OpenScad file. It is by default set up for DH1H1 Magnets, so you can edit it for whatever magnet you use, adjust it for your printer, and then generate the STL using [OpenScad](https://openscad.org/). Once you have the STL, you can print it using your own machine or check out local makerspaces, libraries, and print shops.
  * If you use magnets other than DH1H1, you will need to adjust the magnet offset to get the optimum signal strength using PhobVision to check. Speak with the devs on Discord to find out more.
* Wire:
  * 26-gauge stranded wire such as [this from McMaster](https://mcmaster.com/8054T11).
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

Once you have all the parts you need, follow the [build guide](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Build_Guide_2.0.md) to assemble your PhobGCC.
