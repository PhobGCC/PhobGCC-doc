# PhobGCC Version 2.0.0 Ordering Guide

This is an illustrated guide to acquiring all the parts you need to assemble a PhobGCC.

# Required Parts

The following parts are unique to the PhobGCC and must be acquired per this guide, with no non-identical substitutions.

* 1 PhobGCC v2.0.0 Board
* 4 Magnets
* High Viscosity Glue
* Optional: 4x Magnet Mounts
* Optional: 4x D-pad Buttons
* Optional: 6x Mouse Buttons for ABXYLR

The following parts are standard to a GCC and can be acquired via a number of different ways, some of which will be outlined here.

* 2x Stickboxes
* 2x Trigger Potentiometers
* 1x Cable with a GCC Plug
* 1x Rumble Bracket
* 1x Z-button Switch
* Optional: 1x Rumble Motor

# Purchasing the PhobGCC Board

There are two main ways to acquire a PhobGCC Board. The first way is if you intend to only build a single controller, you can contact a local modder in your region using [this map](https://www.nojonsmods.com/moddermap) to see if they have spare for sale. Alternatively, you can also check [Etsy](https://www.etsy.com/) or [eBay](https://www.ebay.com/) as some often appear for sale. If you cannot find a single board for sale or you intend to build more than one PhobGCC, you can order the boards directly from a board house. The one outlined here will be for [JLCPCB](https://jlcpcb.com/).

## Pre-ordering out of stock SMD components

Since the 2.0.0 board is fully integrated, all of the non-GCC components are soldered onto the board at the board house. Some of these may be out of stock, and as such need to be pre-ordered before you place a board order. Pre-ordered components take on average 2 weeks to arrive at the JLCPCB warehouse after you pay for them. If a component takes longer, you can contact JLCPCB support for a more accurate timeframe of arrival.

The following parts usually have low stock and pre-ordering them is advised:

**NOTE: These part quantities are for a single 2.0.0 board. You need to multiply them by the number of boards you plan to order**

* [1x RP2040](https://jlcpcb.com/partdetail/RaspberryPi-RP2040/C2040)
* [1x NOR Flash Chip](https://jlcpcb.com/partdetail/WinbondElec-W25Q128JVSIQ/C97521)
* [4x DRV5055 SMD Hall Sensor](https://jlcpcb.com/partdetail/TexasInstruments-DRV5055A2QDBZR/C266131)
* [2x MCP3202 ADC](https://jlcpcb.com/partdetail/MicrochipTech-MCP3202_CISN/C56997)
* [1x Crystal Oscillator](https://jlcpcb.com/partdetail/390662-TAXM12M4RKDCDT2T/C403945)

Once you've clicked on each link and added the quantities you need into your cart, click the cart icon in the top right, go to the "Parts Manager Tab", to the "Order Parts" subtab, to the "Cart" subtab as follows:

![PHOB_PREORDER_PARTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_preorder_parts.PNG?raw=true)

This is where you double-check the part quantities you've selected and make sure that they're all checked, even if in stock. Once you checkout, JLC will attempt to purchase those parts for you at the quoted price. If they end up costing more, they'll email you about supplementing the cost, and if they end up costing less, you will be refunded the difference. You can check the status of part orders in the "Parts Order History" subtab.

## Ordering the board itself

First, you can download the files available in the **PhobGCCv2-HW Github** in the releases section as shown below:

**[IMAGE OF DOWNLOAD GOES HERE]**

Once you've extracted the files from the .zip, you should have three files. The Gerbers .zip, the bom.csv, and the top-pos.csv. Click "Order Now" on JLCPCB, click "Add Gerber File", and upload the Gerbers.zip. Once the files are uploaded, you should see the board load in as shown below:

![PHOB2_BOARD](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_board.PNG?raw=true)

Once you've checked that the size is set to 86.25x125.5mm, you can progress with configuring it.
The recommended settings are the defaults, plus setting your board quantity, setting "Different Design" to 2, and setting the Surface Finish to ENIG, as seen below:

![PHOB2_SETTINGS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_settings.PNG?raw=true)

Scroll down to PCB Assembly and toggle it on the right.
Select the top side, Economic PCBA Type (Not available for large orders or colors), and confirm parts placement as seen below.
If you choose to use Standard PCBA, JLC will have to add rails to the board, increasing the price significantly.

**NOTE: For large orders more than 50 boards or different colors, Standard Assembly is required. This attaches removable rails to the PCB at a significant extra cost.**

![PHOB2_ASM](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_asm.PNG?raw=true)

Click "Confirm" and then upload the bom.csv to the left and and the top-pos.csv to the right.
Set the usage description to Research/DIY -> DIY HS Code and click "Next".
The text at the top of the next screen should look like the following with all 26 confirmed.
If they are not confirmed, and are not one of the five above in the pre-ordering section, stop ordering and ask in the [PhobGCC Discord](https://discord.gg/yrpUu7mgzm).

![PHOB2_PARTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_parts.PNG?raw=true)

After clicking "Next", you'll be presented with a view of the parts on the board.
If this screen is corrupted, that's okay.
The files are known good and this is just the website bugging out.
You want to make sure there are no red boxes anywhere as those indicate missing components.
You can then click "Save To Cart" and pay for your boards.

# Purchasing Other PhobGCC Parts

The remaining parts can be purchased from distributers as listed below:
* Magnets:
  * [DH1H1 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=DH1H1) - For a jack-of-all trades, use these.
  * [D12 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=d12-n52) - For best control at the rim (like Pivots), use these.
  * [N30H Magnets](https://www.digikey.com/short/br3n8hz3) - For best control at the center (like ICs desyncs), use these.
* High Viscosity Glue:
  * [Gorilla superglue gel](https://www.amazon.com/dp/B00OAAUAX8)
  * [Epoxy](https://www.mcmaster.com/66195A13/)
* Magnet Holders:
  * See the `3d-printing` channel in the discord for printable designs that will hold magnets to the stickbox. Use in concert with the above adhesive for easy and secure attachment.
* Optional Mouse Buttons for ABXYLR:
  * [Low Actuation Force Buttons](https://www.digikey.com/short/q4r0jh3j)
  * [High Actuation Force Buttons](https://www.digikey.com/short/dcddr0jr)
  * [Teflon Tape For Support](https://www.mcmaster.com/76475A51/)
* Optional Discrete Buttons for D-Pad:
  * [SMD Buttons](https://www.digikey.com/short/v93wrw12)

# Purchasing Other GCC Parts

The GCC-specific Parts have a few different methods of acquisition
* Stickboxes
  * T3 GCCs as per [this guide](https://gccontrollerlibrary.com/guides/gamecube-controller-stamps-guide/)
  * Official Wii Classic and Wii Classic Pro Controllers
  * Sold Loose on [Etsy](https://www.etsy.com/)
* Trigger Potentiometers
  * Any GCC
  * Official Wii Classic Controllers (No Handles)
* Cable with a GCC Plug
  * Any GCC
  * Alibaba Cables
  * [Liquid Cable](https://firescc.com/diy-custom-cables)
* Rumble Bracket
  * Any GCC
  * [Wumble](https://github.com/wavtype/wumble)
  * [FIRESCC](https://firescc.com/mod-guides#/rumble-bracket)
* Z-button Switch
  * Stock - Any GCC
  * Tactile - Official Wii Classic Controllers (No Handles)
  * Tactile - [BattleBeaverCustoms](https://battlebeavercustoms.com/products/replacement-gamecube-tactile-z-switch)
  * Tactile - [FIRESCC](https://www.etsy.com/listing/753452766/fires-performance-mod-kit-for-the?)
  * Tactile - [Digikey](https://www.digikey.com/short/hp5vvv7w) **NOTE:  NEEDS SOME MODIFICATION OF CONTROLLER BUTTON RUBBER**
  * Mouseclick - [SimpleControllers](https://simplecontrollers.bigcartel.com/mouseswitch-z)
* Optional Rumble Motor
  * Any GCC
  * [Cellphone Rumble](https://www.amazon.com/10-Pieces-Vibration-Motor-Vibrating/dp/B00N9J3BTG)
