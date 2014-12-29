// Copyright © 2014 Martin Ueding <dev@martin-ueding.de>

// Ground plate.
cube([13,4,0.5]);

height = 0.5;

$fn = 30;

translate([0,0,0.5]) {
    translate([2,2,0]) cylinder(h=2.5, r=.2);
    translate([5,2,0]) cylinder(h=2.5, r=.2);
    translate([8,2,0]) cylinder(h=2.5, r=.2);
    translate([11,2,0]) cylinder(h=2.5, r=.2);

    difference() {
        cube([13,4,.5]);
        translate([1,1,0]) cube([11,2,.5]);

        translate([1,1,.5]) rotate([-90,0,0]) cylinder(h=2, r=.5);
        translate([12,1,.5]) rotate([-90,0,0]) cylinder(h=2, r=.5);

        translate([1,1,.5]) rotate([0,90,0]) cylinder(h=11, r=.5);
        translate([1,3,.5]) rotate([0,90,0]) cylinder(h=11, r=.5);

        translate([1,1,.5]) sphere(r=.5);
        translate([1,3,.5]) sphere(r=.5);
        translate([12,1,.5]) sphere(r=.5);
        translate([12,3,.5]) sphere(r=.5);
    }
}
