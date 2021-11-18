//include <polyScrewThread_r1.scad>
use <Thread_Library.scad>
use <MLAB_logo.scad>
use <spring.scad>


$fn=200;

CLEAR = 0.05;
perimeter = 0.43;

text2 = "";

stena_hl = 2;
stena_hlava = 1; // spodni stena u usb
r_telo_in = 19.2/2;
r_telo_in_min = r_telo_in ;
r_telo_out = r_telo_in + stena_hl;

r_zavit = r_telo_in;

r_plast_in = r_telo_out + 0.5;
r_plast_out = r_plast_in + 8;

telo_vyska = 80;
telo_vyska_zavit = 10;

hlava_vyska = 15;
r_hlava_out = r_telo_out + 1.75;

led_dira = 3/2;
led_koule = 10;
led_koule_zanoreni = 3;
led_posun = 9;
led_mezera = 3;

sila_pcb = 1.8;
sila_prb_sirsi = sila_pcb + 0.5; // sirsi sila drazky pro snadnejsi zasunuti

m_pcb_offser = -0.15; //posun drazky pro pcb - kladna hodnota je posun k led
m_cap_offser = -0.75; //posun mista pro kondenzator - kladna hodnota je posun k led
m_pcb_bottom = 35;
m_pcb_top = m_pcb_bottom + 30;
m_pcb_width = 21;
m_pcb_width_sirsi = 22;
m_pcb_length = 30;

stena_vicko = 5;

INd = 50;


module body_r(){
    //cylinder(m_pcb_bottom,r_telo_in,r_telo_in);
    //translate([0,0,m_pcb_top]) #cylinder((telo_vyska-telo_vyska_zavit)-m_pcb_top,r_telo_in,r_telo_in);
    //translate([0,0,telo_vyska-telo_vyska_zavit-CLEAR]) cylinder(telo_vyska_zavit+10+CLEAR*2,r_telo_in_min+1,r_telo_in_min +1); // Nahradit závitem
	 //translate([0,0,telo_vyska-telo_vyska_zavit-CLEAR]) cylinder(telo_vyska_zavit+CLEAR*2,r_telo_in+1,r_telo_in+1); // Nahradit závitem

	translate([0,0,telo_vyska-telo_vyska_zavit-CLEAR-10]){
		trapezoidThread(
			length=telo_vyska_zavit+CLEAR+15,		// axial length of the threaded rod
			pitch=5, 						// axial distance from crest to crest
			pitchRadius=r_zavit, 		// radial distance from center to mid-profile
			threadHeightToPitch=0.5, 		// ratio between the height of the profile and the pitch
			profileRatio=0.5, 				// ratio between the lengths of the raised part of the profile and the pitch
			threadAngle=30,					// angle between the two faces of the thread
			RH=true, 						// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
			clearance=0.1, 					// radial clearance, normalized to thread height
			backlash=0.1, 					// axial clearance, normalized to pitch
			stepsPerTurn=50 				// number of slices to create per turn
		);
	}


	translate([0,0,-hlava_vyska]){
				translate([0,0, 0]) cylinder(telo_vyska+hlava_vyska+CLEAR,r_telo_in_min,r_telo_in_min);

                translate([m_pcb_offser,0,0]){

				   #translate([(m_cap_offser-m_pcb_offser),0, 0]) cylinder(telo_vyska+hlava_vyska+CLEAR,r_telo_in_min,r_telo_in_min);
                    translate([-2*sila_pcb, -7/2, -stena_hlava-CLEAR]) cube([3, 7, stena_hlava+2*CLEAR]);                      // USB konektor díra

                    translate([-sila_pcb/2,-m_pcb_width/2, 0]) cube([sila_pcb, m_pcb_width, hlava_vyska+telo_vyska+CLEAR+10]);                                                                      // Drazka na PCB
                    translate([-sila_prb_sirsi/2,-m_pcb_width_sirsi/2, m_pcb_length+5]) cube([sila_prb_sirsi, m_pcb_width_sirsi, hlava_vyska+telo_vyska+CLEAR+10]);                // Drazka na PCB prechod
                    hull(){
                        translate([-sila_pcb/2,-m_pcb_width/2, m_pcb_length]) cube([sila_pcb, m_pcb_width, 0.1]);                                                   // Drazka na PCB
                        translate([-sila_prb_sirsi/2,-m_pcb_width_sirsi/2, m_pcb_length+5]) cube([sila_prb_sirsi, m_pcb_width_sirsi, 0.1]);                // Drazka na PCB prechod
                    }

                }
        // okenko pro led
                difference(){
                    union(){
                        rotate([0,90,0]) translate([-led_posun,0,0]) cylinder(r_hlava_out ,led_dira, led_dira);
                        translate([r_plast_out-led_koule_zanoreni, 0, led_posun]) resize(newsize=[1.5*led_koule,1*led_koule,1*led_koule]) sphere(led_koule);   // Koule (elipsoid) jako parabola pro led
                    }
                    //cylinder (hlava_vyska, r_telo_in+perimeter, r_telo_in+perimeter);
                }
                // translate([4.75,0, 5]) cylinder(150, 5, 5);
				//#intersection(){
					//translate([0,0, CLEAR]) cylinder(hlava_vyska+CLEAR,r_telo_in-CLEAR,r_telo_in-CLEAR);
					//union(){
					//	translate([-r_telo_in_min, -r_telo_in, 0]) cube([r_telo_in_min*2,r_telo_in*2, hlava_vyska]);
					//}
				//}
				//intersection(){
					translate([0,0, m_pcb_bottom+hlava_vyska-CLEAR]) cylinder(telo_vyska+hlava_vyska+CLEAR,r_telo_in-CLEAR,r_telo_in-CLEAR);
					//translate([-r_telo_in, -r_telo_in_min, m_pcb_bottom+hlava_vyska]) cube([r_telo_in*2,r_telo_in_min*2, m_pcb_top - m_pcb_bottom]);
				//}

			}

}

