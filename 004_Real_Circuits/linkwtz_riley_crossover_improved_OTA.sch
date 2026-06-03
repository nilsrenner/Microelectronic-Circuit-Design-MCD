v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -460 -190 -430 -190 {lab=#net1}
N -220 -10 0 -10 {lab=VOUT_LP}
N -220 -70 -220 -10 {lab=VOUT_LP}
N -340 -190 -340 -160 {lab=#net2}
N -370 -190 -340 -190 {lab=#net2}
N -340 -100 -340 -60 {lab=0}
N -460 -270 -460 -190 {lab=#net1}
N -480 -190 -460 -190 {lab=#net1}
N -460 -270 -180 -270 {lab=#net1}
N -120 -270 0 -270 {lab=VOUT_LP}
N 0 70 20 70 {lab=VOUT_HP}
N -220 280 -220 350 {lab=VOUT_HP}
N -220 350 0 350 {lab=VOUT_HP}
N -600 -20 -540 -20 {lab=VIN}
N -540 -190 -540 -20 {lab=VIN}
N -140 120 -140 140 {lab=V_DD}
N -140 -230 -140 -210 {lab=V_DD}
N -0 220 150 220 {lab=VOUT_HP}
N 0 -130 520 -130 {lab=VOUT_LP}
N -40 -320 -40 -230 {lab=V_DD}
N -140 -230 -40 -230 {lab=V_DD}
N -40 -230 -40 120 {lab=V_DD}
N -140 120 -40 120 {lab=V_DD}
N -250 -130 -250 220 {lab=I_BIAS}
N -250 220 -220 220 {lab=I_BIAS}
N -250 -130 -220 -130 {lab=I_BIAS}
N -250 -330 -250 -130 {lab=I_BIAS}
N 0 70 -0 220 {lab=VOUT_HP}
N -120 70 0 70 {lab=VOUT_HP}
N -30 220 -0 220 {lab=VOUT_HP}
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
N 210 220 240 220 {lab=#net5}
N 240 220 240 250 {lab=#net5}
N 240 250 300 250 {lab=#net5}
N 240 90 240 220 {lab=#net5}
N 240 90 290 90 {lab=#net5}
N 360 90 500 90 {lab=#net6}
N 280 260 280 270 {lab=0}
N 280 210 300 210 {lab=0}
N 280 260 340 260 {lab=0}
N 280 210 280 260 {lab=0}
N 340 160 340 200 {lab=#net6}
N 340 160 360 160 {lab=#net6}
N 360 90 360 160 {lab=#net6}
N 350 90 360 90 {lab=#net6}
N 500 -20 500 90 {lab=#net6}
N 500 -20 510 -20 {lab=#net6}
N 620 -130 670 -130 {lab=#net7}
N 620 -130 620 -20 {lab=#net7}
N 580 -130 620 -130 {lab=#net7}
N 570 -20 620 -20 {lab=#net7}
N 620 -20 650 -20 {lab=#net7}
N 650 -20 650 80 {lab=#net7}
N 650 80 670 80 {lab=#net7}
N 640 40 640 100 {lab=0}
N 640 40 670 40 {lab=0}
N 640 100 710 100 {lab=0}
N 710 90 710 100 {lab=0}
N 710 -50 710 30 {lab=VOUT_CROSS}
N 710 -90 730 -90 {lab=VOUT_CROSS}
N 730 -130 730 -90 {lab=VOUT_CROSS}
N 710 -50 760 -50 {lab=VOUT_CROSS}
N 710 -90 710 -50 {lab=VOUT_CROSS}
C {/foss/designs/Repo/004_Real_Circuits/5T-OTA.sym} -140 -10 0 0 {name=x1}
C {/foss/designs/Repo/004_Real_Circuits/5T-OTA.sym} -140 340 0 0 {name=x2}
C {res.sym} -510 -190 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {param.sym} -560 -490 0 0 {name=s1 value="C_LP=1.06e-6"}
C {param.sym} -560 -470 0 0 {name=s2 value="R_LP=1000"}
C {param.sym} -280 -490 0 0 {name=s3 value="C_HP=1e-9"}
C {param.sym} -280 -470 0 0 {name=s4 value="R_HP=1.06e6"}
C {param.sym} -10 -490 0 0 {name=s5 value="R_IN=1k"}
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
C {gnd.sym} -140 -50 0 0 {name=l5 lab=0}
C {gnd.sym} -140 300 0 0 {name=l8 lab=0}
C {iopin.sym} -250 -330 3 0 {name=p6 lab=I_BIAS}
C {iopin.sym} -40 -320 3 0 {name=p14 lab=V_DD}
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
C {gnd.sym} 280 270 0 0 {name=l6 lab=0}
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
C {gnd.sym} 640 100 0 0 {name=l9 lab=0}
C {res.sym} 550 -130 3 0 {name=R14
value=R_IN
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 340 230 0 0 {name=E1 value=1e6}
C {vcvs.sym} 710 60 0 0 {name=E4 value=1e6}
C {opin.sym} 760 -50 0 0 {name=p9 lab=VOUT_CROSS}
