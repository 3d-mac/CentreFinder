// define variables

widthOverall = 95;
pegDiameter = 10;
penBarrelDiameter = 12;

module pegHoles(pegDiameter) {
    //Difference so we can make the holes
    linear_extrude(height = 20, slices = 60) {
    difference() {
 
    hull(){
    // Pen barrel
    offset(delta = 3) {
        circle(d = penBarrelDiameter, $fn = 40);
    }
    mirror([widthOverall/-2,0,0]) {
        translate([widthOverall/2,0,0]) {
            offset(delta = 2) {
                circle(d = pegDiameter, $fn = 40);
            }
    }
}
// second pegHole as a postive x-integer direction
        translate([widthOverall/2,0,0]) {
            offset(delta = 2) {
                circle(d = pegDiameter, $fn = 40);
            }
        }
    }
        circle(d = penBarrelDiameter, $fn = 40);
        translate([widthOverall/2,0,0]) {    
            circle(d = pegDiameter, $fn = 40);
        }
        translate([widthOverall/-2,0,0]) {    
            circle(d = pegDiameter, $fn = 40);
        }
    }
}
}

pegHoles(pegDiameter);
penHolder(penBarrelDiameter);
