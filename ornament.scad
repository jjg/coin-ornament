COIN_DIAMETER = 40;
COIN_THICKNESS = 3;
FRAME_THICKNESS = 2;
TOLERANCE = .5;

difference(){
 
    union(){
        
         // hanging loop
        translate([COIN_DIAMETER - 20,0,0]){
            difference(){
                
                // loop
                cylinder(r=10,h=COIN_THICKNESS + 2,$fn=40);
                
                //hole
                translate([0,0,-1]){
                    cylinder(r=8,h=COIN_THICKNESS + 4,$fn=40);
                }
            }
        }
        
        // main body
        cylinder(r=(COIN_DIAMETER/2) + FRAME_THICKNESS, h=COIN_THICKNESS + 2,$fn=(COIN_DIAMETER*2));
    }
 
    // opening through
    translate([0,0,-1]){
        cylinder(r=(COIN_DIAMETER/2) - 1, h=COIN_THICKNESS + 4,$fn=(COIN_DIAMETER*2));
    }
    
    // opening to lip
    translate([0,0,1]){
        cylinder(r=(COIN_DIAMETER/2) + TOLERANCE, h=COIN_THICKNESS + 2,$fn=(COIN_DIAMETER*2));
    }
}