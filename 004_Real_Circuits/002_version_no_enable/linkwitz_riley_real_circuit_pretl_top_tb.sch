v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -290 -0 -150 0 {lab=v_in}
N -290 60 -290 80 {lab=0}
N 150 -50 300 -50 {lab=v_out_lp}
N 150 0 300 0 {lab=v_out_cross}
N 150 50 300 50 {lab=v_out_hp}
N -20 -180 -20 -130 {lab=#net1}
N -620 -120 -620 -80 {lab=V_DD}
N -80 -260 -80 -130 {lab=V_DD}
N -20 -260 -20 -240 {lab=V_DD}
N -520 -120 -520 -80 {lab=V_SS}
N -80 120 -80 180 {lab=V_SS}
N -620 -20 -620 0 {lab=0}
N -520 -20 -520 -0 {lab=0}
C {isource.sym} -20 -210 0 0 {name=I_BIAS value=80u}
C {vsource.sym} -620 -50 0 0 {name=V_DD value=0.75 savecurrent=false}
C {vsource.sym} -290 30 0 0 {name=vin1 value=AC 1 savecurrent=false ac=1}
C {simulator_commands_shown.sym} -830 -440 0 0 {
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
C {simulator_commands_shown.sym} -845 -690 0 0 {name=spice
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
C {lab_pin.sym} 300 -50 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 300 0 2 0 {name=p4 sig_type=std_logic lab=v_out_cross}
C {lab_pin.sym} 300 50 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {lab_pin.sym} -250 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {gnd.sym} -290 80 0 0 {name=l1 lab=0}
C {lab_pin.sym} -620 -120 1 0 {name=p1 sig_type=std_logic lab=V_DD}
C {vsource.sym} -520 -50 2 0 {name=V_SS value=0.75 savecurrent=false}
C {lab_pin.sym} -80 -260 1 0 {name=p6 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -20 -260 1 0 {name=p7 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -520 -120 1 0 {name=p8 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -80 180 3 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} -620 0 0 0 {name=l2 lab=0}
C {gnd.sym} -520 0 0 0 {name=l3 lab=0}
C {title.sym} -620 250 0 0 {name=l4 author="Daniel Albinger"}
C {004_Real_Circuits/002_version_no_enable/linkwtz_riley_crossover_pretl_OTA.sym} 0 0 0 0 {name=x1}
