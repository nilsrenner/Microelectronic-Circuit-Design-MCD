v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 30 -80 30 {lab=v_out}
N -100 30 -100 120 {lab=v_out}
N -100 120 120 120 {lab=v_out}
N 120 0 120 120 {lab=v_out}
N 100 -0 120 0 {lab=v_out}
N -0 -190 0 -80 {lab=#net1}
N -80 -190 0 -190 {lab=#net1}
N -0 -190 140 -190 {lab=#net1}
N 40 -130 40 -80 {lab=#net2}
N 0 80 -0 100 {lab=0}
N -80 -130 -80 -110 {lab=0}
N 140 -190 140 100 {lab=#net1}
N 40 100 140 100 {lab=#net1}
N 40 80 40 100 {lab=#net1}
N -240 -30 -80 -30 {lab=v_in}
N -240 30 -240 50 {lab=0}
N 120 -0 240 0 {lab=v_out}
N 240 60 240 80 {lab=0}
N 160 60 160 80 {lab=0}
C {/foss/designs/004_Real_Circuits/ota-5t.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} -210 -30 1 0 {name=p1 sig_type=std_logic lab=v_in}
C {lab_pin.sym} 180 0 1 0 {name=p2 sig_type=std_logic lab=v_out}
C {vsource.sym} -80 -160 0 0 {name=V1 value=1.5 savecurrent=false}
C {isource.sym} 40 -160 0 0 {name=I0 value=20u}
C {gnd.sym} 0 100 0 0 {name=l1 lab=0}
C {gnd.sym} -80 -110 0 0 {name=l2 lab=0}
C {vsource.sym} -240 0 0 0 {name=vin1 value=AC 1 savecurrent=false ac=1}
C {gnd.sym} -240 50 0 0 {name=l3 lab=0}
C {res.sym} 240 30 0 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {gnd.sym} 240 80 0 0 {name=l4 lab=0}
C {simulator_commands_shown.sym} -420 -240 0 0 {
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
C {simulator_commands_shown.sym} -435 -490 0 0 {name=spice
only_toplevel=false 
value="
.ac dec 10 1 100k
*.tran
.save all
.control
run 
*plot v_out
plot db(v_out/v_in) 

.endc
"
      }
C {capa.sym} 160 30 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 80 0 0 {name=l5 lab=0}
