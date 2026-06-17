v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -290 -0 -150 0 {lab=v_in}
N 150 20 400 20 {lab=v_out_hp}
N 400 20 400 40 {lab=v_out_hp}
N 150 -0 500 -0 {lab=v_out_cross}
N 500 -0 500 40 {lab=v_out_cross}
N 150 -20 640 -20 {lab=v_out_lp}
N 640 -20 640 40 {lab=v_out_lp}
N -30 -190 -30 -160 {lab=0}
N -290 60 -290 80 {lab=0}
N 640 100 640 110 {lab=0}
N 500 100 500 110 {lab=0}
N 400 100 400 110 {lab=0}
N -60 -240 -60 -70 {lab=#net1}
N -60 -240 100 -240 {lab=#net1}
N 100 -240 100 -220 {lab=#net1}
N 100 -160 100 -90 {lab=#net2}
N 60 -90 100 -90 {lab=#net2}
N 60 -90 60 -70 {lab=#net2}
C {isource.sym} 100 -190 0 0 {name=I0 value=20u}
C {vsource.sym} -30 -210 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} -290 30 0 0 {name=vin1 value=AC 1 savecurrent=false ac=1}
C {simulator_commands_shown.sym} -730 -160 0 0 {
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
C {simulator_commands_shown.sym} -745 -410 0 0 {name=spice
only_toplevel=false 
value="
.ac dec 10 1 100k
*.tran
.save all
.control
run 
*plot v_out
plot db(v_out_lp/v_in) db(v_out_hp/v_in) db(v_out_cross/v_in) 

.endc
"
      }
C {lab_pin.sym} 640 20 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 500 20 2 0 {name=p4 sig_type=std_logic lab=v_out_cross}
C {lab_pin.sym} 400 20 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {res.sym} 500 70 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 500 110 0 0 {name=l2 lab=0}
C {res.sym} 640 70 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 640 110 0 0 {name=l4 lab=0}
C {res.sym} 400 70 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 400 110 0 0 {name=l3 lab=0}
C {lab_pin.sym} -250 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {/foss/designs/real_circuit/linkwtz_riley_crossover_pretl_OTA.sym} 0 0 0 0 {name=x1}
C {gnd.sym} -30 -160 0 0 {name=l5 lab=0}
C {gnd.sym} -290 80 0 0 {name=l1 lab=0}
