v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -420 -160 -390 -160 {lab=#net1}
N -180 20 40 20 {lab=#net2}
N -300 -160 -300 -130 {lab=#net3}
N -330 -160 -300 -160 {lab=#net3}
N -300 -70 -300 -30 {lab=0}
N -420 -240 -420 -160 {lab=#net1}
N -440 -160 -420 -160 {lab=#net1}
N -420 -240 -140 -240 {lab=#net1}
N -80 -240 40 -240 {lab=#net2}
N -180 380 40 380 {lab=#net4}
N -560 10 -500 10 {lab=VIN}
N -500 -160 -500 10 {lab=VIN}
N 0 -210 0 150 {lab=I_BIAS}
N 40 100 40 250 {lab=#net4}
N -80 100 40 100 {lab=#net4}
N 40 250 40 380 {lab=#net4}
N 40 -240 40 -100 {lab=#net2}
N 20 -100 40 -100 {lab=#net2}
N 40 -100 40 20 {lab=#net2}
N -300 -160 -180 -160 {lab=#net3}
N -500 10 -500 190 {lab=VIN}
N -420 190 -390 190 {lab=#net5}
N -330 190 -300 190 {lab=#net6}
N -300 190 -300 230 {lab=#net6}
N -300 290 -300 330 {lab=0}
N -300 190 -180 190 {lab=#net6}
N -420 100 -420 190 {lab=#net5}
N -440 190 -420 190 {lab=#net5}
N -420 100 -140 100 {lab=#net5}
N -80 -20 -80 -10 {lab=0}
N -180 -160 -180 -130 {lab=#net3}
N -180 -130 -160 -130 {lab=#net3}
N -180 -70 -180 20 {lab=#net2}
N -180 -70 -160 -70 {lab=#net2}
N -40 -210 -40 -180 {lab=I_BIAS}
N -40 -210 0 -210 {lab=I_BIAS}
N 0 -290 0 -210 {lab=I_BIAS}
N -90 330 -90 340 {lab=0}
N -180 220 -170 220 {lab=#net6}
N -180 190 -180 220 {lab=#net6}
N -180 280 -180 380 {lab=#net4}
N -180 280 -170 280 {lab=#net4}
N -50 150 -50 170 {lab=I_BIAS}
N -50 150 0 150 {lab=I_BIAS}
N -90 150 -90 170 {lab=V_DD}
N -210 150 -90 150 {lab=V_DD}
N -210 10 -210 150 {lab=V_DD}
N 10 250 40 250 {lab=#net4}
N -210 -210 -80 -210 {lab=V_DD}
N -210 -300 -210 -210 {lab=V_DD}
N -80 -210 -80 -180 {lab=V_DD}
N -210 10 -40 10 {lab=V_DD}
N -210 -210 -210 10 {lab=V_DD}
N -40 -20 -40 10 {lab=V_DD}
N -210 150 -210 360 {lab=V_DD}
N -210 360 -50 360 {lab=V_DD}
N -50 330 -50 360 {lab=V_DD}
N 40 250 120 250 {lab=#net4}
N 180 250 270 250 {lab=VOUT_HP}
N 40 -100 110 -100 {lab=#net2}
N 170 -100 240 -100 {lab=VOUT_LP}
C {res.sym} -470 -160 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {param.sym} -520 -460 0 0 {name=s1 value="C_LP=1.06e-6"}
C {param.sym} -520 -440 0 0 {name=s2 value="R_LP=1000"}
C {param.sym} -240 -460 0 0 {name=s3 value="C_HP=50e-9"}
C {param.sym} -240 -440 0 0 {name=s4 value="R_HP=21220"}
C {param.sym} 30 -460 0 0 {name=s5 value="R_IN=1k"}
C {res.sym} -360 -160 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} -300 -100 0 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -300 -30 0 0 {name=l1 lab=0}
C {capa.sym} -110 -240 3 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -470 190 3 0 {name=C3
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -360 190 3 0 {name=C4
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {res.sym} -110 100 3 0 {name=R3
value=R_HP
footprint=1206
device=resistor
m=1}
C {res.sym} -300 260 0 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {gnd.sym} -300 330 0 0 {name=l2 lab=0}
C {opin.sym} 240 -100 0 0 {name=p2 lab=VOUT_LP}
C {opin.sym} 270 250 0 0 {name=p3 lab=VOUT_HP}
C {ipin.sym} -560 10 0 0 {name=p1 lab=VIN}
C {gnd.sym} -80 -10 0 0 {name=l5 lab=0}
C {gnd.sym} -90 340 0 0 {name=l8 lab=0}
C {iopin.sym} 0 -290 3 0 {name=p6 lab=I_BIAS}
C {iopin.sym} -210 -300 3 0 {name=p14 lab=V_DD}
C {capa.sym} 140 -100 1 0 {name=C5
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 150 250 1 0 {name=C6
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {/foss/designs/Repo/004_Real_Circuits/ota-5t.sym} -80 -100 0 0 {name=x1}
C {/foss/designs/Repo/004_Real_Circuits/ota-5t.sym} -90 250 0 0 {name=x2}
