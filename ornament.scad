COIN_DIAMETER = 40;
COIN_THICKNESS = 3;

difference(){
    union(){
        translate([COIN_DIAMETER - 20,0,0]){
            difference(){
                cylinder(r=10,h=COIN_THICKNESS + 2);
                translate([0,0,-1]){
                    cylinder(r=8,h=COIN_THICKNESS + 2);
                }
            }
        }
        cylinder(r=(COIN_DIAMETER/2) + COIN_THICKNESS, h=COIN_THICKNESS + 2,$fn=(COIN_DIAMETER*2));
    }
 
    translate([0,0,-1]){
        cylinder(r=(COIN_DIAMETER/2), h=COIN_THICKNESS + 4,$fn=(COIN_DIAMETER*2));
    }
    
    translate([0,0,1]){
        cylinder(r=((COIN_DIAMETER/2) + COIN_THICKNESS - 1), h=COIN_THICKNESS + 2,$fn=(COIN_DIAMETER*2));
    }
}