include <polyScrewThread_r1.scad>
$fn=100;

/*

module body(delka, vnitrniD, stran){
	//rotate([90,0,0]) rotate_extrude(convexity=10) translate([vnitrniD*1.77,0,0]) circle(vnitrniD);
	rotate([90,0,0]) difference(){
		cylinder(delka,vnitrniD/2+8,vnitrniD/2+8, $fn=stran);
		for(a=[0:stran]){
			rotate([0,0,a*(360/stran)]) translate([0,vnitrniD*2.27,0]) cylinder(delka, vnitrniD*1.5, vnitrniD*1.5);
		}
		cylinder(delka,vnitrniD/2, vnitrniD/2);
		screw_thread(vnitrniD+4,4,55,delka,1,2);
		translate([0, 0, delka]) rotate_extrude(convexity=10) translate([vnitrniD*1.77,0,0]) circle(vnitrniD);
		translate([0,   0,   0]) rotate_extrude(convexity=10) translate([vnitrniD*1.77,0,0]) circle(vnitrniD);

	}
}
module body_label(delka, vnitrniD, stran, text, text2){
	//difference(){
		body(delka, vnitrniD, stran);
		//union(){
			//rotate([0,0,90]) translate([-delka/2,0,14]) text(text, halign = "center", valign = "center", font = "Liberation Sans:style=Bold");
			//rotate([0,0,90]) translate([-delka/2,0,-14]) text(text2, halign = "center", valign = "center");
		//}
	//}
	rotate([90,0,0]) cylinder(2,vnitrniD*0.775, vnitrniD*0.775);
}


module screw(delka, vnitrniD, diraD){
	rotate([90,0,0]) difference(){
		screw_thread(vnitrniD+2.5,4,55,delka,1,2);
		cylinder(delka,diraD/2, diraD/2);
	}
}


module screw_USBmicro(delka, vnitrniD, diraD){
	screw(delka, vnitrniD, diraD);
	rotate([90,0,0]) difference() {
		union(){
			cylinder(15, 17/2, 17/2);
			cylinder(2,vnitrniD*0.775, vnitrniD*0.775);
		}
		translate([0,0,1]) cylinder( 15, 13/2, 13/2);
		translate([-1, 0, 0]) cube([3,8,10], center = true);
		translate([1.5, 0, 1+15/2 ]) cube([2,15,15], center = true);
	}

}

module screw_head(delka, vnitrniD, diraD){
	screw(delka, vnitrniD, diraD);
	rotate([90,0,0]) union() {difference() {
		union(){
			cylinder(delka, 17/2, 17/2);
		}
		translate([0,0, 8]) cylinder( delka, 13/2, 13/2);
		translate([0,0, 0]) cylinder( 5, 13/2, 13/2);
		translate([0,0,-1]) cylinder( delka, 3.2/2, 3.2/2);
		translate([0,0, 5]) cylinder( 3, 6/2, 6/2, $fn=6);
		//translate([0, diraD/2-2, 0]) cylinder( delka, 2/2, 2/2);
		//translate([0,-diraD/2+2, 0]) cylinder( delka, 2/2, 2/2);
	}
	translate([0, 0, 0]) #cube( 3, 3, 2);
	}
}

module end_head(delka, vnitrniD, stran){
	bocnistena = 2;
	rotate([90,0,0]){ difference(){
		union(){
			cylinder(3,12/2,12/2);
			translate([0,0,3]) cylinder(delka, 27.5/2, 27.5/2);
			translate([0,0,3]) cylinder(0.3, 27.5/2, 27.5/2);
		}
		union(){
			cylinder(5,12/2-1.5,12/2-1.5);
			translate([0,4,1.5]) rotate([0,0,45]) cube([10,10,3], center=true);
			translate([0,0,4]) cylinder(delka-2-4, 27.5/2-bocnistena, 27.5/2-bocnistena);					// vnitrek -- tloustka steny
			translate([0,0,4+delka-2-4]) cylinder(2, 3/2, 3/2);
			translate([0,0,4+delka-2-4+2]) cylinder(3.2, 7/2, 7/2);				
			rotate([0,90,0]) translate([-delka/2-2,0,5]) cylinder(10, 5/2, 5/2);		// dira pro led
		}
		
		//cylinder(delka,vnitrniD/4, vnitrniD/4);
		//screw_thread(vnitrniD+4,4,55,delka,1,2);
		}
		translate([0,0,4-0.25]) cylinder(0.25, 27.5/2, 27.5/2);
	}
}

module head2(delka, vnitrniD, stran){
	rotate([90,0,0]) difference(){
		cylinder(delka,vnitrniD/2+8,vnitrniD/2+8, $fn=stran);
		for(a=[0:stran]){
			rotate([0,0,a*(360/stran)]) translate([0,vnitrniD*2.27,0]) cylinder(delka, vnitrniD*1.5, vnitrniD*1.5);
		}
		cylinder(delka,vnitrniD/2, vnitrniD/2);
		screw_thread(vnitrniD+4,4,55,delka,1,2);
	}
}



module head(delka, vnitrniD, stran){
	delkasroub=10;
	
	rotate([90,360/12,0]) difference(){
		union(){
			cylinder(delka,vnitrniD/2+8, vnitrniD/2+8, $fn=stran);
			//translate([0,-delka/2,0]) cube([delka,vnitrniD/2 , delka]);
		}
		screw_thread(vnitrniD+4-2,4,55,delka+delkasroub,1,2);
		translate([0,0,1]) cylinder(delka-2,vnitrniD/2+8-4,vnitrniD/2+8-4, $fn=stran);
		translate([0,0,1]) cylinder(delka+delkasroub,vnitrniD/2-1.5, vnitrniD/2-1.5);
		}
	rotate([90,0,0]) intersection(){ 
			translate([-50/2,-delka/2,0]) cube([50,vnitrniD/2 , delka]);
			rotate([0,0,360/12]) cylinder(delka,vnitrniD/2+8, vnitrniD/2+8, $fn=stran);
	}
}

//body(70, 18, 6);
//body_label(100, 18, 6, "Ahoj", "TEXT 2");
//screw(8, 18, 15); // 8,18,15 fn 50 OK
//screw(16, 18, 15);
// screw_USBmicro(15, 18, 15);
//screw_head(12, 18, 15);
//end_head(15, 18, 15);
//translate([0,50,0]) head(30, 18, 6);
//translate([0,50,0]) head2(30, 18, 6);

*/

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
color([1,0.5,0.5]) translate([0,0,110]) plast();
