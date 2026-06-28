v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -460 -190 -430 -190 {lab=#net1}
N -220 -10 0 -10 {lab=VOUT_LP}
N -340 -190 -340 -160 {lab=#net2}
N -370 -190 -340 -190 {lab=#net2}
N -340 -100 -340 -60 {lab=0}
N -460 -270 -460 -190 {lab=#net1}
N -480 -190 -460 -190 {lab=#net1}
N -460 -270 -180 -270 {lab=#net1}
N -120 -270 0 -270 {lab=VOUT_LP}
N 0 70 20 70 {lab=VOUT_HP}
N -220 350 0 350 {lab=VOUT_HP}
N -600 -20 -540 -20 {lab=VIN}
N -540 -190 -540 -20 {lab=VIN}
N 0 70 -0 220 {lab=VOUT_HP}
N -120 70 0 70 {lab=VOUT_HP}
N 0 220 0 350 {lab=VOUT_HP}
N 0 -270 0 -130 {lab=VOUT_LP}
N -20 -130 0 -130 {lab=VOUT_LP}
N 0 -130 -0 -10 {lab=VOUT_LP}
N 0 -270 20 -270 {lab=VOUT_LP}
N -340 -190 -220 -190 {lab=#net2}
N -540 -20 -540 160 {lab=VIN}
N -460 160 -430 160 {lab=#net3}
N -370 160 -340 160 {lab=#net4}
N -340 160 -340 200 {lab=#net4}
N -340 260 -340 300 {lab=0}
N -340 160 -220 160 {lab=#net4}
N -460 70 -460 160 {lab=#net3}
N -480 160 -460 160 {lab=#net3}
N -460 70 -180 70 {lab=#net3}
N -120 -50 -120 -30 {lab=V_SS}
N -220 -190 -220 -160 {lab=#net2}
N -220 -160 -200 -160 {lab=#net2}
N -220 -100 -220 -10 {lab=VOUT_LP}
N -220 -100 -200 -100 {lab=VOUT_LP}
N -80 -240 -80 -210 {lab=I_BIAS}
N -130 300 -130 330 {lab=V_SS}
N -220 190 -210 190 {lab=#net4}
N -220 160 -220 190 {lab=#net4}
N -220 250 -220 350 {lab=VOUT_HP}
N -220 250 -210 250 {lab=VOUT_HP}
N -90 120 -90 140 {lab=I_BIAS}
N -130 120 -130 140 {lab=V_DD}
N -30 220 -0 220 {lab=VOUT_HP}
N -120 -240 -120 -210 {lab=V_DD}
N -80 -50 -80 -20 {lab=V_DD}
N -90 300 -90 330 {lab=V_DD}
N 0 220 150 220 {lab=VOUT_HP}
N 0 -130 520 -130 {lab=VOUT_LP}
N 210 220 240 220 {lab=#net5}
N 240 220 240 250 {lab=#net5}
N 240 90 240 220 {lab=#net5}
N 240 90 290 90 {lab=#net5}
N 350 90 500 90 {lab=#net6}
N 500 -20 500 90 {lab=#net6}
N 500 -20 510 -20 {lab=#net6}
N 620 -130 670 -130 {lab=#net7}
N 620 -130 620 -20 {lab=#net7}
N 580 -130 620 -130 {lab=#net7}
N 570 -20 620 -20 {lab=#net7}
N 270 -420 270 -410 {lab=V_DD}
N 350 -420 350 -410 {lab=I_BIAS}
N 240 250 310 250 {lab=#net5}
N 280 190 310 190 {lab=0}
N 500 90 520 90 {lab=#net6}
N 520 90 520 220 {lab=#net6}
N 490 220 520 220 {lab=#net6}
N 620 -20 620 40 {lab=#net7}
N 620 40 680 40 {lab=#net7}
N 650 -20 680 -20 {lab=0}
N 730 -130 890 -130 {lab=VOUT_CROSS}
N 890 -130 890 10 {lab=VOUT_CROSS}
N 860 10 890 10 {lab=VOUT_CROSS}
N 890 10 930 10 {lab=VOUT_CROSS}
N 760 90 760 110 {lab=0}
N 390 300 390 320 {lab=V_SS}
N 430 300 430 320 {lab=V_DD}
N 800 90 800 110 {lab=V_DD}
N 760 -100 760 -70 {lab=V_DD}
N 390 110 390 140 {lab=V_DD}
N 430 110 430 140 {lab=I_BIAS}
N 800 -100 800 -70 {lab=I_BIAS}
N 410 -420 410 -410 {lab=V_SS}
C {res.sym} -510 -190 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {res.sym} -400 -190 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} -340 -130 0 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -340 -60 0 0 {name=l1 lab=0}
C {capa.sym} -150 -270 3 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -510 160 3 0 {name=C3
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -400 160 3 0 {name=C4
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {res.sym} -150 70 3 0 {name=R3
value=R_HP
footprint=1206
device=resistor
m=1}
C {res.sym} -340 230 0 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {gnd.sym} -340 300 0 0 {name=l2 lab=0}
C {opin.sym} 20 -270 0 0 {name=p2 lab=VOUT_LP}
C {opin.sym} 20 70 0 0 {name=p3 lab=VOUT_HP}
C {ipin.sym} -600 -20 0 0 {name=p1 lab=VIN}
C {res.sym} 320 90 3 0 {name=R10
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 180 220 3 0 {name=R11
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 280 190 0 0 {name=l6 lab=0}
C {res.sym} 700 -130 3 0 {name=R12
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 540 -20 3 0 {name=R13
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 650 -20 0 0 {name=l9 lab=0}
C {res.sym} 550 -130 3 0 {name=R14
value=R_IN
footprint=1206
device=resistor
m=1}
C {opin.sym} 930 10 0 0 {name=p9 lab=VOUT_CROSS}
C {004_Real_Circuits/001_version_basic_ota_pretl/ota-5t.sym} -120 -130 0 0 {name=x1}
C {004_Real_Circuits/001_version_basic_ota_pretl/ota-5t.sym} -130 220 0 0 {name=x2}
C {004_Real_Circuits/001_version_basic_ota_pretl/ota-5t.sym} 390 220 0 0 {name=x3}
C {iopin.sym} 270 -420 3 0 {name=p4 lab=V_DD}
C {iopin.sym} 350 -420 3 0 {name=p7 lab=I_BIAS}
C {lab_pin.sym} 270 -410 3 0 {name=p20 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 350 -410 3 0 {name=p21 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -120 -240 0 0 {name=p5 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -130 120 0 0 {name=p6 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -90 330 2 0 {name=p8 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -80 -20 2 0 {name=p10 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -80 -240 2 0 {name=p11 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -90 120 2 0 {name=p12 sig_type=std_logic lab=I_BIAS}
C {004_Real_Circuits/001_version_basic_ota_pretl/ota-5t.sym} 760 10 0 0 {name=x4}
C {lab_pin.sym} 390 110 0 0 {name=p13 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 760 -100 0 0 {name=p14 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 800 110 2 0 {name=p15 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 430 320 2 0 {name=p16 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 430 110 2 0 {name=p17 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 800 -100 2 0 {name=p18 sig_type=std_logic lab=I_BIAS}
C {param.sym} -500 -560 0 0 {name=s1 value="C_LP=1.06e-8"}
C {param.sym} -500 -540 0 0 {name=s2 value="R_LP=100k"}
C {param.sym} -220 -560 0 0 {name=s3 value="C_HP=50e-10"}
C {param.sym} -220 -540 0 0 {name=s4 value="R_HP=212.20k"}
C {param.sym} 50 -560 0 0 {name=s5 value="R_IN=100k"}
C {iopin.sym} 410 -420 3 0 {name=p19 lab=V_SS}
C {lab_pin.sym} 410 -410 3 0 {name=p22 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -120 -30 0 0 {name=p23 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -130 330 0 0 {name=p24 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 390 320 0 0 {name=p25 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 760 110 0 0 {name=p26 sig_type=std_logic lab=V_SS}
