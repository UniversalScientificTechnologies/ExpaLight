include <polyScrewThread_r1.scad>
$fn=50;

CLEAR = 0.05;

stena_hl = 2;
stena_hlava = 1;
r_telo_in = 20/2;
r_telo_in_min = 17/2;
r_telo_out = r_telo_in + stena_hl;

r_plast_in = r_telo_out + 0.1;
r_plast_out = r_plast_in + 8;

telo_vyska = 100;
telo_vyska_zavit = 10;

hlava_vyska = 15;
r_hlava_out = r_telo_in + stena_hl + 1.5;

led_dira = 3;
led_posun = 8;

sila_pcb = 2.2;

m_pcb_bottom = 50;
m_pcb_top = m_pcb_bottom + 20;

INd = 20;


module body_r(){

    cylinder(m_pcb_bottom,r_telo_in,r_telo_in);
    translate([0,0,m_pcb_top]) cylinder((telo_vyska-telo_vyska_zavit)-m_pcb_top,r_telo_in,r_telo_in);

    translate([0,0,telo_vyska-telo_vyska_zavit-CLEAR]) cylinder(telo_vyska_zavit+CLEAR*2,r_telo_in+1,r_telo_in+1); // Nahradit závitem
				
	translate([0,0,-hlava_vyska]){
				translate([0,0, 0]) cylinder(telo_vyska+hlava_vyska+CLEAR,r_telo_in_min,r_telo_in_min);
				rotate([0,90,0]) translate([-led_posun,0,5]) cylinder(r_hlava_out ,led_dira, led_dira);
				rotate([0,90,0]) translate([-led_posun,0,5+r_hlava_out/3]) cylinder(r_hlava_out/2 ,led_dira, led_dira*2);
				rotate([90,0,0]) translate([0,18,-r_hlava_out]) cylinder(r_hlava_out*2 ,1/2, 1/2);
				translate([-3,sila_pcb/2, -stena_hlava-CLEAR]) cube([6.5,2.5,stena_hlava]);
				translate([-r_telo_in,-sila_pcb/2, 0]) cube([r_telo_in*2,sila_pcb,hlava_vyska+telo_vyska+CLEAR]);
				translate([-sila_pcb/2, -r_telo_in, 0]) cube([sila_pcb, r_telo_in*2,hlava_vyska+telo_vyska+CLEAR]);
			}

}

module body(){
	difference(){
		union(){
			translate([0,0,-hlava_vyska-stena_hlava]){
				cylinder(hlava_vyska+stena_hlava,r_hlava_out,r_hlava_out);
			}
			cylinder(telo_vyska,r_telo_out,r_telo_out);
		}
		body_r();
	}
}

module cap(){
	difference(){
	union(){
		translate([0,0,telo_vyska_zavit-1]) cylinder(stena_hlava, r_hlava_out,r_hlava_out);
		cylinder(telo_vyska_zavit-1+CLEAR,r_telo_in,r_telo_in);
		//screw_thread(INd+3,4,15,100,1,2);
	}union(){
		translate([0,0,-CLEAR]) cylinder(telo_vyska_zavit-stena_hl ,r_telo_in_min,r_telo_in_min);
	}
	}
}


module plast(){
	difference(){
		translate([0,0,CLEAR]) cylinder(telo_vyska-2*CLEAR,r_plast_out,r_plast_out, $fn=6);
		cylinder(telo_vyska,r_plast_in, r_plast_in);
		for(a=[0:6]){
			rotate([0,0,a*(360/6)]) translate([0,r_hlava_out*2.45,0]) cylinder(100, r_hlava_out*1.25, r_hlava_out*1.25);
		}
		translate([0, 0, telo_vyska]) rotate_extrude(convexity=10) translate([r_hlava_out*2,0,0]) circle(r_hlava_out);
		translate([     0,   0,   0]) rotate_extrude(convexity=10) translate([r_hlava_out*2,0,0]) circle(r_hlava_out);
	}
}

//translate([0,0,0]) body();
//translate([0,0,220]) cap();
//color([1,0.5,0.5]) translate([0,0,110]) plast();


body();
translate([0,50,0]) #body_r();

translate([0,-50,0]) plast();

translate([30,0,0]) cap();
