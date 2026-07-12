v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -290 -0 -150 0 {lab=v_in}
N -290 60 -290 80 {lab=0}
N -80 -320 -80 -130 {lab=V_DD}
N 150 50 330 50 {lab=v_out_hp}
N 150 -0 330 -0 {lab=v_out_cross}
N 150 -50 330 -50 {lab=v_out_lp}
N -470 -60 -470 -30 {lab=0}
N -470 -160 -470 -120 {lab=V_DD}
N -20 -370 -20 -320 {lab=V_DD}
N -80 -320 -20 -320 {lab=V_DD}
N -370 -60 -370 -30 {lab=0}
N -370 -160 -370 -120 {lab=V_SS}
N -20 -320 -20 -300 {lab=V_DD}
N -20 -240 -20 -130 {lab=#net1}
N -80 120 -80 140 {lab=V_SS}
C {isource.sym} -20 -270 0 0 {name=I0 value=40u}
C {vsource.sym} -290 30 0 0 {name=vin1 value="DC 0.8 AC 1"  savecurrent=false ac=1}
C {gnd.sym} -290 80 0 0 {name=l1 lab=0}
C {simulator_commands_shown.sym} -870 -220 0 0 {
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
C {simulator_commands_shown.sym} -885 -500 0 0 {name=spice
only_toplevel=false 
value="
.ac dec 10 1 100k
*.tran
.save all
.control
run 
*plot v_out
plot db(v_out_lp/v_in) db(v_out_hp/v_in) db(v_out_cross/v_in) 

wrdata real_lrc_basic_ota_analysis.txt db(v_out_lp) db(v_out_cross) db(v_out_hp)

.endc
"
      }
C {lab_pin.sym} 330 -50 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 330 0 2 0 {name=p4 sig_type=std_logic lab=v_out_cross}
C {lab_pin.sym} 330 50 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {lab_pin.sym} -260 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {004_Real_Circuits/001_version_basic_ota_pretl/linkwtz_riley_crossover_pretl_OTA.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -470 -90 0 0 {name=V_DD value=1.5 savecurrent=false}
C {gnd.sym} -470 -30 0 0 {name=l2 lab=0}
C {lab_pin.sym} -470 -160 1 0 {name=p1 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -20 -370 1 0 {name=p6 sig_type=std_logic lab=V_DD}
C {vsource.sym} -370 -90 2 0 {name=V_SS value=0 savecurrent=false}
C {gnd.sym} -370 -30 0 0 {name=l3 lab=0}
C {lab_pin.sym} -370 -160 1 0 {name=p7 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -80 140 3 0 {name=p8 sig_type=std_logic lab=V_SS}
C {title.sym} -630 230 0 0 {name=l4 author="Daniel Albinger"}
