v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -400 90 -400 120 {lab=0}
N -400 0 -400 30 {lab=v_in}
N 160 -20 220 -20 {lab=v_out_hp}
N 220 -140 220 -20 {lab=v_out_hp}
N 220 -140 360 -140 {lab=v_out_hp}
N 360 -140 360 -100 {lab=v_out_hp}
N 160 -40 200 -40 {lab=v_out_cross}
N 200 -160 200 -40 {lab=v_out_cross}
N 200 -160 460 -160 {lab=v_out_cross}
N 460 -160 460 -100 {lab=v_out_cross}
N 160 -60 180 -60 {lab=v_out_lp}
N 180 -180 180 -60 {lab=v_out_lp}
N 180 -180 600 -180 {lab=v_out_lp}
N 600 -180 600 -100 {lab=v_out_lp}
N -400 -0 -120 -0 {lab=v_in}
C {/foss/designs/003_Ideal_Circuits/linkwitz_riley_cross_vsvc_150hz.sym} 20 0 0 0 {name=x1}
C {simulator_commands_shown.sym} -480 -290 0 0 {
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
C {simulator_commands_shown.sym} -485 -520 0 0 {name=spice
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
C {gnd.sym} -400 120 0 0 {name=l3 lab=0}
C {vsource.sym} -400 60 0 0 {name=vin value=AC 1 savecurrent=false ac=1}
C {lab_pin.sym} 600 -120 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 460 -120 2 0 {name=p4 sig_type=std_logic lab=v_out_cross}
C {lab_pin.sym} 360 -120 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {res.sym} 360 -70 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 460 -70 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 360 -40 0 0 {name=l1 lab=0}
C {gnd.sym} 460 -40 0 0 {name=l2 lab=0}
C {res.sym} 600 -70 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 600 -40 0 0 {name=l4 lab=0}
C {lab_pin.sym} -260 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {title.sym} -380 220 0 0 {name=Top Level Testbench author="Daniel Albinger"}
