v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 -20 -160 -20 {lab=vt}
N -160 -20 -160 10 {lab=vt}
N -160 -20 -60 -20 {lab=vt}
N -380 0 -200 -0 {lab=ibias}
N -200 0 -200 40 {lab=ibias}
N -420 0 -420 10 {lab=ibias}
N -250 -190 -250 -150 {lab=vb}
N -60 -180 -60 -150 {lab=vout}
N -60 -180 120 -180 {lab=vout}
N -60 -210 -60 -180 {lab=vout}
N -250 -210 -250 -190 {lab=vb}
N -150 -240 -150 -190 {lab=vb}
N -250 -300 -60 -300 {lab=vdd}
N -280 80 -280 100 {lab=vss}
N -280 80 -160 80 {lab=vss}
N -420 80 -280 80 {lab=vss}
N -250 -120 -240 -120 {lab=vt}
N -240 -120 -240 -90 {lab=vt}
N -250 -90 -240 -90 {lab=vt}
N -250 -90 -250 -20 {lab=vt}
N -60 -90 -60 -20 {lab=vt}
N -60 -240 -50 -240 {lab=vdd}
N -50 -270 -50 -240 {lab=vdd}
N -60 -270 -50 -270 {lab=vdd}
N -60 -300 -60 -270 {lab=vdd}
N -260 -240 -250 -240 {lab=vdd}
N -260 -270 -260 -240 {lab=vdd}
N -260 -270 -250 -270 {lab=vdd}
N -250 -300 -250 -270 {lab=vdd}
N -150 -240 -100 -240 {lab=vb}
N -420 70 -420 80 {lab=vss}
N -430 40 -420 40 {lab=vss}
N -430 40 -430 70 {lab=vss}
N -430 70 -420 70 {lab=vss}
N -380 0 -380 40 {lab=ibias}
N -420 0 -380 0 {lab=ibias}
N -70 -90 -60 -90 {lab=vt}
N -70 -120 -70 -90 {lab=vt}
N -70 -120 -60 -120 {lab=vt}
N -20 -120 10 -120 {lab=vinn}
N -160 70 -160 80 {lab=vss}
N -160 70 -150 70 {lab=vss}
N -150 40 -150 70 {lab=vss}
N -160 40 -150 40 {lab=vss}
N -210 -240 -150 -240 {lab=vb}
N -250 -190 -150 -190 {lab=vb}
C {sg13g2_pr/sg13_lv_nmos.sym} -270 -120 0 0 {name=M1
l=5u
w=M12_W
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 40 0 0 {name=M5
l=5u
w=M5_W
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -40 -120 0 1 {name=M2
l=5u
w=M12_W
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -400 40 0 1 {name=M6
l=5u
w=M6_W
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -230 -240 0 1 {name=M3
l=5u
w=M34_W
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -240 0 0 {name=M4
l=5u
w=M34_W
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -290 -120 0 0 {name=p1 lab=vinp}
C {iopin.sym} -160 -300 3 0 {name=p2 lab=vdd}
C {iopin.sym} -280 100 1 0 {name=p3 lab=vss}
C {opin.sym} 120 -180 0 0 {name=p4 lab=vout}
C {ipin.sym} 10 -120 0 1 {name=p5 lab=vinn}
C {iopin.sym} -420 0 3 0 {name=p6 lab=ibias}
C {title.sym} -710 210 0 0 {name=5T-OTA author="Daniel Albinger"}
C {param.sym} -620 -260 0 0 {name=s3 value="M34_W=3.5u"}
C {param.sym} -620 -240 0 0 {name=s1 value="M12_W=2u"}
C {param.sym} -620 -220 0 0 {name=s2 value="M5_W=1.5u"}
C {param.sym} -620 -200 0 0 {name=s4 value="M6_W=7.5u"}
C {lab_wire.sym} -140 -20 1 0 {name=p7 sig_type=std_logic lab=vt}
C {lab_wire.sym} -150 -190 2 0 {name=p8 sig_type=std_logic lab=vb}
