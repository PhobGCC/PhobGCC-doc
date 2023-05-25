# PhobGCC Version 2.0.5 Elecrow Ordering Guide

This is an illustrated guide to ordering PhobGCC PCBs via the Elecrow Board House. Elecrow's boards are significantly higher quality, have less manufacturing issues, and are tested before arrival, so you won't receive non-functional boards. As such, they are the recommended option when it comes to ordering PhobGCC boards.

# Elecrow Ordering Process Overview

1. Download the files.
2. Edit the specification spreadsheet to list your quantity, board color, and text color.
3. Email files to Elecrow PCB Assembly service.
4. Upon quote arrival, you pay for your boards and reply with the order number.
5. Once the boards are assembled, you will receive photos for inspection. Reply that they're fine and they will ship.

## Purchasing the PhobGCC v2.0.5 board from Elecrow

Download the files available in the [PhobGCCv2-HW Github](https://github.com/PhobGCC/PhobGCCv2-HW/releases/tag/v2.0.5) in the releases section as shown below:

![PHOB2_ELECROW_BOARD_RELEASE](/For_Makers/Phob_Ordering_Guide_Images/phob2_elecrow_release.PNG)

Once you've extracted the files from the .zip, you should have two files. The Phob2_Gerbers .zip and the Elecrow Info Excel spreadsheet. Open up the spreadsheet and you should see in the PCB Specification sheet as follows:

![PHOB2_ELECROW_BOARD_OPTIONS](/For_Makers/Phob_Ordering_Guide_Images/phob2_elecrow_options.PNG)

Here is where you'll want to set your board quantity, PCB color, and text color. You can see the exact settings availability on [Elecrow's website](https://www.elecrow.com/pcb-manufacturing.html), but for a short hand you can set board quantities to be 5, 10, 15, 20, 25, 30, 40, 50, 75, and 100. For PCB Color, you can choose between Green, Red, Yellow, Blue, White, Black, Purple, or Matte Black. If, and only if, you order White or Yellow PCBs, you need to change the text color from white to black. Once you have your specifications set, save the file, close it, and re-open it to ensure it saved properly.

You can then draft an email to the Elecrow PCB Assembly Service requesting a quote on how much it would cost to manufacture your boards. You can use the template as follows:

```
Hello!

          I was told to contact you about your PCB Manufacturing and Assembly services. I am inquiring about a quotation of how much it would cost to produce the following project. Attached are all files as requested by your website.

Testing Plan: Plug Micro-USB into computer and it should be recognized as a mass storage device (such as USB Drive).

Note: Please ensure the proper polarity of the Diodes (D1, D2, D5) and the Polarized Capacitor (C1). I have labeled in red the correct polarity for the diodes and the ground side for the capacitor in the parts mapping tab.

Shipping Method: DHL

Shipping Address:

[INSERT YOUR ADDRESS HERE]

-Thank you for your time
--[INSERT YOUR NAME HERE]
```

Attach the Gerbers .zip and the spreadsheet to the email. Title it "PCB Assembly Quotation" and then email it to service@elecrow.com

In 24-48 hours, they will reply with an excel spreadsheet containing the results of your quote. On the Total Page at the bottom will be the final cost. If this cost is acceptable to you, you then proceed to the [Elecrow website for PCB assembly](https://www.elecrow.com/pcb-assembly.html). On here, set the name of the person who emailed you your final cost as the Project Manager name and set the "Qty" as the final cost rounded up to dollar. You can See examples below:

![PHOB2_ELECROW_BOARD_COST](/For_Makers/Phob_Ordering_Guide_Images/phob2_elecrow_cost.PNG)

![PHOB2_ELECROW_BOARD_CHECKOUT](/For_Makers/Phob_Ordering_Guide_Images/phob2_elecrow_web.PNG)

You can then click "Add To Cart", and proceed to checkout. Once you have checked out, you need to make a note of the order #. This will appear on screen immediately, but if you forget, you can check your email for a receipt from Elecrow. You then need to reply to the quotation email with the order number. You can use the template below:

```

Hello,

I have placed the order, my order number is ######.

-Thank you for your time
--[INSERT YOUR NAME]

```

And you are done! In 3-4 weeks you will receive an email with photos of the finished boards. You can view them to see if everything came out cleanly, then reply saying that they are fine and to ship out your order. In 24-48 hours, you will receive another email containing shipping information, including tracking.
