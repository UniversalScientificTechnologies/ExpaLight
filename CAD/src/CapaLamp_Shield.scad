$fn=100;


CLEAR = 0.05;
perimeter = 0.43;

text2 = "jmeno";

stena_hl = 2;
stena_hlava = 1; // spodni stena u usb
r_telo_in = 19.2/2;
r_telo_in_min = r_telo_in ;
r_telo_out = r_telo_in + stena_hl;

r_zavit = r_telo_in;

r_plast_in = r_telo_out + 0.1;
r_plast_out = r_plast_in + 8;

telo_vyska = 80;
telo_vyska_zavit = 10;

hlava_vyska = 15;
r_hlava_out = r_telo_out + 1.75;

led_dira = 3;
led_koule = 10;
led_koule_zanoreni = 3;
led_posun = 9;
led_mezera = 3;

sila_pcb = 1.8;
sila_prb_sirsi = sila_pcb + 0.5; // sirsi sila drazky pro snadnejsi zasunuti

m_pcb_bottom = 35;
m_pcb_top = m_pcb_bottom + 30;
m_pcb_width = 21;
m_pcb_width_sirsi = 22;
m_pcb_length = 30;

INd = 50;

module shield() {
    difference(){
        union(){
            cylinder (hlava_vyska+stena_hlava+0.4, r_hlava_out + 1*perimeter+0.2, r_hlava_out + 1*perimeter+0.2 );
            translate ([0, 0, -1]) cylinder (1, r_hlava_out, r_hlava_out + 1*perimeter+0.2);
        }
        cylinder (hlava_vyska+stena_hlava+1+CLEAR, r_hlava_out+0.2, r_hlava_out +0.2);
        translate ([0, 0, -1]) cylinder (2, r_plast_in+0.2, r_plast_in+0.2 );
        rotate([0,90,0]) translate([-hlava_vyska-stena_hlava + led_posun,0,m_pcb_width/2+perimeter]) cylinder(r_hlava_out ,led_dira, led_dira);
        }
}




translate ([0,0,0]) shield();
