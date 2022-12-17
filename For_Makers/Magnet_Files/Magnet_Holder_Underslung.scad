//Adjust these to fit your magnets. Dimension is mm (25.4 is the conversion from inches)
magnetLength = 0.105*25.4;//how long it is axially
magnetWidth  = 0.099*25.4;//diameter
magnetOffset = 0.07*25.4;

//Tweak pegWidth to fit on your stickboxes. This will need to be adjusted according to your printer.
// Note that the two different pegs fit differently.
//pegWidth = 0.038*25.4;//this was enough with nothing over it but now it's too tight
pegWidth = 0.040*25.4;
pegHeight = 0.099*25.4;//0.085 was very hard to put on

//don't change these
magnetDiagonal = sqrt(magnetLength^2+magnetWidth^2)+magnetOffset;
magnetLengthScaled = magnetLength*1.05;//to make it not interfere when press-fitting

pegLength = 0.045*25.4;

dia = max(max(0.2*25.4, magnetDiagonal*1.4), magnetDiagonal+0.058*25.4);
height = pegLength+0.75*magnetWidth;

difference() {
    linear_extrude(height) {
        circle(d=dia, $fn=20);
    }
    union() {
        linear_extrude(height*3) {
            square([pegWidth, pegHeight], center=true);
            square([pegWidth, magnetWidth], center=true);
        }
        linear_extrude(pegLength*.5, scale=[0.4, 0.5]) {
            square([pegWidth*1.4, pegHeight*1.3], center=true);
        }
        translate([0, -magnetOffset, pegLength]) {
            linear_extrude(height, scale=[1.0, 1.0]) {
                square([magnetLength, magnetWidth], center=true);
            }
        }
        translate([0, 0, pegLength]) {
            linear_extrude(height) {
                //square([dia*1.1, 1], center=true);
            }
        }
    }
}