module body(){
	difference(){
		union(){
			translate([0,0,-hlava_vyska+CLEAR]) cylinder(hlava_vyska, r_hlava_out, r_hlava_out);
			translate([0,0,-hlava_vyska-stena_hlava+CLEAR]) cylinder(stena_hlava, r_hlava_out-1, r_hlava_out);
			cylinder(telo_vyska,r_telo_out,r_telo_out);
		}
		body_r();
	}
}


module head_modificator(){
    translate([0,0,-(hlava_vyska+stena_hlava)]) cylinder(hlava_vyska+stena_hlava+1, r_hlava_out+1, r_hlava_out+1);
}

module body_modificator(){
    translate([0,0,1]) cylinder(telo_vyska+1,r_telo_out+1,r_telo_out+1);
}

module cap(){
    zavit = r_zavit - 0.6;
    echo ("######################################");
    echo ("######################################");
    echo("---------------------------------- VICKO ----------------------------------------");
    echo ("Tloustka spodni steny vicka", stena_vicko);
    echo ("vyska zavitu vicka", (telo_vyska_zavit-CLEAR+5-stena_vicko));
    echo ("r zavitu", zavit);
    echo ("r vicka", r_hlava_out);
    echo ("######################################");
	difference(){
	union(){
		translate([0,0,telo_vyska_zavit-1]) cylinder(stena_vicko-1, r_hlava_out,r_hlava_out);
		translate([0,0,stena_vicko+telo_vyska_zavit-2]) cylinder(1, r_hlava_out,r_hlava_out-1);
		translate([0,0,1]) cylinder(telo_vyska_zavit, 18/2,18/2);
		intersection(){
            translate([0,0,stena_hlava])
                trapezoidThread(
                    length=telo_vyska_zavit-CLEAR+5-stena_vicko,		// axial length of the threaded rod
                    pitch=5, 						// axial distance from crest to crest
                    pitchRadius=zavit, 		// radial distance from center to mid-profile
                    threadHeightToPitch=0.5, 		// ratio between the height of the profile and the pitch
                                                    // std value for Acme or metric lead screw is 0.5
                    profileRatio=0.5, 				// ratio between the lengths of the raised part of the profile and the pitch
                                                    // std value for Acme or metric lead screw is 0.5
                    threadAngle=30,					// angle between the two faces of the thread
                                                    // std value for Acme is 29 or for metric lead screw is 30
                    RH=true, 						// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
                    clearance=0.1, 					// radial clearance, normalized to thread height
                    backlash=0.1, 					// axial clearance, normalized to pitch
                    stepsPerTurn=50 				// number of slices to create per turn
                );
			cylinder(telo_vyska_zavit,30,30);
		}
	}union(){
        translate([-4,-4,-1]) cube([8,8,telo_vyska_zavit]); // dira pro pruzinu
		//translate([0,0,-CLEAR]) cylinder(telo_vyska_zavit-stena_hl ,r_telo_in_min*3/4-1,r_telo_in_min*3/4-1);
        //translate([0,-8, telo_vyska_zavit-0.2]) rotate([0,0,0]) linear_extrude(height = 0.25) text("IP11", halign="center", valign="center", size=4 );
	}
	}
}




module plast(text1, text2){
	rotate([0,0,360/6/2]) difference(){
		translate([0,0,CLEAR]) cylinder(telo_vyska-2*CLEAR, r_plast_out, r_plast_out, $fn=6);
		cylinder(telo_vyska,r_plast_in, r_plast_in);
		for(a=[0:6]){
			rotate([0,0,a*(360/6)]) translate([0,r_hlava_out*2.375,0]) cylinder(100, r_hlava_out*1.25, r_hlava_out*1.25);
		}
		translate([0, 0, telo_vyska]) rotate_extrude(convexity=10) translate([r_hlava_out*2,0,0]) circle(r_hlava_out);
		translate([     0,   0,   0]) rotate_extrude(convexity=10) translate([r_hlava_out*2,0,0]) circle(r_hlava_out);
	}
    translate([r_plast_out-5-0.8,0,telo_vyska/2]) rotate([0,90,0]) linear_extrude(height = 2)  text(text1, halign="center", valign="center", size=8 );
    translate([-(r_plast_out-5)+1.2,0,telo_vyska/2]) rotate([0,90,180]) linear_extrude(height = 2) text(text2, halign="center", valign="center", size=8 );
		if (len(text2) == 0)
    translate([-r_plast_out+5+1.25,0,telo_vyska/2])
			rotate([0,90,180])
					scale([0.15,0.15,0.52])
							MLAB_logo_short();
}

module pruzinka(){
    lenght = 21;
    cube_lenght = telo_vyska_zavit-1;
    cube_size = 7.5;

    echo("delka kostky");
    echo(cube_lenght);

    difference(){
        union(){
            translate([-1,-cube_size/2,0]) cube([cube_lenght, cube_size, cube_size]);
            translate([cube_lenght,0,0]) spring4(21, 4, 180+60, 1.2, 7.5, 100);
        }
       translate([lenght+2,-10,0]) cube(20);
       //translate([lenght,-1,0]) cube([5,2, cube_size]);
    }
       translate([lenght+1,-cube_size/2,0]) cube([1,cube_size,cube_size]);
}


//translate([0,0,0]) body();
//translate([0,0,220]) cap();
//color([1,0.5,0.5]) translate([0,0,110]) plast();


//body();
//body_r();

//translate([0,50,0]) body_r();

//head_modificator();
//body_modificator();

//body();
//rotate([0,180,0]) cap();
//pruzinka();
