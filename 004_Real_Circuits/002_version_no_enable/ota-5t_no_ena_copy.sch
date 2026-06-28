v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {1.45 < 1.5(nom) < 1.55V} -460 -340 0 0 0.4 0.4 {}
T {4uA} 50 400 0 0 0.4 0.4 {}
T {0.7 < 0.8(nom) < 0.9V} -270 -10 0 0 0.4 0.4 {}
T {~0.7V} -80 250 2 1 0.3 0.3 {}
T {~0.38V} 30 20 2 1 0.3 0.3 {}
T {~0.78V} 30 -90 2 1 0.3 0.3 {}
N 70 -160 130 -160 {
lab=gate_p}
N -10 -110 -10 -70 {
lab=gate_p}
N -10 -110 70 -110 {
lab=gate_p}
N -10 -130 -10 -110 {
lab=gate_p}
N 70 -160 70 -110 {
lab=gate_p}
N -190 300 -190 390 {
lab=vss}
N 70 300 70 390 {
lab=vss}
N -190 390 70 390 {
lab=vss}
N 70 270 130 270 {
lab=vss}
N 130 270 130 390 {
lab=vss}
N 70 390 130 390 {
lab=vss}
N -250 270 -190 270 {
lab=vss}
N -250 270 -250 390 {
lab=vss}
N -250 390 -190 390 {
lab=vss}
N -10 -310 -10 -190 {
lab=vdd}
N -10 -310 170 -310 {
lab=vdd}
N 170 -310 170 -190 {
lab=vdd}
N 170 -160 230 -160 {
lab=vdd}
N 230 -310 230 -160 {
lab=vdd}
N 170 -310 230 -310 {
lab=vdd}
N -70 -160 -10 -160 {
lab=vdd}
N -70 -310 -70 -160 {
lab=vdd}
N -70 -310 -10 -310 {
lab=vdd}
N 130 -40 170 -40 {
lab=vss}
N 170 -90 170 -70 {
lab=vout}
N -10 -10 -10 30 {
lab=tail}
N 70 30 170 30 {
lab=tail}
N 170 -10 170 30 {
lab=tail}
N -10 -40 130 -40 {
lab=vss}
N -10 30 70 30 {
lab=tail}
N -120 270 30 270 {
lab=ibias_20u}
N 250 -40 250 50 {
lab=vinn}
N 130 -40 130 270 {
lab=vss}
N 70 30 70 240 {
lab=tail}
N -190 200 -190 240 {
lab=ibias_20u}
N 30 -160 70 -160 {
lab=gate_p}
N 210 -40 250 -40 {
lab=vinn}
N 170 -90 400 -90 {lab=vout}
N 170 -130 170 -90 {
lab=vout}
N -140 -310 -70 -310 {lab=vdd}
N -150 -40 -50 -40 {lab=vinp}
N -150 50 250 50 {lab=vinn}
N -230 110 -190 110 {lab=ibias_20u}
N -290 390 -250 390 {lab=vss}
N -190 200 -120 200 {lab=ibias_20u}
N -190 110 -190 200 {
lab=ibias_20u}
N -120 200 -120 270 {lab=ibias_20u}
N -150 270 -120 270 {
lab=ibias_20u}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 270 0 0 {name=M5
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -160 0 0 {name=M4
l=5u
w=3.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -30 -40 0 0 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 190 -40 0 1 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 10 -160 0 1 {name=M3
l=5u
w=3.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -170 270 0 1 {name=M6
l=5u
w=10u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/opin.sym} 400 -90 0 0 {name=p6 lab=vout}
C {devices/lab_wire.sym} 110 -160 0 0 {name=p10 sig_type=std_logic lab=gate_p}
C {devices/lab_wire.sym} 70 110 0 0 {name=p11 sig_type=std_logic lab=tail}
C {devices/iopin.sym} -140 -310 0 1 {name=p2 lab=vdd}
C {devices/ipin.sym} -150 -40 0 0 {name=p4 lab=vinp}
C {devices/ipin.sym} -150 50 0 0 {name=p5 lab=vinn}
C {devices/ipin.sym} -230 110 0 0 {name=p1 lab=ibias_20u}
C {devices/iopin.sym} -290 390 0 1 {name=p3 lab=vss}
