# PhobGCC Version 2.0.2 Ordering Guide

This is an illustrated guide to acquiring all the parts you need to assemble a PhobGCC  v2.0.2

# Required Parts

The following parts are unique to the PhobGCC and must be acquired per this guide, with no non-identical substitutions.

* 1x PhobGCC v2.0.2 Board
* 4x Magnets
* 4x Underslung Magnet Mounts
* 1x 6-pin Ribbon Cable or 6 Wires
* Optional: 4x D-pad Buttons
* Optional: 6x Mouse Buttons for ABXYLR

The following parts are standard to a GCC and can be acquired via a number of different ways, some of which will be outlined here.

* 2x T3 Stickboxes
* 2x Trigger Potentiometers
* 1x Cable with a GCC Plug
* 1x Rumble Bracket
* 1x Z-button Switch
* Optional: 1x Rumble Motor

## Pre-ordering SMD components

Since the 2.0.2 board is fully integrated, all of the non-GCC components are soldered onto the board at the board house. Some of these may be out of stock, and as such need to be pre-ordered before you place a board order. Pre-ordered components take on average 2 weeks to arrive at the JLCPCB warehouse after you pay for them. If a component takes longer, you can contact JLCPCB support for a more accurate timeframe of arrival.

The following parts usually have low stock and pre-ordering them is advised:

**NOTE: These part quantities are for a single 2.0.2 board. You need to multiply them by the number of boards you plan to order**

* [1x RP2040](https://jlcpcb.com/partdetail/RaspberryPi-RP2040/C2040)
* [1x NOR Flash Chip](https://jlcpcb.com/partdetail/WinbondElec-W25Q128JVSIQ/C97521)
* [4x DRV5055 SMD Hall Sensor](https://jlcpcb.com/partdetail/TexasInstruments-DRV5055A2QDBZR/C266131) (JLC underprices these, you'll be paying $1.70 after the quote)
* [2x MCP3202 ADC](https://jlcpcb.com/partdetail/MicrochipTech-MCP3202_CISN/C56997)
* [1x Crystal Oscillator](https://jlcpcb.com/partdetail/390662-TAXM12M4RKDCDT2T/C403945)

Once you've clicked on each link and added the quantities you need into your cart, click the cart icon in the top right, go to the "Parts Manager Tab", to the "Order Parts" subtab, to the "Cart" subtab as follows:

![PHOB_PREORDER_PARTS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_preorder_parts.PNG?raw=true)

This is where you double-check the part quantities you've selected and make sure that they're all checked, even if in stock. Once you checkout, JLC will attempt to purchase those parts for you at the quoted price. If they end up costing more, they'll email you about supplementing the cost, and if they end up costing less, you will be refunded the difference. You can check the status of part orders in the "Parts Order History" subtab.

## Purchasing the board itself

Soon :)

As pre-ordering components from JLC takes weeks, we are releasing this guide without the board ordering process yet so you won't be bottlenecked when we release this portion later this month.

# Purchasing Other PhobGCC Parts

The remaining parts can be purchased from distributers as listed below:
* Magnets:
  * [DH1H1 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=DH1H1) - For a jack-of-all trades, use these.
  * [D12 Magnets](https://www.kjmagnetics.com/proddetail.asp?prod=d12-n52) - For best control at the rim (like Pivots), use these.
  * [N30H Magnets](https://www.digikey.com/short/br3n8hz3) - For best control at the center (like ICs desyncs), use these.
* Magnet Mounts:
  * **NOTE: PhobGCC v1.X MAGNET MOUNTS WILL BE VERY BAD, AND MAY NOT WORK AT ALL. MAKE SURE TO GET THE UNDERSLUNG MAGNET MOUNTS!**
  * Download [This](https://drive.google.com/file/d/10-lseJ4UK1-HkkXc6rjSJtsYRW7ihsXD/view?usp=share_link) OpenScad file. It is by default set up for DH1H1 Magnets, so you can edit it for whatever magnet you use, adjust it for your printer, and then generate the STL using [OpenScad](https://openscad.org/). Once you have the STL, you can print it using your own machine or check out local makerspaces, libraries, and print shops.
* 6-pin Ribbon Cable:
  * Official Wii Classic Controller
* Wire:
  * 26-gauge stranded wire
  * 28-gauge solid core wire (pre-tined advised)  
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
  * [Kadano's Etsy Store](https://www.etsy.com/listing/1361667533/new-gamecube-controller-potentiometers)
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
  * Heavy Tactile - [BattleBeaverCustoms](https://battlebeavercustoms.com/products/replacement-gamecube-tactile-z-switch)
  * Tactile - [FIRESCC](https://www.etsy.com/listing/753452766/fires-performance-mod-kit-for-the?)
  * Tactile - [Digikey](https://www.digikey.com/short/hp5vvv7w) **NOTE:  NEEDS SOME MODIFICATION OF CONTROLLER BUTTON RUBBER**
  * Mouseclick - [SimpleControllers](https://simplecontrollers.com/)
* Optional Rumble Motor
  * Any GCC
  * [Cellphone Rumble](https://www.amazon.com/10-Pieces-Vibration-Motor-Vibrating/dp/B00N9J3BTG)
