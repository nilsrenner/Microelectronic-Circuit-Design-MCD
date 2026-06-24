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
N -220 350 0 350 {lab=VOUT_HP}
N -600 -20 -540 -20 {lab=VIN}
N -540 -190 -540 -20 {lab=VIN}
N 0 70 -0 220 {lab=VOUT_HP}
N -120 70 0 70 {lab=VOUT_HP}
N 0 220 0 350 {lab=VOUT_HP}
N 0 -270 0 -130 {lab=VOUT_LP}
N -20 -130 0 -130 {lab=VOUT_LP}
N 0 -130 -0 -10 {lab=VOUT_LP}
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
N -220 -190 -220 -160 {lab=#net2}
N -220 -160 -200 -160 {lab=#net2}
N -220 -100 -220 -10 {lab=VOUT_LP}
N -220 -100 -200 -100 {lab=VOUT_LP}
N -220 190 -210 190 {lab=#net4}
N -220 160 -220 190 {lab=#net4}
N -220 250 -220 350 {lab=VOUT_HP}
N -220 250 -210 250 {lab=VOUT_HP}
N -90 120 -90 140 {lab=I_BIAS}
N -130 120 -130 140 {lab=V_DD}
N -30 220 -0 220 {lab=VOUT_HP}
N 0 -130 710 -130 {lab=VOUT_LP}
N -0 220 270 220 {lab=VOUT_HP}
N -130 300 -130 320 {lab=V_SS}
N -120 -50 -120 -30 {lab=V_SS}
N 330 220 380 220 {lab=#net5}
N 360 160 380 160 {lab=0}
N 330 40 330 220 {lab=#net5}
N 330 40 440 40 {lab=#net5}
N 500 40 600 40 {lab=#net6}
N 600 190 710 190 {lab=#net6}
N 600 40 600 190 {lab=#net6}
N 560 190 600 190 {lab=#net6}
N 710 -70 710 190 {lab=#net6}
N 770 -130 770 -70 {lab=#net7}
N 770 -130 860 -130 {lab=#net7}
N 770 -310 770 -130 {lab=#net7}
N 770 -310 920 -310 {lab=#net7}
N 980 -310 1120 -310 {lab=VOUT_CROSS}
N 1120 -310 1120 -160 {lab=VOUT_CROSS}
N 1120 -160 1190 -160 {lab=VOUT_CROSS}
N 1040 -160 1120 -160 {lab=VOUT_CROSS}
N 830 -190 860 -190 {lab=0}
N 940 -80 940 -50 {lab=V_SS}
N 460 80 460 110 {lab=V_DD}
N 500 80 500 110 {lab=I_BIAS}
N 460 270 460 290 {lab=V_SS}
N 940 -270 940 -240 {lab=V_DD}
N 980 -270 980 -240 {lab=I_BIAS}
N -120 -240 -120 -210 {lab=V_DD}
N -80 -240 -80 -210 {lab=I_BIAS}
N 30 -440 30 -430 {lab=V_DD}
N 110 -440 110 -430 {lab=I_BIAS}
N 70 -440 70 -430 {lab=V_SS}
C {res.sym} -510 -190 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {param.sym} -560 -550 0 0 {name=s1 value="C_LP=1.06e-8"}
C {param.sym} -560 -530 0 0 {name=s2 value="R_LP=100k"}
C {param.sym} -280 -550 0 0 {name=s3 value="C_HP=50e-10"}
C {param.sym} -280 -530 0 0 {name=s4 value="R_HP=212.20k"}
C {param.sym} -10 -550 0 0 {name=s5 value="R_IN=100k"}
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
C {opin.sym} 0 -270 0 0 {name=p2 lab=VOUT_LP}
C {ipin.sym} -600 -20 0 0 {name=p1 lab=VIN}
C {iopin.sym} 30 -440 3 0 {name=p14 lab=V_DD}
C {/foss/designs/Repo/004_Real_Circuits/second output stage/ota-5t_no_ena_copy.sym} -120 220 0 0 {name=x1}
C {/foss/designs/Repo/004_Real_Circuits/second output stage/ota-5t_no_ena_copy.sym} -110 -130 0 0 {name=x2}
C {opin.sym} 0 70 0 0 {name=p3 lab=VOUT_HP}
C {iopin.sym} 70 -440 3 0 {name=p4 lab=V_SS}
C {lab_pin.sym} -120 -240 0 0 {name=p9 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -80 -240 2 0 {name=p11 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -120 -30 0 0 {name=p15 sig_type=std_logic lab=V_SS}
C {/foss/designs/Repo/004_Real_Circuits/second output stage/ota-5t_no_ena_copy.sym} 470 190 0 0 {name=x3}
C {res.sym} 300 220 3 0 {name=R5
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 360 160 0 0 {name=l3 lab=0}
C {res.sym} 470 40 3 0 {name=R6
value=R_IN
footprint=1206
device=resistor
m=1}
C {iopin.sym} 110 -440 3 0 {name=p6 lab=I_BIAS}
C {/foss/designs/Repo/004_Real_Circuits/second output stage/ota-5t_no_ena_copy.sym} 950 -160 0 0 {name=x4}
C {res.sym} 740 -130 3 0 {name=R14
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 740 -70 3 0 {name=R7
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 950 -310 3 0 {name=R8
value=R_IN
footprint=1206
device=resistor
m=1}
C {opin.sym} 1190 -160 0 0 {name=p5 lab=VOUT_CROSS}
C {gnd.sym} 830 -190 0 0 {name=l4 lab=0}
C {lab_pin.sym} -130 120 0 0 {name=p10 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 460 80 0 0 {name=p7 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 940 -270 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -90 120 2 0 {name=p12 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 500 80 2 0 {name=p17 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 980 -270 2 0 {name=p16 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -130 320 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 460 290 0 0 {name=p18 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 940 -50 0 0 {name=p19 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 30 -430 3 0 {name=p20 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 110 -430 3 0 {name=p21 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 70 -430 3 0 {name=p22 sig_type=std_logic lab=V_SS}
