# PhobGCC Version 2.0.X JLCPCB Ordering Guide

This is an illustrated guide to ordering PhobGCC PCBs via the JLCPCB Board House.

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

Since the 2.0.5 board is fully integrated, all of the non-GCC components are soldered onto the board at the board house. Some of these may be out of stock, and as such need to be pre-ordered before you place a board order. Pre-ordered components take on average 2 weeks to arrive at the JLCPCB warehouse after you pay for them. If a component takes longer, you can contact JLCPCB support for a more accurate timeframe of arrival.

The following parts usually have low stock and pre-ordering them is advised:

**NOTE: These part quantities are for a single 2.0.5 board. You need to multiply them by the number of boards you plan to order.**
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

## Purchasing the PhobGCC v2.0.5 board from JLCPCB

**NOTE: Once your pre-ordered SMD Components have come in (report as "Complete" in the parts order history), you may proceed to ordering boards. If they are not in, the parts will not be present on your board**

Download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.5) in the releases section as shown below:

![PHOB2_BOARD_RELEASE](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_board_release.png?raw=true)

Make sure to redownload the latest even if you already downloaded it in the past, as occasionally we make changes to the components to account for stock shortages.

Once you've extracted the files from the .zip, you should have three files. The Phob2_Gerbers .zip, the Phob2_Bom.csv, and the Phob2_Pos.csv. Click "Order Now" on JLCPCB, make sure you are set to "Standard PCB/PCBA" tab, click "Add Gerber File", and upload the Phob2_Gerbers.zip. Once the files are uploaded, you should see the board process and then load in as shown below:

![PHOB2_BOARD](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_board.PNG?raw=true)

Once you've checked that the size is set to 90.26x125.5mm, you can progress with configuring it.
The recommended settings are the defaults, setting your board quantity, setting "Different Design" to 2, and setting the Surface Finish to ENIG, as seen below:

**NOTE: ONLY ORDER THE BOARD QUANTITY YOU HAVE PARTS FOR!**

![PHOB2_SETTINGS](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_settings.PNG?raw=true)

Scroll down to PCB Assembly and toggle it on the right.
Select Standard PCBA Type (Not available for large orders or colors), the top side, and confirm parts placement as seen below.

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
