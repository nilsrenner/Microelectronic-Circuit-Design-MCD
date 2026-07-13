v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -540 -20 -510 -20 {lab=#net1}
N -300 160 -80 160 {lab=VOUT_LP}
N -420 -20 -420 10 {lab=#net2}
N -450 -20 -420 -20 {lab=#net2}
N -420 70 -420 110 {lab=0}
N -540 -100 -540 -20 {lab=#net1}
N -560 -20 -540 -20 {lab=#net1}
N -540 -100 -260 -100 {lab=#net1}
N -200 -100 -80 -100 {lab=VOUT_LP}
N -300 520 -80 520 {lab=VOUT_HP}
N -680 150 -620 150 {lab=VIN}
N -620 -20 -620 150 {lab=VIN}
N -80 240 -80 390 {lab=VOUT_HP}
N -200 240 -80 240 {lab=VOUT_HP}
N -80 390 -80 520 {lab=VOUT_HP}
N -80 -100 -80 40 {lab=VOUT_LP}
N -100 40 -80 40 {lab=VOUT_LP}
N -80 40 -80 160 {lab=VOUT_LP}
N -420 -20 -300 -20 {lab=#net2}
N -620 150 -620 330 {lab=VIN}
N -540 330 -510 330 {lab=#net3}
N -420 330 -300 330 {lab=#net4}
N -540 240 -540 330 {lab=#net3}
N -560 330 -540 330 {lab=#net3}
N -540 240 -260 240 {lab=#net3}
N -300 -20 -300 10 {lab=#net2}
N -300 10 -280 10 {lab=#net2}
N -300 70 -300 160 {lab=VOUT_LP}
N -300 70 -280 70 {lab=VOUT_LP}
N -300 360 -290 360 {lab=#net4}
N -300 330 -300 360 {lab=#net4}
N -300 420 -300 520 {lab=VOUT_HP}
N -300 420 -290 420 {lab=VOUT_HP}
N -170 290 -170 310 {lab=I_BIAS}
N -110 390 -80 390 {lab=VOUT_HP}
N -50 40 630 40 {lab=VOUT_LP}
N -40 390 190 390 {lab=VOUT_HP}
N 250 210 360 210 {lab=#net5}
N 420 210 520 210 {lab=v_out_hp}
N 520 360 630 360 {lab=v_out_hp}
N 520 210 520 360 {lab=v_out_hp}
N 480 360 520 360 {lab=v_out_hp}
N 630 100 630 360 {lab=v_out_hp}
N 690 -140 840 -140 {lab=v_out_lp}
N 900 -140 1040 -140 {lab=VOUT_CROSS}
N 1040 -140 1040 10 {lab=VOUT_CROSS}
N 1040 10 1110 10 {lab=VOUT_CROSS}
N 960 10 1040 10 {lab=VOUT_CROSS}
N -200 -70 -200 -40 {lab=V_DD}
N -160 -70 -160 -40 {lab=I_BIAS}
N -50 -270 -50 -260 {lab=V_DD}
N 30 -270 30 -260 {lab=I_BIAS}
N -10 -270 -10 -260 {lab=V_SS}
N -210 470 -210 490 {lab=V_SS}
N -200 120 -200 140 {lab=V_SS}
N -200 140 -50 140 {lab=V_SS}
N 1040 10 1040 20 {lab=VOUT_CROSS}
N 890 120 1040 120 {lab=V_SS}
N 1040 80 1040 120 {lab=V_SS}
N 520 360 520 370 {lab=v_out_hp}
N 520 430 520 460 {lab=V_SS}
N -210 490 -40 490 {lab=V_SS}
N -40 460 -40 490 {lab=V_SS}
N -40 390 -40 400 {lab=VOUT_HP}
N -80 390 -40 390 {lab=VOUT_HP}
N -50 40 -50 50 {lab=VOUT_LP}
N -80 40 -50 40 {lab=VOUT_LP}
N -50 110 -50 140 {lab=V_SS}
N -210 290 -210 310 {lab=V_DD}
N -420 410 -420 430 {lab=#net6}
N -420 330 -420 350 {lab=#net4}
N -450 330 -420 330 {lab=#net4}
N -420 490 -420 520 {lab=0}
N 250 380 250 390 {lab=#net5}
N 390 330 480 330 {lab=v_out_hp}
N 480 330 480 360 {lab=v_out_hp}
N 390 390 390 430 {lab=V_SS}
N 390 430 520 430 {lab=V_SS}
N 890 -20 960 -20 {lab=VOUT_CROSS}
N 960 -20 960 10 {lab=VOUT_CROSS}
N 890 60 890 120 {lab=V_SS}
N 860 120 890 120 {lab=V_SS}
N 250 210 250 380 {lab=#net5}
N 690 30 690 100 {lab=v_out_lp}
N 690 30 850 30 {lab=v_out_lp}
N 690 -140 690 30 {lab=v_out_lp}
N 790 -10 850 -10 {lab=V_SS}
N 790 60 890 60 {lab=V_SS}
N 890 40 890 60 {lab=V_SS}
N 790 -10 790 60 {lab=V_SS}
N 250 380 350 380 {lab=#net5}
N 320 340 350 340 {lab=V_SS}
N 320 340 320 430 {lab=V_SS}
N 320 430 390 430 {lab=V_SS}
C {res.sym} -590 -20 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {param.sym} -90 -380 0 0 {name=s5 value="R_IN=1meg"}
C {res.sym} -480 -20 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} -420 40 0 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -420 110 0 0 {name=l1 lab=0}
C {capa.sym} -230 -100 3 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -590 330 3 0 {name=C3
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -480 330 3 0 {name=C4
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {res.sym} -230 240 3 0 {name=R3
value=R_HP
footprint=1206
device=resistor
m=1}
C {res.sym} -420 460 0 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {gnd.sym} -420 520 0 0 {name=l2 lab=0}
C {opin.sym} -80 -100 0 0 {name=p2 lab=VOUT_LP}
C {ipin.sym} -680 150 0 0 {name=p1 lab=VIN}
C {iopin.sym} -50 -270 3 0 {name=p14 lab=V_DD}
C {opin.sym} -80 240 0 0 {name=p3 lab=VOUT_HP}
C {iopin.sym} -10 -270 3 0 {name=p4 lab=V_SS}
C {lab_pin.sym} -200 -70 0 0 {name=p9 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -160 -70 2 0 {name=p11 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -200 140 0 0 {name=p15 sig_type=std_logic lab=V_SS}
C {res.sym} 220 390 3 0 {name=R5
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 390 210 3 0 {name=R6
value=R_IN
footprint=1206
device=resistor
m=1}
C {iopin.sym} 30 -270 3 0 {name=p6 lab=I_BIAS}
C {res.sym} 660 40 3 0 {name=R14
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 660 100 3 0 {name=R7
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 870 -140 3 0 {name=R8
value=R_IN
footprint=1206
device=resistor
m=1}
C {opin.sym} 1110 10 0 0 {name=p5 lab=VOUT_CROSS}
C {lab_pin.sym} -210 290 0 0 {name=p10 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -170 290 2 0 {name=p12 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -210 490 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 520 460 0 0 {name=p18 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 860 120 0 0 {name=p19 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -50 -260 3 0 {name=p20 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 30 -260 3 0 {name=p21 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -10 -260 3 0 {name=p22 sig_type=std_logic lab=V_SS}
C {param.sym} -610 -380 0 0 {name=s1 value="C_LP=21.221e-9"}
C {param.sym} -610 -350 0 0 {name=s2 value="R_LP=50k"}
C {param.sym} -350 -380 0 0 {name=s3 value="C_HP=50e-9"}
C {param.sym} -350 -350 0 0 {name=s4 value="R_HP=21.221k"}
C {capa.sym} -50 80 0 0 {name=C5
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1040 50 0 0 {name=C6
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 520 400 0 0 {name=C7
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -40 430 0 0 {name=C8
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -420 380 0 0 {name=voff value="DC 0.8" savecurrent=false }
C {lab_pin.sym} 760 30 1 0 {name=p23 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 580 360 1 0 {name=p24 sig_type=std_logic lab=v_out_hp}
C {vcvs.sym} 390 360 0 0 {name=E1 value=1e6}
C {vcvs.sym} 890 10 0 0 {name=E2 value=1e6}
C {004_Real_Circuits/002_version_no_enable/ota-5t_no_ena_copy.sym} -200 40 0 0 {name=x1}
C {004_Real_Circuits/002_version_no_enable/ota-5t_no_ena_copy.sym} -210 390 0 0 {name=x2}
