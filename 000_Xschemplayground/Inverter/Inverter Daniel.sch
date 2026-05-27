v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -140 -20 -140 {lab=#net1}
N -20 -180 -20 -140 {lab=#net1}
N -30 -180 -30 -170 {lab=#net1}
N -20 -180 100 -180 {lab=#net1}
N -30 -180 -20 -180 {lab=#net1}
N -30 -10 -30 0 {lab=#net2}
N -20 0 100 0 {lab=#net2}
N -30 -40 -20 -40 {lab=#net2}
N -20 -40 -20 0 {lab=#net2}
N -30 0 -20 0 {lab=#net2}
N -70 -90 -70 -40 {lab=V_IN}
N -70 -140 -70 -90 {lab=V_IN}
N -30 -110 -30 -70 {lab=V_OUT}
N 100 -20 100 0 {lab=#net2}
N 100 -180 100 -160 {lab=#net1}
N 100 -90 100 -80 {lab=0}
N 100 -90 140 -90 {lab=0}
N 100 -100 100 -90 {lab=0}
N -150 -90 -70 -90 {lab=V_IN}
N -150 -30 -150 -10 {lab=0}
C {gnd.sym} -150 -10 0 0 {name=l1 lab=0}
C {vsource.sym} 100 -130 0 0 {name=V2 value=3 savecurrent=false}
C {vsource.sym} 100 -50 0 0 {name=V3 value=3 savecurrent=false}
C {gnd.sym} 140 -90 0 0 {name=l3 lab=0}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 -40 0 0 {name=M3
l=0.5u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -50 -140 0 0 {name=M4
l=0.5u
w=3.2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {vsource.sym} -150 -60 0 0 {name=Vin VOL=0}
C {lab_pin.sym} -30 -90 2 0 {name=p1 sig_type=std_logic lab=V_OUT}
C {lab_pin.sym} -130 -90 1 0 {name=p2 sig_type=std_logic lab=V_IN
}
C {code.sym} -530 -90 0 0 {name=stimuli
only_toplevel=false 
value="
.dc vin -1.5 1.5 0.1
.save all
.control
run
plot v(V_OUT) vs v(V_IN)
.endc
"}
C {title.sym} -430 160 0 0 {name=l2 author="Daniel Albinger"}
C {simulator_commands_shown.sym} -520 -270 0 0 {
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
