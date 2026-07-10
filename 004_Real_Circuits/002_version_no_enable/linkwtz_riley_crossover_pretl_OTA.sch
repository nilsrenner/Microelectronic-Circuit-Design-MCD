v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -600 -60 -570 -60 {lab=#net1}
N -360 120 -140 120 {lab=VOUT_LP}
N -480 -60 -480 -30 {lab=#net2}
N -510 -60 -480 -60 {lab=#net2}
N -480 30 -480 70 {lab=0}
N -600 -140 -600 -60 {lab=#net1}
N -620 -60 -600 -60 {lab=#net1}
N -600 -140 -320 -140 {lab=#net1}
N -260 -140 -140 -140 {lab=VOUT_LP}
N -360 480 -140 480 {lab=VOUT_HP}
N -740 110 -680 110 {lab=VIN}
N -680 -60 -680 110 {lab=VIN}
N -140 200 -140 350 {lab=VOUT_HP}
N -260 200 -140 200 {lab=VOUT_HP}
N -140 350 -140 480 {lab=VOUT_HP}
N -140 -140 -140 0 {lab=VOUT_LP}
N -160 0 -140 0 {lab=VOUT_LP}
N -140 0 -140 120 {lab=VOUT_LP}
N -480 -60 -360 -60 {lab=#net2}
N -680 110 -680 290 {lab=VIN}
N -600 290 -570 290 {lab=#net3}
N -510 290 -480 290 {lab=#net4}
N -480 290 -480 330 {lab=#net4}
N -480 500 -480 540 {lab=0}
N -480 290 -360 290 {lab=#net4}
N -600 200 -600 290 {lab=#net3}
N -620 290 -600 290 {lab=#net3}
N -600 200 -320 200 {lab=#net3}
N -360 -60 -360 -30 {lab=#net2}
N -360 -30 -340 -30 {lab=#net2}
N -360 30 -360 120 {lab=VOUT_LP}
N -360 30 -340 30 {lab=VOUT_LP}
N -360 320 -350 320 {lab=#net4}
N -360 290 -360 320 {lab=#net4}
N -360 380 -360 480 {lab=VOUT_HP}
N -360 380 -350 380 {lab=VOUT_HP}
N -230 250 -230 270 {lab=I_BIAS}
N -270 250 -270 270 {lab=V_DD}
N -170 350 -140 350 {lab=VOUT_HP}
N -140 0 570 0 {lab=VOUT_LP}
N -140 350 130 350 {lab=VOUT_HP}
N -270 440 -270 450 {lab=V_SS}
N -260 90 -260 100 {lab=V_SS}
N 190 290 190 350 {lab=#net5}
N 190 170 300 170 {lab=#net5}
N 360 170 460 170 {lab=#net6}
N 460 320 570 320 {lab=#net6}
N 460 170 460 320 {lab=#net6}
N 420 320 460 320 {lab=#net6}
N 570 60 570 320 {lab=#net6}
N 630 -60 630 60 {lab=#net7}
N 630 -180 780 -180 {lab=#net7}
N 840 -180 980 -180 {lab=VOUT_CROSS}
N 980 -180 980 -30 {lab=VOUT_CROSS}
N 980 -30 1050 -30 {lab=VOUT_CROSS}
N 900 -30 980 -30 {lab=VOUT_CROSS}
N -260 -110 -260 -80 {lab=V_DD}
N -220 -110 -220 -80 {lab=I_BIAS}
N -110 -310 -110 -300 {lab=V_DD}
N -30 -310 -30 -300 {lab=I_BIAS}
N -70 -310 -70 -300 {lab=V_SS}
N 940 30 940 70 {lab=V_SS}
N 490 380 490 410 {lab=V_SS}
N -270 440 -100 440 {lab=V_SS}
N -270 430 -270 440 {lab=V_SS}
N -100 410 -100 440 {lab=V_SS}
N -260 90 -100 90 {lab=V_SS}
N -260 80 -260 90 {lab=V_SS}
N -100 60 -100 90 {lab=V_SS}
N -480 390 -480 440 {lab=#net8}
N 630 -60 720 -60 {lab=#net7}
N 630 -180 630 -60 {lab=#net7}
N 680 0 720 0 {lab=0}
N 220 350 240 350 {lab=0}
N 190 290 240 290 {lab=#net5}
N 190 170 190 290 {lab=#net5}
C {res.sym} -650 -60 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {res.sym} -540 -60 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} -480 0 0 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -480 70 0 0 {name=l1 lab=0}
C {capa.sym} -290 -140 3 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -650 290 3 0 {name=C3
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -540 290 3 0 {name=C4
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {res.sym} -290 200 3 0 {name=R3
value=R_HP
footprint=1206
device=resistor
m=1}
C {res.sym} -480 470 0 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {gnd.sym} -480 540 0 0 {name=l2 lab=0}
C {opin.sym} -140 -140 0 0 {name=p2 lab=VOUT_LP}
C {ipin.sym} -740 110 0 0 {name=p1 lab=VIN}
C {iopin.sym} -110 -310 3 0 {name=p14 lab=V_DD}
C {opin.sym} -140 200 0 0 {name=p3 lab=VOUT_HP}
C {iopin.sym} -70 -310 3 0 {name=p4 lab=V_SS}
C {lab_pin.sym} -260 -110 0 0 {name=p9 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -220 -110 2 0 {name=p11 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -260 100 0 0 {name=p15 sig_type=std_logic lab=V_SS}
C {res.sym} 160 350 3 0 {name=R5
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 220 350 0 0 {name=l3 lab=0}
C {res.sym} 330 170 3 0 {name=R6
value=R_IN
footprint=1206
device=resistor
m=1}
C {iopin.sym} -30 -310 3 0 {name=p6 lab=I_BIAS}
C {res.sym} 600 0 3 0 {name=R14
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 600 60 3 0 {name=R7
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 810 -180 3 0 {name=R8
value=R_IN
footprint=1206
device=resistor
m=1}
C {opin.sym} 1050 -30 0 0 {name=p5 lab=VOUT_CROSS}
C {gnd.sym} 680 0 0 0 {name=l4 lab=0}
C {lab_pin.sym} -270 250 0 0 {name=p10 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -230 250 2 0 {name=p12 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -270 450 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 490 410 0 0 {name=p18 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 940 70 0 0 {name=p19 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -110 -300 3 0 {name=p20 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -30 -300 3 0 {name=p21 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -70 -300 3 0 {name=p22 sig_type=std_logic lab=V_SS}
C {004_Real_Circuits/002_version_no_enable/ota-5t_no_ena_copy.sym} -260 0 0 0 {name=x1}
C {004_Real_Circuits/002_version_no_enable/ota-5t_no_ena_copy.sym} -270 350 0 0 {name=x3}
C {param.sym} -120 -410 0 0 {name=s5 value="R_IN=1meg"}
C {param.sym} -640 -410 0 0 {name=s1 value="C_LP=21.221e-9"}
C {param.sym} -640 -380 0 0 {name=s2 value="R_LP=50k"}
C {param.sym} -380 -410 0 0 {name=s3 value="C_HP=50e-9"}
C {param.sym} -380 -380 0 0 {name=s4 value="R_HP=21.221k"}
C {capa.sym} -100 30 0 0 {name=C5
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -100 380 0 0 {name=C6
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 490 350 0 0 {name=C7
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 940 0 0 0 {name=C8
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -480 360 0 0 {name=voff value="DC 0.8" savecurrent=false }
C {001_provided_files/2_Idealized_circuits/opamp1.sym} 320 320 0 0 {name=x5}
C {001_provided_files/2_Idealized_circuits/opamp1.sym} 800 -30 0 0 {name=x2}
