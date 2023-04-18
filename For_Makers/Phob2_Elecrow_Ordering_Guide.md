# PhobGCC Version 2.0.5 Elecrow Ordering Guide

This is an illustrated guide to ordering PhobGCC PCBs via the Elecrow Board House. Elecrow's boards are significantly higher quality, have less manufacturing issues, and are tested before arrival, so you won't receive non-functional boards. As such, they are the recommended option when it comes to ordering PhobGCC boards.

## Purchasing the PhobGCC v2.0.5 board from Elecrow

Download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.2) in the releases section as shown below:

![PHOB2_ELECROW_BOARD_RELEASE](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_elecrow_release.PNG?raw=true)

Once you've extracted the files from the .zip, you should have two files. The Phob2_Gerbers .zip and the Elecrow Info Excel spreadsheet. Open up the spreadsheet and you should see in the PCB Specification sheet as follows:

![PHOB2_ELECROW_BOARD_RELEASE](https://github.com/PhobGCC/PhobGCC-doc/blob/main/For_Makers/Phob_Ordering_Guide_Images/phob2_elecrow_options.PNG?raw=true)

Here is where you'll want to set your board quantity, PCB color, and text color. You can see the exact settings availability on [Elecrow's website](https://www.elecrow.com/pcb-manufacturing.html), but for a short hand you can set board quantities to be 5, 10, 15, 20, 25, 30, 40, 50, 75, and 100. For PCB Color, you can choose between Green, Red, Yellow, Blue, White, Black, Purple, or Matte Black. If, and only if, you order White or Yellow PCBs, do you need to change the text color from white to black. Once you have your specifications set, save the file, close it, and re-open it to ensure it saved properly.

You can then draft an email to the Elecrow PCB Assembly Service requesting a quote on how much it would cost to manufacture your boards. You can expect Elecrow to be 50% more expensive than JLCPCB. You can use the template as follows:

```
Hello!

          I was told to contact you about your PCB Manufacturing and Assembly services. I am inquiring about a quotation of how much it would cost to produce the following project. Attached are all files as requested by your website.

Testing Plan: Plug Micro-USB To Computer and It should be recognized as a mass storage device (such as USB Drive).

Note: Please Ensure the proper polarity of the Diodes (D1-D5) and the Polarized Capacitor (C1). I have labeled in red the correct polarity for the diodes and the ground side for the capacitor in the parts mapping tab.

Shipping Method: DHL

Shipping Address:

[INSERT YOUR ADDRESS HERE]

-Thank you for your time
--[INSERT YOUR NAME HERE]
```
