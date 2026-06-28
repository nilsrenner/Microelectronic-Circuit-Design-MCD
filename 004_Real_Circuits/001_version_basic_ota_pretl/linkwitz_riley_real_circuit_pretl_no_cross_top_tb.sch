v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 0 -160 0 {lab=v_in}
N -300 60 -300 80 {lab=0}
N -90 -260 -90 -130 {lab=V_DD}
N 140 -50 240 -50 {lab=v_out_lp}
N 140 50 240 50 {lab=v_out_hp}
N -30 -260 -30 -240 {lab=V_DD}
N -90 -260 -30 -260 {lab=V_DD}
N -550 -60 -550 -30 {lab=0}
N -550 -160 -550 -120 {lab=V_DD}
N -450 -60 -450 -30 {lab=0}
N -450 -160 -450 -120 {lab=V_SS}
N -90 120 -90 160 {lab=V_SS}
N -30 -290 -30 -260 {lab=V_DD}
N -30 -180 -30 -130 {lab=#net1}
C {isource.sym} -30 -210 0 0 {name=I0 value=40u pwl(0 0 10u 0 11u 40u)"}
C {vsource.sym} -300 30 0 0 {name=vin1 value=AC 0.5 savecurrent=false ac=0.5}
C {gnd.sym} -300 80 0 0 {name=l1 lab=0}
C {simulator_commands_shown.sym} -1060 -210 0 0 {
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
C {simulator_commands_shown.sym} -1075 -460 0 0 {name=spice
only_toplevel=false 
value="
.ac dec 10 1 100k
*.ac lin 1000 1 4k
*.tran
.save all
.control
run 
plot db(v_out_lp/v_in) db(v_out_hp/v_in)
.endc
"
      }
C {lab_pin.sym} 240 -50 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 240 50 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {lab_pin.sym} -270 0 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {004_Real_Circuits/001_version_basic_ota_pretl/linkwtz_riley_crossover_pretl_OTA_no_cross.sym} -10 0 0 0 {name=x1}
C {title.sym} -530 290 0 0 {name=l2 author="Daniel Albinger"}
C {lab_pin.sym} -30 -290 1 0 {name=p4 sig_type=std_logic lab=V_DD}
C {vsource.sym} -550 -90 0 0 {name=V_DD value=0.75  savecurrent=false}
C {gnd.sym} -550 -30 0 0 {name=l3 lab=0}
C {lab_pin.sym} -550 -160 1 0 {name=p1 sig_type=std_logic lab=V_DD}
C {vsource.sym} -450 -90 2 0 {name=V_SS value=0.75 savecurrent=false}
C {gnd.sym} -450 -30 0 0 {name=l4 lab=0}
C {lab_pin.sym} -450 -160 1 0 {name=p7 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -90 160 2 0 {name=p6 sig_type=std_logic lab=V_SS}
