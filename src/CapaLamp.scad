include <polyScrewThread_r1.scad>
$fn=50;

///////////////////////////////////////
///////////////////////////////////////
////// VER 2  /////////////////////////
///////////////////////////////////////

INd = 20;

module body(){
	difference(){
	union(){
		translate([0,0,-15]) cylinder(15,30/2,30/2);
		cylinder(100,INd/2+3,INd/2+3);
	}union(){
		translate([0,0,-14]) cylinder(100+14,INd/2,INd/2);
		translate([0,0,-10+5/2]) rotate([0,90,0]) cylinder(15,5/2,5/2);
		translate([-3,-3,-15]) cube([3,6,1]);
	}
	}
}

module cap(){
	difference(){
	union(){
		translate([0,0,15]) cylinder(2,30/2,30/2);
		cylinder(15,INd/2-0.5,INd/2-0.5);
		//screw_thread(INd+3,4,15,100,1,2);
	}union(){
		cylinder(13,INd/2-3,INd/2-3);
	}
	}
}

module plast(){
		//rotate([90,0,0]) rotate_extrude(convexity=10) translate([vnitrniD*1.77,0,0]) circle(vnitrniD);
	difference(){
		cylinder(100,INd/2+8,INd/2+8, $fn=6);
		for(a=[0:6]){
			rotate([0,0,a*(360/6)]) translate([0,INd*2.27,0]) cylinder(100, INd*1.5, INd*1.5);
		}
		cylinder(100,INd/2, INd/2);
		screw_thread(INd+4,4,20,100,1,2);
		translate([0, 0, 100]) rotate_extrude(convexity=10) translate([INd*1.77,0,0]) circle(INd);
		translate([0,   0,   0]) rotate_extrude(convexity=10) translate([INd*1.77,0,0]) circle(INd);
	}
}

//translate([0,0,0]) body();
//translate([0,0,220]) cap();
//color([1,0.5,0.5]) translate([0,0,110]) plast();


cube([10,10,5]);