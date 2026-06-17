v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 0 -160 0 {lab=v_in}
N -300 60 -300 80 {lab=0}
N 140 20 390 20 {lab=v_out_hp}
N 140 -20 630 -20 {lab=v_out_lp}
N -70 -250 50 -250 {lab=#net1}
N 50 -250 50 -60 {lab=#net1}
N -70 -190 -70 -60 {lab=#net2}
N 630 -20 630 20 {lab=v_out_lp}
N -10 -190 -10 -180 {lab=0}
C {isource.sym} -70 -220 0 0 {name=I0 value=40u pwl(0 0 10u 0 11u 40u)"}
C {vsource.sym} -10 -220 0 0 {name=V1 value=1.5 savecurrent=false}
C {gnd.sym} -10 -180 0 0 {name=l5 lab=0}
C {vsource.sym} -300 30 0 0 {name=vin1 value=AC 0.5 savecurrent=false ac=0.5}
C {gnd.sym} -300 80 0 0 {name=l1 lab=0}
C {simulator_commands_shown.sym} -740 -160 0 0 {
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
C {simulator_commands_shown.sym} -755 -410 0 0 {name=spice
only_toplevel=false 
value="
*.ac dec 10 1 100k
.ac lin 1000 1 4k
*.tran
.save all
.control
run 
plot db(v_out_lp/v_in) db(v_out_hp/v_in)
plot db(v_out_lp) db(v_out_hp)

.endc
"
      }
C {lab_pin.sym} 630 20 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 390 20 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {lab_pin.sym} -270 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {/foss/designs/GitHub_Repo/004_Real_Circuits/linkwtz_riley_crossover_pretl_OTA_no_cross.sym} -10 0 0 0 {name=x1}
