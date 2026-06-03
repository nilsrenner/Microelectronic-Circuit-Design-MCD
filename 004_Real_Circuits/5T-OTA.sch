v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 -20 -160 -20 {lab=#net1}
N -160 -20 -160 10 {lab=#net1}
N -160 -20 -60 -20 {lab=#net1}
N -60 -90 -60 -20 {lab=#net1}
N -250 -90 -250 -20 {lab=#net1}
N -420 40 -420 80 {lab=vss}
N -160 40 -160 80 {lab=vss}
N -460 -0 -460 40 {lab=#net2}
N -420 0 -200 -0 {lab=#net2}
N -200 0 -200 40 {lab=#net2}
N -420 0 -420 10 {lab=#net2}
N -460 -0 -420 0 {lab=#net2}
N -250 -190 -250 -150 {lab=#net3}
N -60 -180 -60 -150 {lab=vout}
N -60 -180 120 -180 {lab=vout}
N -60 -210 -60 -180 {lab=vout}
N -290 -190 -250 -190 {lab=#net3}
N -250 -210 -250 -190 {lab=#net3}
N -290 -240 -290 -190 {lab=#net3}
N -250 -190 -100 -190 {lab=#net3}
N -100 -240 -100 -190 {lab=#net3}
N -250 -300 -250 -240 {lab=vdd}
N -250 -300 -60 -300 {lab=vdd}
N -60 -300 -60 -240 {lab=vdd}
N -320 -120 -290 -120 {lab=vinp}
N -280 80 -280 100 {lab=vss}
N -280 80 -160 80 {lab=vss}
N -420 80 -280 80 {lab=vss}
N -420 -140 -420 -0 {lab=#net2}
N -420 -300 -420 -200 {lab=vdd}
N -420 -300 -250 -300 {lab=vdd}
N -490 -170 -460 -170 {lab=ibias}
C {sg13g2_pr/sg13_lv_nmos.sym} -270 -120 0 0 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 40 0 0 {name=M5
l=5u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -120 0 0 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -440 40 0 0 {name=M6
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -270 -240 0 0 {name=M3
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -80 -240 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -320 -120 0 0 {name=p1 lab=vinp}
C {iopin.sym} -160 -300 3 0 {name=p2 lab=vdd}
C {iopin.sym} -280 100 1 0 {name=p3 lab=vss}
C {opin.sym} 120 -180 0 0 {name=p4 lab=vout}
C {ipin.sym} -100 -120 0 0 {name=p5 lab=vinn}
C {sg13g2_pr/sg13_lv_pmos.sym} -440 -170 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -490 -170 2 0 {name=p6 lab=ibias}
C {title.sym} -710 210 0 0 {name=5T-OTA author="Daniel Albinger"}
