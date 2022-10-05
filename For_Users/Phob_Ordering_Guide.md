# PhobGCC Version 1.2.3 Ordering Guide

This is an illustrated guide to acquiring all the parts you need to assemble a PhobGCC.

# Required Parts

The following parts are unique to the PhobGCC and must be acquired per this guide, with no non-identical substitutions.
* 1 PhobGCC v1.2.3 Board
* 1 Teensy 4.0
* 4 Hall Effect Sensors
* 30 Low Profile Header Pins
* 4 Magnets
* High Viscosity Glue
* Optional: 4x D-pad Buttons
* Optional: 6x Mouse Buttons for ABXYLR

The following parts are standard to a GCC and can be acquired via a number of different ways, some of which will be outlined here.

* 2 Stickboxes
* 2 Trigger Potentiometers
* 1 Cable with a GCC Plug
* Rumble Bracket
* Z-button Switch
* Optional: Rumble Motor

# Purchasing the PhobGCC Board

There are two main ways to acquire a PhobGCC Board. The first way is if you intend to only build a single controller, you can contact a local modder in your region using [this map](https://www.nojonsmods.com/moddermap) to see if they have spare for sale. Alternatively, you can also check [Etsy](https://www.etsy.com/) or [eBay](https://www.ebay.com/) as some often appear for sale. If you cannot find a single board for sale or you intend to build more than one PhobGCC, you can order the boards directly from a board house. The one outlined here will be for [JLCPCB](https://jlcpcb.com/).

First, you can download the files available in the [PhobGCC-HW Github](https://github.com/PhobGCC/PhobGCC-HW/releases) in the releases section as shown below:

![PHOB_HW_FILES](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Ordering_Guide_Images/phob_hw_files.PNG?raw=true)

Once you've extracted the files from the .zip, you should have three files. The Gerbers .zip, the bom.csv, and the top-pos.csv. Click "Order Now" on JLCPCB, click "Add Gerber File", and upload the Gerbers.zip. Once the files are uploaded, you should see the board load in as shown below:

![PHOB_BOARD](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Ordering_Guide_Images/phob_board.PNG?raw=true)

Once you've checked that the size is set to 91.41x147.63mm, you can progress with configuring it.
The recommended settings are the defaults, plus setting your board quantity, setting "Different Design" to 4, and setting the Surface Finish to ENIG, as seen below:

![PHOB_SETTINGS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Ordering_Guide_Images/phob_settings.PNG?raw=true)

Scroll down to PCB Assembly and toggle it on the right.
Select the top side and Economic PCBA Type (Not available for large orders or colors) as seen below.
If you choose to use Standard PCBA, JLC will have to add rails to the board, increasing the price significantly.

![PHOB_ASM](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Ordering_Guide_Images/phob_asm.PNG?raw=true)

Click "Confirm" and then upload the bom.csv to the left and and the top-pos.csv to the right.
Set the usage description to Research -> DIY and click "Next".
The next screen should look like the following below with all 10 confirmed.
If they are not confirmed, stop ordering and ask in the [PhobGCC Discord](https://discord.gg/yrpUu7mgzm).

![PHOB_PARTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Users/Phob_Ordering_Guide_Images/phob_parts.PNG?raw=true)

After clicking "Next", you'll be presented with a view of the parts on the board.
If this screen is corrupted, that's okay.
The files are known good and this is just the website bugging out.
You want to make sure there are no red boxes anywhere as those indicate missing components.
You can then click "Save To Cart" and pay for your boards.

# Purchasing Other PhobGCC Parts

The remaining parts can be purchased from distributers as listed below:
* Teensy 4.0:
  * **NOTE: Most likely out of stock. Ask in the discord**
  * [PJRC](https://www.pjrc.com/store/teensy40.html)
  * [Digikey](https://www.digikey.com/short/93vqqmzm)
  * [Mouser](https://www.mouser.com/ProductDetail/SparkFun/DEV-15583?qs=bZr6mbWTK5kognUaBX05Cg%3D%3D)
  * [Sparkfun](https://www.sparkfun.com/products/15583)
  * [Adafruit](https://www.adafruit.com/product/4323)
* Hall Effect Sensors:
  * **NOTE: For the magnets listed in this guide using the height in the PhobGCC Build Guide, there is no difference between low and high sensitivity sensors**
  * [Digikey Low Sensitivity](https://www.digikey.com/short/8z9r4943)
  * [Digikey High Sensitivity](https://www.digikey.com/short/5qqfr2qh)
  * [Mouser Low Sensitivity](https://www.mouser.com/ProductDetail/Texas-Instruments/DRV5053CAQLPGM?qs=1CfNGUMoiQ%252B%252B%2F8tKZitESA%3D%3D)
  * [Mouser High Sensitivity](https://www.mouser.com/ProductDetail/Texas-Instruments/DRV5053EAQLPG?qs=U0ECReq1GB%2FEJedkxMZGLA%3D%3D)
* Low Profile Header Pins:
  * **NOTE: The main requirement is that the pitch mating is 2.54mm and that the insulation height is 1.52mm. Any headers of this specific size will work. NORMAL ONES WON'T**
  * [Digikey](https://www.digikey.com/short/qmwbq233)
* Magnets:
  * [DH1H1 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=DH1H1) - For a jack-of-all trades, use these.
  * [D12 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=d12-n52) -For best control at the rim (like Pivots), use these.
  * [N30H Magnets](https://www.digikey.com/short/br3n8hz3) -For best control at the center (like ICs desyncs), use these.
* High Viscosity Glue:
  * [Gorilla superglue gel](https://www.amazon.com/dp/B00OAAUAX8)
  * [Epoxy](https://www.mcmaster.com/66195A13/)
* Magnet Holders:
  * See the `3d-printing` channel in the discord for printable designs that will hold magnets to the stickbox. Use in concert with the above adhesive for easy and secure attachment.
* Optional D-pad Buttons:
  * [Low Actuation Force](https://www.digikey.com/short/q4r0jh3j)
  * [High Actuation Force](https://www.digikey.com/short/dcddr0jr)
  * [Teflon Tape For Support](https://www.mcmaster.com/76475A51/)
* Optional Mouse Buttons for ABXYLR:
  * [SMD Pads](https://www.digikey.com/short/v93wrw12)

# Purchasing Other GCC Parts

The GCC-specific Parts have a few different methods of acquisition
* Stickboxes
  * T3 GCCs as per [this guide](https://gccontrollerlibrary.com/guides/gamecube-controller-stamps-guide/)
  * Official Wii Classic and Wii Classic Pro Controllers
  * Sold Loose on [Etsy](https://www.etsy.com/)
* Trigger Potentiometers
  * Official Wii Classic Controllers (No Handles)
  * [Kadano Etsy Shop](https://www.etsy.com/shop/Kadano?ref=simple-shop-header-name&listing_id=1187350029) - if in stock
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
