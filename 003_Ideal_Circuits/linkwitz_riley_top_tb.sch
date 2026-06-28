v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -400 90 -400 120 {lab=0}
N -400 0 -400 30 {lab=v_in}
N -190 -0 -150 0 {lab=v_in}
N 150 50 230 50 {lab=v_out_hp}
N 150 -0 230 0 {lab=v_out_cross}
N 150 -50 230 -50 {lab=v_out_lp}
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
C {lab_pin.sym} 230 -50 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 230 0 2 0 {name=p4 sig_type=std_logic lab=v_out_cross}
C {lab_pin.sym} 230 50 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {lab_pin.sym} -400 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {title.sym} -380 220 0 0 {name=Top Level Testbench author="Daniel Albinger"}
C {003_Ideal_Circuits/linkwitz_riley_cross_vsvc_150hz.sym} 20 0 0 0 {name=x1}
C {lab_pin.sym} -190 0 0 0 {name=p1 sig_type=std_logic lab=v_in}
