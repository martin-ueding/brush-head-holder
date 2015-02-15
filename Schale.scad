// Copyright © 2014-2015 Martin Ueding <dev@martin-ueding.de>

height = 0.3;

// Ground plate.
cube([13,4,height]);

$fn = 100;

module pillar(origin) {

    translate(origin) {
        cylinder(h=3, r=.2);

        translate([0,0,.5]) difference() {
            translate([0,0,-.5]) cylinder(h=.5, r=.7);
            rotate_extrude() translate([.7, 0, 0]) circle(r = .5); 
        }
    }
}

translate([0,0,height]) {
    pillar([2,2,0]);
    pillar([5,2,0]);
    pillar([8,2,0]);
    pillar([11,2,0]);

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

// vim: cindent
