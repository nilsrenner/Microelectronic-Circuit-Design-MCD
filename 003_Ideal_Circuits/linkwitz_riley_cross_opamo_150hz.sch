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
N 360 -180 360 -110 {lab=v_out_lp}
N -70 -200 -70 -80 {lab=#net1}
N 450 -200 450 -110 {lab=v_out_lp}
N 50 380 50 420 {lab=0}
N 390 140 450 140 {lab=v_out_hp}
N -80 260 -50 260 {lab=#net3}
N 450 140 450 230 {lab=v_out_hp}
N -310 100 -310 130 {lab=v_in}
N -310 100 -190 100 {lab=v_in}
N -190 260 -160 260 {lab=v_in}
N -190 100 -190 260 {lab=v_in}
N -80 140 -80 260 {lab=#net3}
N -100 260 -80 260 {lab=#net3}
N -80 140 330 140 {lab=#net3}
N 50 260 50 320 {lab=#net4}
N 10 260 50 260 {lab=#net4}
N 820 110 980 110 {lab=v_out_inv}
N 730 110 730 170 {lab=#net5}
N 680 170 730 170 {lab=#net5}
N 580 170 580 230 {lab=v_out_hp}
N 580 170 620 170 {lab=v_out_hp}
N 1200 -110 1200 0 {lab=#net6}
N 1150 0 1200 0 {lab=#net6}
N 1200 -110 1370 -110 {lab=#net6}
N 1460 -110 1460 30 {lab=v_out}
N 1160 -110 1200 -110 {lab=#net6}
N 730 170 770 170 {lab=#net5}
N 1200 0 1240 -0 {lab=#net6}
N 730 110 760 110 {lab=#net5}
N 450 230 580 230 {lab=v_out_hp}
N 450 -110 1100 -110 {lab=v_out_lp}
N 1430 -110 1460 -110 {lab=v_out}
N 1410 30 1460 30 {lab=v_out}
N 1460 30 1500 30 {lab=v_out}
N 50 -80 80 -80 {lab=#net2}
N 80 -180 80 -140 {lab=v_out_lp}
N 80 -180 360 -180 {lab=v_out_lp}
N 260 -110 360 -110 {lab=v_out_lp}
N 50 260 90 260 {lab=#net4}
N 60 200 90 200 {lab=v_out_hp}
N 60 160 60 200 {lab=v_out_hp}
N 60 160 320 160 {lab=v_out_hp}
N 320 160 320 230 {lab=v_out_hp}
N 320 230 450 230 {lab=v_out_hp}
N 270 230 320 230 {lab=v_out_hp}
N 980 110 980 200 {lab=v_out_inv}
N 950 200 980 200 {lab=v_out_inv}
N 740 230 770 230 {lab=0}
N 740 230 740 370 {lab=0}
N 980 200 1040 200 {lab=v_out_inv}
N 1040 0 1040 200 {lab=v_out_inv}
N 1040 -0 1090 0 {lab=v_out_inv}
N 1220 60 1240 60 {lab=0}
N 1220 60 1220 120 {lab=0}
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
.ac dec 10 1 100k
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
C {gnd.sym} 740 370 0 0 {name=l5 lab=0}
C {res.sym} 1400 -110 3 0 {name=R7
value=R_IN
footprint=1206
device=resistor
m=1}
C {res.sym} 1120 0 3 0 {name=R8
value=R_IN
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1220 120 0 0 {name=l6 lab=0}
C {res.sym} 1130 -110 3 0 {name=R9
value=R_IN
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1500 30 0 1 {name=p4 sig_type=std_logic lab=v_out
}
C {lab_pin.sym} 1000 200 3 1 {name=p5 sig_type=std_logic lab=v_out_inv
}
C {/foss/designs/meiners/opamp1.sym} 160 -110 0 0 {name=x1}
C {/foss/designs/meiners/opamp1.sym} 170 230 0 0 {name=x2}
C {/foss/designs/meiners/opamp1.sym} 850 200 0 0 {name=x3}
C {/foss/designs/meiners/opamp1.sym} 1320 30 0 0 {name=x4}
C {param.sym} -150 -300 0 0 {name=s1 value="C_LP=1.06e-6"}
C {param.sym} -150 -270 0 0 {name=s2 value="R_LP=1000"}
C {param.sym} 110 -300 0 0 {name=s3 value="C_HP=1e-9"}
C {param.sym} 110 -270 0 0 {name=s4 value="R_HP=1.06e6"}
C {param.sym} 390 -300 0 0 {name=s5 value="R_IN=1k"}
