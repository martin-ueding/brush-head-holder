// Copyright © 2014 Martin Ueding <dev@martin-ueding.de>

// Ground plate.
cube([10,4,0.5], center=true);

height = 0.5;

$fn = 100;

translate([0,0,0.25]) {
    translate([-3.5,0,0]) cylinder(h=2.5, r=.2);
    translate([-1.25,0,0]) cylinder(h=2.5, r=.2);
    translate([1.25,0,0]) cylinder(h=2.5, r=.2);
    translate([3.5,0,0]) cylinder(h=2.5, r=.2);

    translate([-5,1.5,0]) cube([10,.5,height]);
    translate([-5,-2,0]) cube([10,.5,height]);

    translate([4.5,-2,0]) cube([.5,4,height]);
    translate([-5,-2,0]) cube([.5,4,height]);
}
