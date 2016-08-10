EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:CAPLIGHT01A-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L JUMP_3X2 J1
U 1 1 56E81073
P 3300 2850
F 0 "J1" H 2950 3050 50  0000 C CNN
F 1 "JUMP_3X2" V 3300 2900 40  0001 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 3300 2850 60  0001 C CNN
F 3 "" H 3300 2850 60  0000 C CNN
	1    3300 2850
	-1   0    0    1   
$EndComp
$Comp
L DIODE D1
U 1 1 56E8111C
P 3900 3150
F 0 "D1" H 3900 3250 40  0000 C CNN
F 1 "M4" H 3900 3050 40  0000 C CNN
F 2 "Mlab_D:SMA_Standard" H 3900 3150 60  0001 C CNN
F 3 "" H 3900 3150 60  0000 C CNN
	1    3900 3150
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 56E8119A
P 4150 3150
F 0 "C1" H 4175 3250 50  0000 L CNN
F 1 "10uF" H 4175 3050 50  0000 L CNN
F 2 "Mlab_R:SMD-0805" H 4188 3000 50  0001 C CNN
F 3 "" H 4150 3150 50  0000 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 56E812E5
P 7850 3550
F 0 "C3" H 7875 3650 50  0000 L CNN
F 1 "50F" H 7875 3450 50  0000 L CNN
F 2 "Mlab_C:C_Radial_D18_L25_P7.5" H 7888 3400 50  0001 C CNN
F 3 "" H 7850 3550 50  0000 C CNN
	1    7850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3350 5850 3350
Wire Wire Line
	5850 2900 3700 2900
$Comp
L GND #PWR01
U 1 1 56E83454
P 3900 3400
F 0 "#PWR01" H 3900 3150 50  0001 C CNN
F 1 "GND" H 3900 3250 50  0000 C CNN
F 2 "" H 3900 3400 50  0000 C CNN
F 3 "" H 3900 3400 50  0000 C CNN
	1    3900 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 56E83486
P 4150 3400
F 0 "#PWR02" H 4150 3150 50  0001 C CNN
F 1 "GND" H 4150 3250 50  0000 C CNN
F 2 "" H 4150 3400 50  0000 C CNN
F 3 "" H 4150 3400 50  0000 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3400 4150 3300
Wire Wire Line
	3900 3400 3900 3350
Connection ~ 3900 2900
Wire Wire Line
	4150 3000 4150 2900
Connection ~ 4150 2900
Wire Wire Line
	3700 2800 3750 2800
Wire Wire Line
	3750 2800 3750 3400
Wire Wire Line
	3700 3000 3750 3000
Connection ~ 3750 3000
$Comp
L GND #PWR03
U 1 1 56E83A58
P 3750 3400
F 0 "#PWR03" H 3750 3150 50  0001 C CNN
F 1 "GND" H 3750 3250 50  0000 C CNN
F 2 "" H 3750 3400 50  0000 C CNN
F 3 "" H 3750 3400 50  0000 C CNN
	1    3750 3400
	1    0    0    -1  
$EndComp
Connection ~ 4850 2900
Text Label 3900 2900 0    60   ~ 0
VIN
$Comp
L R R4
U 1 1 56E85E42
P 6150 5000
F 0 "R4" V 6230 5000 50  0000 C CNN
F 1 "133k" V 6150 5000 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 6080 5000 50  0001 C CNN
F 3 "" H 6150 5000 50  0000 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4850 6150 4800
$Comp
L GND #PWR04
U 1 1 56E8600D
P 6150 5200
F 0 "#PWR04" H 6150 4950 50  0001 C CNN
F 1 "GND" H 6150 5050 50  0000 C CNN
F 2 "" H 6150 5200 50  0000 C CNN
F 3 "" H 6150 5200 50  0000 C CNN
	1    6150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5200 6150 5150
$Comp
L GND #PWR05
U 1 1 56E86076
P 6400 4850
F 0 "#PWR05" H 6400 4600 50  0001 C CNN
F 1 "GND" H 6400 4700 50  0000 C CNN
F 2 "" H 6400 4850 50  0000 C CNN
F 3 "" H 6400 4850 50  0000 C CNN
	1    6400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4850 6400 4800
$Comp
L INDUCTOR_SMALL L1
U 1 1 56E86EF1
P 7350 3250
F 0 "L1" H 7350 3350 50  0000 C CNN
F 1 "DER0705-3.3uH" H 7350 3200 50  0000 C CNN
F 2 "Mlab_L:DER0705" H 7350 3250 50  0001 C CNN
F 3 "" H 7350 3250 50  0000 C CNN
	1    7350 3250
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 56E875AF
P 7850 3050
F 0 "C2" H 7875 3150 50  0000 L CNN
F 1 "100uF" H 7875 2950 50  0000 L CNN
F 2 "Mlab_C:TantalC_SizeC_Reflow" H 7888 2900 50  0001 C CNN
F 3 "" H 7850 3050 50  0000 C CNN
	1    7850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3250 7100 3250
Wire Wire Line
	7600 3250 7700 3250
