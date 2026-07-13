v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -610 -170 -580 -170 {lab=#net1}
N -370 10 -150 10 {lab=VOUT_LP}
N -490 -170 -490 -140 {lab=#net2}
N -520 -170 -490 -170 {lab=#net2}
N -490 -80 -490 -40 {lab=0}
N -610 -250 -610 -170 {lab=#net1}
N -630 -170 -610 -170 {lab=#net1}
N -610 -250 -330 -250 {lab=#net1}
N -270 -250 -150 -250 {lab=VOUT_LP}
N -370 370 -150 370 {lab=VOUT_HP}
N -750 0 -690 0 {lab=VIN}
N -690 -170 -690 0 {lab=VIN}
N -150 90 -150 240 {lab=VOUT_HP}
N -270 90 -150 90 {lab=VOUT_HP}
N -150 240 -150 370 {lab=VOUT_HP}
N -150 -250 -150 -110 {lab=VOUT_LP}
N -170 -110 -150 -110 {lab=VOUT_LP}
N -150 -110 -150 10 {lab=VOUT_LP}
N -490 -170 -370 -170 {lab=#net2}
N -690 0 -690 180 {lab=VIN}
N -610 180 -580 180 {lab=#net3}
N -490 180 -370 180 {lab=#net4}
N -610 90 -610 180 {lab=#net3}
N -630 180 -610 180 {lab=#net3}
N -610 90 -330 90 {lab=#net3}
N -370 -170 -370 -140 {lab=#net2}
N -370 -140 -350 -140 {lab=#net2}
N -370 -80 -370 10 {lab=VOUT_LP}
N -370 -80 -350 -80 {lab=VOUT_LP}
N -370 210 -360 210 {lab=#net4}
N -370 180 -370 210 {lab=#net4}
N -370 270 -370 370 {lab=VOUT_HP}
N -370 270 -360 270 {lab=VOUT_HP}
N -240 140 -240 160 {lab=I_BIAS}
N -180 240 -150 240 {lab=VOUT_HP}
N -120 -110 560 -110 {lab=VOUT_LP}
N -110 240 120 240 {lab=VOUT_HP}
N 180 60 290 60 {lab=#net5}
N 350 60 450 60 {lab=v_out_hp}
N 450 210 560 210 {lab=v_out_hp}
N 450 60 450 210 {lab=v_out_hp}
N 410 210 450 210 {lab=v_out_hp}
N 560 -50 560 210 {lab=v_out_hp}
N 620 -290 770 -290 {lab=v_out_lp}
N 830 -290 970 -290 {lab=VOUT_CROSS}
N 970 -290 970 -140 {lab=VOUT_CROSS}
N 970 -140 1040 -140 {lab=VOUT_CROSS}
N 890 -140 970 -140 {lab=VOUT_CROSS}
N -270 -220 -270 -190 {lab=V_DD}
N -230 -220 -230 -190 {lab=I_BIAS}
N -120 -420 -120 -410 {lab=V_DD}
N -40 -420 -40 -410 {lab=I_BIAS}
N -80 -420 -80 -410 {lab=V_SS}
N -280 320 -280 340 {lab=V_SS}
N -270 -30 -270 -10 {lab=V_SS}
N -270 -10 -120 -10 {lab=V_SS}
N 970 -140 970 -130 {lab=VOUT_CROSS}
N 820 -30 970 -30 {lab=V_SS}
N 970 -70 970 -30 {lab=V_SS}
N 450 210 450 220 {lab=v_out_hp}
N 450 280 450 310 {lab=V_SS}
N -280 340 -110 340 {lab=V_SS}
N -110 310 -110 340 {lab=V_SS}
N -110 240 -110 250 {lab=VOUT_HP}
N -150 240 -110 240 {lab=VOUT_HP}
N -120 -110 -120 -100 {lab=VOUT_LP}
N -150 -110 -120 -110 {lab=VOUT_LP}
N -120 -40 -120 -10 {lab=V_SS}
N -280 140 -280 160 {lab=V_DD}
N -490 260 -490 280 {lab=#net6}
N -490 180 -490 200 {lab=#net4}
N -520 180 -490 180 {lab=#net4}
N -490 340 -490 370 {lab=0}
N 180 230 180 240 {lab=#net5}
N 320 180 410 180 {lab=v_out_hp}
N 410 180 410 210 {lab=v_out_hp}
N 320 240 320 280 {lab=V_SS}
N 320 280 450 280 {lab=V_SS}
N 820 -170 890 -170 {lab=VOUT_CROSS}
N 890 -170 890 -140 {lab=VOUT_CROSS}
N 820 -90 820 -30 {lab=V_SS}
N 790 -30 820 -30 {lab=V_SS}
N 180 60 180 230 {lab=#net5}
N 620 -120 620 -50 {lab=v_out_lp}
N 620 -120 780 -120 {lab=v_out_lp}
N 620 -290 620 -120 {lab=v_out_lp}
N 720 -160 780 -160 {lab=V_SS}
N 720 -90 820 -90 {lab=V_SS}
N 820 -110 820 -90 {lab=V_SS}
N 720 -160 720 -90 {lab=V_SS}
N 180 230 280 230 {lab=#net5}
N 250 190 280 190 {lab=V_SS}
N 250 190 250 280 {lab=V_SS}
N 250 280 320 280 {lab=V_SS}
N -240 320 -240 360 {lab=V_DD}
N -230 -30 -230 20 {lab=V_DD}
C {res.sym} -660 -170 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {param.sym} -160 -530 0 0 {name=s5 value="R_IN=1meg"}
C {res.sym} -550 -170 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} -490 -110 0 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -490 -40 0 0 {name=l1 lab=0}
C {capa.sym} -300 -250 3 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -660 180 3 0 {name=C3
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -550 180 3 0 {name=C4
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {res.sym} -300 90 3 0 {name=R3
value=R_HP
footprint=1206
device=resistor
m=1}
C {res.sym} -490 310 0 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {gnd.sym} -490 370 0 0 {name=l2 lab=0}
C {opin.sym} -150 -250 0 0 {name=p2 lab=VOUT_LP}
C {ipin.sym} -750 0 0 0 {name=p1 lab=VIN}
C {iopin.sym} -120 -420 3 0 {name=p14 lab=V_DD}
C {opin.sym} -150 90 0 0 {name=p3 lab=VOUT_HP}
C {iopin.sym} -80 -420 3 0 {name=p4 lab=V_SS}
C {lab_pin.sym} -270 -220 0 0 {name=p9 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -230 -220 2 0 {name=p11 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -270 -10 0 0 {name=p15 sig_type=std_logic lab=V_SS}
C {res.sym} 150 240 3 0 {name=R5
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 320 60 3 0 {name=R6
value=R_IN
footprint=1206
device=resistor
m=1}
C {iopin.sym} -40 -420 3 0 {name=p6 lab=I_BIAS}
C {res.sym} 590 -110 3 0 {name=R14
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 590 -50 3 0 {name=R7
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 800 -290 3 0 {name=R8
value=R_IN
footprint=1206
device=resistor
m=1}
C {opin.sym} 1040 -140 0 0 {name=p5 lab=VOUT_CROSS}
C {lab_pin.sym} -280 140 0 0 {name=p10 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -240 140 2 0 {name=p12 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -280 340 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 450 310 0 0 {name=p18 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 790 -30 0 0 {name=p19 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -120 -410 3 0 {name=p20 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -40 -410 3 0 {name=p21 sig_type=std_logic lab=I_BIAS}
C {lab_pin.sym} -80 -410 3 0 {name=p22 sig_type=std_logic lab=V_SS}
C {param.sym} -680 -530 0 0 {name=s1 value="C_LP=21.221e-9"}
C {param.sym} -680 -500 0 0 {name=s2 value="R_LP=50k"}
C {param.sym} -420 -530 0 0 {name=s3 value="C_HP=50e-9"}
C {param.sym} -420 -500 0 0 {name=s4 value="R_HP=21.221k"}
C {capa.sym} -120 -70 0 0 {name=C5
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 970 -100 0 0 {name=C6
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 450 250 0 0 {name=C7
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -110 280 0 0 {name=C8
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -490 230 0 0 {name=voff value="DC 0.8" savecurrent=false }
C {lab_pin.sym} 690 -120 1 0 {name=p23 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 510 210 1 0 {name=p24 sig_type=std_logic lab=v_out_hp}
C {vcvs.sym} 320 210 0 0 {name=E1 value=1e6}
C {vcvs.sym} 820 -140 0 0 {name=E2 value=1e6}
C {004_Real_Circuits/001_version_basic_ota_pretl/ota-5t.sym} -270 -110 0 0 {name=x1}
C {004_Real_Circuits/001_version_basic_ota_pretl/ota-5t.sym} -280 240 0 0 {name=x2}
C {lab_pin.sym} -240 360 0 0 {name=p7 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -230 20 0 0 {name=p8 sig_type=std_logic lab=V_DD}
