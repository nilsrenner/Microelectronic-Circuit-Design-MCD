v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -310 190 -310 220 {lab=0}
N -190 -80 -190 100 {lab=v_in}
N -190 -80 -160 -80 {lab=v_in}
N -70 -80 -50 -80 {lab=#net1}
N 10 -80 50 -80 {lab=#net2}
N 50 -80 50 -20 {lab=#net2}
N 50 40 50 80 {lab=0}
N 390 -200 450 -200 {lab=v_out_lp}
N -100 -80 -70 -80 {lab=#net1}
N -70 -200 330 -200 {lab=#net1}
N 360 -110 450 -110 {lab=v_out_lp}
N 50 -80 150 -80 {lab=#net2}
N 150 -180 150 -140 {lab=v_out_lp}
N 150 -180 360 -180 {lab=v_out_lp}
N 360 -180 360 -110 {lab=v_out_lp}
N -70 -200 -70 -80 {lab=#net1}
N 450 -200 450 -110 {lab=v_out_lp}
N 50 380 50 420 {lab=0}
N 390 140 450 140 {lab=v_out_hp}
N -80 260 -50 260 {lab=#net3}
N 360 230 450 230 {lab=v_out_hp}
N 360 200 360 230 {lab=v_out_hp}
N 450 140 450 230 {lab=v_out_hp}
N -310 100 -310 130 {lab=v_in}
N -310 100 -190 100 {lab=v_in}
N -190 260 -160 260 {lab=v_in}
N -190 100 -190 260 {lab=v_in}
N -80 140 -80 260 {lab=#net3}
N -100 260 -80 260 {lab=#net3}
N -80 140 330 140 {lab=#net3}
N 50 260 150 260 {lab=#net4}
N 50 260 50 320 {lab=#net4}
N 10 260 50 260 {lab=#net4}
N 820 110 880 110 {lab=v_out_inv}
N 880 110 880 200 {lab=v_out_inv}
N 750 230 770 230 {lab=0}
N 750 230 750 290 {lab=0}
N 730 110 730 170 {lab=#net5}
N 680 170 730 170 {lab=#net5}
N 580 170 580 230 {lab=v_out_hp}
N 580 170 620 170 {lab=v_out_hp}
N 970 0 980 0 {lab=v_out_inv}
N 1110 60 1140 60 {lab=0}
N 1110 60 1110 120 {lab=0}
N 1090 -110 1090 0 {lab=#net6}
N 1040 0 1090 0 {lab=#net6}
N 1090 -110 1140 -110 {lab=#net6}
N 1230 -110 1230 30 {lab=v_out}
N 1050 -110 1090 -110 {lab=#net6}
N 130 -40 150 -40 {lab=v_out_lp}
N 130 -140 130 -40 {lab=v_out_lp}
N 130 -140 150 -140 {lab=v_out_lp}
N 190 -110 360 -110 {lab=v_out_lp}
N 190 -110 190 -90 {lab=v_out_lp}
N 190 -30 190 80 {lab=0}
N 50 80 190 80 {lab=0}
N 130 300 150 300 {lab=v_out_hp}
N 130 200 130 300 {lab=v_out_hp}
N 130 200 360 200 {lab=v_out_hp}
N 190 230 190 250 {lab=v_out_hp}
N 190 230 360 230 {lab=v_out_hp}
N 190 310 190 420 {lab=0}
N 50 420 190 420 {lab=0}
N 740 270 770 270 {lab=#net5}
N 740 170 740 270 {lab=#net5}
N 730 170 740 170 {lab=#net5}
N 810 200 810 220 {lab=v_out_inv}
N 1180 30 1180 50 {lab=v_out}
N 1120 100 1140 100 {lab=#net6}
N 1120 0 1120 100 {lab=#net6}
N 1090 0 1120 0 {lab=#net6}
N 810 280 810 290 {lab=0}
N 750 290 810 290 {lab=0}
N 1180 110 1180 120 {lab=0}
N 730 110 760 110 {lab=#net5}
N 450 230 580 230 {lab=v_out_hp}
N 880 200 970 200 {lab=v_out_inv}
N 810 200 880 200 {lab=v_out_inv}
N 450 -110 990 -110 {lab=v_out_lp}
N 970 0 970 200 {lab=v_out_inv}
N 1200 -110 1230 -110 {lab=v_out}
N 1180 30 1230 30 {lab=v_out}
N 1230 30 1270 30 {lab=v_out}
C {gnd.sym} -310 220 0 0 {name=l3 lab=0}
C {simulator_commands_shown.sym} -470 -270 0 0 {
name=Libs_Ngspice1
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {simulator_commands_shown.sym} -510 -90 0 0 {name=spice
only_toplevel=false 
value="
.ac dec 10 1k 1000k
.save all
.control
run 
*plot v_out
plot db(v_out_lp/v_in) db(v_out_hp/v_in) db(v_out/v_in) 

.endc
"
      }
C {lab_pin.sym} -190 -80 3 1 {name=p1 sig_type=std_logic lab=v_in}
C {title.sym} -460 520 0 0 {name=l4 author="Charlotte Benckert"}
C {res.sym} -130 -80 1 0 {name=R1
value=R_LP
footprint=1206
device=resistor
m=1}
C {res.sym} -20 -80 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} 360 -200 3 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 50 10 0 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 520 -110 3 1 {name=p2 sig_type=std_logic lab=v_out_lp
}
C {vsource.sym} -310 160 0 0 {name=vin value=AC 1 savecurrent=false ac=1}
C {gnd.sym} 50 80 0 0 {name=l1 lab=0}
C {param.sym} -180 -290 0 0 {name=s1 value="C_LP=14.5e-9"}
C {param.sym} -180 -260 0 0 {name=s2 value="R_LP=500"}
C {res.sym} 50 350 2 0 {name=R3
value=R_HP
footprint=1206
device=resistor
m=1}
C {res.sym} 360 140 3 0 {name=R4
value=R_HP
footprint=1206
device=resistor
m=1}
C {capa.sym} -20 260 3 0 {name=C3
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -130 260 3 0 {name=C4
m=1
value=C_HP
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 520 230 3 1 {name=p3 sig_type=std_logic lab=v_out_hp
}
C {gnd.sym} 50 420 0 0 {name=l2 lab=0}
C {param.sym} 80 -290 0 0 {name=s3 value="C_HP=500e-12"}
C {param.sym} 80 -260 0 0 {name=s4 value="R_HP=14.5k"}
C {res.sym} 790 110 3 0 {name=R5
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 650 170 3 0 {name=R6
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 750 290 0 0 {name=l5 lab=0}
C {param.sym} 360 -290 0 0 {name=s5 value="R_IN=1k"}
C {res.sym} 1170 -110 3 0 {name=R7
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 1010 0 3 0 {name=R8
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1110 120 0 0 {name=l6 lab=0}
C {res.sym} 1020 -110 3 0 {name=R9
value=R_IN
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1270 30 0 1 {name=p4 sig_type=std_logic lab=v_out
}
C {vcvs.sym} 190 -60 0 0 {name=E2 value=1e6}
C {vcvs.sym} 190 280 0 0 {name=E1 value=1e6}
C {vcvs.sym} 810 250 0 0 {name=E3 value=1e6}
C {vcvs.sym} 1180 80 0 0 {name=E4 value=1e6}
C {lab_pin.sym} 900 200 3 1 {name=p5 sig_type=std_logic lab=v_out_inv
}
C {gnd.sym} 1180 120 0 0 {name=l7 lab=0}
