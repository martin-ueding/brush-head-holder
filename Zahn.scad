// Copyright © 2014 Martin Ueding <dev@martin-ueding.de>

// Back side.
cube([19,1,1]);

// Feet.
cube([1,8,1]);
translate([18,0,0]) cube([1,8,1]);

// Pillars.
cube([1,2,10]);
translate([18,0,0]) cube([1,2,10]);

// Top plate.
translate([0,0,10]) difference() {
	cube([19,5,1]);
	translate([3,3.5,0]) cube([1,1.5,1]);
	translate([7,3.5,0]) cube([1,1.5,1]);
	translate([11,3.5,0]) cube([1,1.5,1]);
	translate([15,3.5,0]) cube([1,1.5,1]);
}
