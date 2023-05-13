Notch remapping is done by dividing stick space into triangular shaped regions, then applying an affine transformation(https://brilliant.org/wiki/affine-transformations/) to each triangular shaped region to match up the corners of each region with the desired notches:

![Remap](../General_Info/Notch_Remapping_Images/gate_warp.png)

Region A gets transformed into region A', B into B', etc. This illustration is exaggerated to show how things work, the actual notch positions are not this far off. In this way things can be stretched so that when the stick is in the physical notch, it gives the correct coordinates.

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
