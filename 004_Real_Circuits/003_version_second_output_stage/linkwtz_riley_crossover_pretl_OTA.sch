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
N -30 220 -0 220 {lab=VOUT_HP}
N 30 -130 710 -130 {lab=VOUT_LP}
N 40 220 270 220 {lab=VOUT_HP}
N 360 220 380 220 {lab=0}
N 330 160 330 220 {lab=#net5}
N 330 40 440 40 {lab=#net5}
N 500 40 600 40 {lab=v_out_hp}
N 600 190 710 190 {lab=v_out_hp}
N 600 40 600 190 {lab=v_out_hp}
N 560 190 600 190 {lab=v_out_hp}
N 710 -70 710 190 {lab=v_out_hp}
N 770 -130 770 -70 {lab=v_out_lp}
N 770 -310 920 -310 {lab=v_out_lp}
N 980 -310 1120 -310 {lab=VOUT_CROSS}
N 1120 -310 1120 -160 {lab=VOUT_CROSS}
N 1120 -160 1190 -160 {lab=VOUT_CROSS}
N 1040 -160 1120 -160 {lab=VOUT_CROSS}
N -120 -240 -120 -210 {lab=V_DD}
N -80 -240 -80 -210 {lab=I_BIAS}
N 30 -440 30 -430 {lab=V_DD}
N 110 -440 110 -430 {lab=I_BIAS}
N 70 -440 70 -430 {lab=V_SS}
N -130 300 -130 320 {lab=V_SS}
N -120 -50 -120 -30 {lab=V_SS}
N -120 -30 30 -30 {lab=V_SS}
N 1120 -160 1120 -150 {lab=VOUT_CROSS}
N 940 -50 1120 -50 {lab=V_SS}
N 1120 -90 1120 -50 {lab=V_SS}
N 600 190 600 200 {lab=v_out_hp}
N 600 260 600 290 {lab=V_SS}
N -130 320 40 320 {lab=V_SS}
N 40 290 40 320 {lab=V_SS}
N 40 220 40 230 {lab=VOUT_HP}
N -0 220 40 220 {lab=VOUT_HP}
N 30 -130 30 -120 {lab=VOUT_LP}
N 0 -130 30 -130 {lab=VOUT_LP}
N 30 -60 30 -30 {lab=V_SS}
N -130 120 -130 140 {lab=V_DD}
N -340 240 -340 260 {lab=#net6}
N -340 160 -340 180 {lab=#net4}
N -370 160 -340 160 {lab=#net4}
N -340 320 -340 350 {lab=0}
N 840 -130 860 -130 {lab=0}
N 770 -130 810 -130 {lab=v_out_lp}
N 770 -310 770 -130 {lab=v_out_lp}
N 810 -190 810 -130 {lab=v_out_lp}
N 810 -190 860 -190 {lab=v_out_lp}
N 330 160 380 160 {lab=#net5}
N 330 40 330 160 {lab=#net5}
C {res.sym} -510 -190 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {param.sym} -10 -550 0 0 {name=s5 value="R_IN=1meg"}
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
C {res.sym} -340 290 0 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {gnd.sym} -340 350 0 0 {name=l2 lab=0}
C {opin.sym} 0 -270 0 0 {name=p2 lab=VOUT_LP}
C {ipin.sym} -600 -20 0 0 {name=p1 lab=VIN}
C {iopin.sym} 30 -440 3 0 {name=p14 lab=V_DD}
C {opin.sym} 0 70 0 0 {name=p3 lab=VOUT_HP}
C {iopin.sym} 70 -440 3 0 {name=p4 lab=V_SS}
C {lab_pin.sym} -120 -240 0 0 {name=p9 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -80 -240 2 0 {name=p11 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -120 -30 0 0 {name=p15 sig_type=std_logic lab=V_SS}
C {res.sym} 300 220 3 0 {name=R5
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 360 220 0 0 {name=l3 lab=0}
C {res.sym} 470 40 3 0 {name=R6
value=R_IN
footprint=1206
device=resistor
m=1}
C {iopin.sym} 110 -440 3 0 {name=p6 lab=I_BIAS}
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
C {gnd.sym} 840 -130 0 0 {name=l4 lab=0}
C {lab_pin.sym} -130 120 0 0 {name=p10 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -90 120 2 0 {name=p12 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -130 320 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 600 290 0 0 {name=p18 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 940 -50 0 0 {name=p19 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 30 -430 3 0 {name=p20 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 110 -430 3 0 {name=p21 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} 70 -430 3 0 {name=p22 sig_type=std_logic lab=V_SS}
C {004_Real_Circuits/003_version_second_output_stage/ota-5t_no_ena_copy.sym} -110 -130 0 0 {name=x1}
C {004_Real_Circuits/003_version_second_output_stage/ota-5t_no_ena_copy.sym} -120 220 0 0 {name=x2}
C {param.sym} -530 -550 0 0 {name=s1 value="C_LP=21.221e-9"}
C {param.sym} -530 -520 0 0 {name=s2 value="R_LP=50k"}
C {param.sym} -270 -550 0 0 {name=s3 value="C_HP=50e-9"}
C {param.sym} -270 -520 0 0 {name=s4 value="R_HP=21.221k"}
C {capa.sym} 30 -90 0 0 {name=C5
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1120 -120 0 0 {name=C6
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 600 230 0 0 {name=C7
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 40 260 0 0 {name=C8
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -340 210 0 0 {name=voff value="DC 0.8" savecurrent=false }
C {lab_pin.sym} 840 -190 1 0 {name=p23 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 660 190 1 0 {name=p24 sig_type=std_logic lab=v_out_hp}
C {001_provided_files/2_Idealized_circuits/opamp1.sym} 460 190 0 0 {name=x5}
C {001_provided_files/2_Idealized_circuits/opamp1.sym} 940 -160 0 0 {name=x3}