Wire Wire Line
	7700 3250 7700 3700
Connection ~ 7700 3350
Wire Wire Line
	7850 3200 7850 3400
Connection ~ 7850 3350
Wire Wire Line
	7700 3700 6800 3700
Text Label 6800 4250 0    60   ~ 0
PG
Wire Wire Line
	3900 2400 3900 2950
$Comp
L USB_OTG P1
U 1 1 5771AC18
P 3550 2200
F 0 "P1" V 3673 2388 50  0000 L CNN
F 1 "USB_OTG" V 3582 2388 50  0000 L CNN
F 2 "Mlab_CON:uUSB-B" V 3500 2100 50  0001 C CNN
F 3 "" V 3500 2100 50  0000 C CNN
	1    3550 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 2400 3900 2400
$Comp
L GND #PWR06
U 1 1 5771AF62
P 4050 2100
F 0 "#PWR06" H 4050 1850 50  0001 C CNN
F 1 "GND" H 4055 1927 50  0000 C CNN
F 2 "" H 4050 2100 50  0000 C CNN
F 3 "" H 4050 2100 50  0000 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2000 4050 2000
Wire Wire Line
	4050 1800 4050 2100
Wire Wire Line
	3450 1800 4050 1800
Connection ~ 4050 2000
$Comp
L LED D2
U 1 1 5771A40B
P 8350 3900
F 0 "D2" V 8396 3792 50  0000 R CNN
F 1 "LED" V 8305 3792 50  0000 R CNN
F 2 "Mlab_Pin_Headers:Straight_1x02" H 8350 3900 50  0001 C CNN
F 3 "" H 8350 3900 50  0000 C CNN
	1    8350 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 57726713
P 8350 3550
F 0 "R5" V 8430 3550 50  0000 C CNN
F 1 "68" V 8350 3550 50  0000 C CNN
F 2 "Mlab_R:SMD-1206" V 8280 3550 50  0001 C CNN
F 3 "" H 8350 3550 50  0000 C CNN
	1    8350 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 57728495
P 7850 3800
F 0 "#PWR07" H 7850 3550 50  0001 C CNN
F 1 "GND" H 7855 3627 50  0000 C CNN
F 2 "" H 7850 3800 50  0000 C CNN
F 3 "" H 7850 3800 50  0000 C CNN
	1    7850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3800 7850 3700
$Comp
L GND #PWR08
U 1 1 5776E87A
P 8350 4100
F 0 "#PWR08" H 8350 3850 50  0001 C CNN
F 1 "GND" H 8355 3927 50  0000 C CNN
F 2 "" H 8350 4100 50  0000 C CNN
F 3 "" H 8350 4100 50  0000 C CNN
	1    8350 4100
	1    0    0    -1  
$EndComp
$Comp
L LTC3625 U1
U 1 1 56E80FC2
P 6300 3650
F 0 "U1" H 6100 4550 60  0000 C CNN
F 1 "LTC3625" H 6500 4550 60  0000 C CNN
F 2 "Mlab_IO:DFN-12-1EP_3x4mm_Pitch0.5mm" H 6850 2900 60  0001 C CNN
F 3 "" H 6850 2900 60  0000 C CNN
	1    6300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3550 4850 3550
$Comp
L R R1
U 1 1 57779A79
P 5650 3150
F 0 "R1" V 5730 3150 50  0000 C CNN
F 1 "0" V 5650 3150 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 5580 3150 50  0001 C CNN
F 3 "" H 5650 3150 50  0000 C CNN
	1    5650 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3150 5800 3150
Wire Wire Line
	5500 3150 5500 2900
Connection ~ 5500 2900
Wire Wire Line
	7700 3350 8350 3350
Wire Wire Line
	8350 3350 8350 3400
Wire Wire Line
	4850 2900 4850 4100
Wire Wire Line
	6800 3550 6800 3250
Connection ~ 6800 3250
Wire Wire Line
	7850 2900 6800 2900
Connection ~ 4850 3550
$Comp
L R R6
U 1 1 577C016E
P 7700 4550
F 0 "R6" V 7780 4550 50  0000 C CNN
F 1 "270" V 7700 4550 50  0000 C CNN
F 2 "Mlab_R:SMD-0805" V 7630 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0000 C CNN
	1    7700 4550
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 577C0351
P 7700 4950
F 0 "D3" V 7746 4842 50  0000 R CNN
F 1 "LED" V 7655 4842 50  0000 R CNN
F 2 "Mlab_D:LED_1206" H 7700 4950 50  0001 C CNN
F 3 "" H 7700 4950 50  0000 C CNN
	1    7700 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 4400 7700 4250
Wire Wire Line
	7700 4700 7700 4750
Wire Wire Line
	7700 5150 7700 5300
Wire Wire Line
	7700 5300 6950 5300
Wire Wire Line
	6950 5300 6950 4250
Wire Wire Line
	6950 4250 6800 4250
Text Label 7700 4250 0    60   ~ 0
VIN
Wire Wire Line
	4850 4100 5850 4100
Connection ~ 4850 3350
$EndSCHEMATC
