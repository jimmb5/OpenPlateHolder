// OpenPlate Holder
// Adjust the parameters below to fit your specific magnet.

$fn = 60; // Resolution for curves (higher = smoother)

module OpenPlate() {
    
    // Base Plate Dimensions
    width = 60;       // Total width of the base plate (mm)
    depth = 25.5;     // Total depth of the base plate (mm)
    plate_h = 4;      // Thickness of the base plate (mm)
    radius = 5;       // Corner radius for the base plate (mm)
    
    // Magnet Holder Dimensions
    magnet_d = 20;    // Diameter of the magnet hole (mm)
    magnet_h = 9.25;  // Height/Depth of the magnet hole (mm)
    wall = 2.75;      // Wall thickness around the magnet holder (mm)
    
    // Vertical Offsets & Features
    magnet_z_bottom = 2; // Thickness of material below the magnet (mm)
    chamfer = 1.5;       // Size of the chamfer at the top of the magnet hole (mm)

    difference() {
        union() {
            // 1. Create the Base Plate with rounded corners
            hull() {
                translate([-(width/2-radius), -(depth/2-radius), 0]) cylinder(r=radius, h=plate_h);
                translate([(width/2-radius), -(depth/2-radius), 0]) cylinder(r=radius, h=plate_h);
                translate([-(width/2-radius), (depth/2-radius), 0]) cylinder(r=radius, h=plate_h);
                translate([(width/2-radius), (depth/2-radius), 0]) cylinder(r=radius, h=plate_h);
            }

            // 2. Create the protrusion for the magnet holder
            // This sits on top of the base plate
            translate([0, 0, plate_h]) {
                cylinder(d=magnet_d + wall*2, h=(magnet_z_bottom + magnet_h - plate_h));
            }
        }
        
        // 3. Cut out the Magnet Hole
        union() {
            // Main magnet cutout starting from 'magnet_z_bottom' height
            translate([0,0, magnet_z_bottom]) {
                 cylinder(d=magnet_d, h=magnet_h + 10); // +10 to ensure clean cut through top
            }
            
            // Add chamfer to the top edge of the magnet hole
            // Position: at the top of the magnet hole
            // Z = (magnet_z_bottom + magnet_h) - chamfer
            translate([0, 0, magnet_z_bottom + magnet_h - chamfer]) {
                cylinder(d1=magnet_d, d2=magnet_d + chamfer*2, h=chamfer + 0.1); 
            }
        }
    }
}

OpenPlate();
