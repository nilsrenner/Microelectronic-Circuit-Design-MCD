v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 50 -190 80 {lab=0}
N -190 -80 -190 -10 {lab=v_in}
N -190 -80 -160 -80 {lab=v_in}
N -70 -80 -50 -80 {lab=#net1}
N 50 -80 90 -80 {lab=#net2}
N -70 -170 -70 -80 {lab=#net1}
N 10 -80 50 -80 {lab=#net2}
N 220 -90 290 -90 {lab=v_out}
N 130 -30 130 80 {lab=0}
N 80 -40 90 -40 {lab=v_out}
N 80 -40 80 -10 {lab=v_out}
N 190 -90 190 -10 {lab=v_out}
N 190 -90 220 -90 {lab=v_out}
N 50 -80 50 -20 {lab=#net2}
N 50 40 50 80 {lab=0}
N 160 -170 220 -170 {lab=v_out}
N 220 -170 220 -90 {lab=v_out}
N -100 -80 -70 -80 {lab=#net1}
N -70 -170 100 -170 {lab=#net1}
N 130 -90 190 -90 {lab=v_out}
N 80 -10 190 -10 {lab=v_out}
C {gnd.sym} -190 80 0 0 {name=l3 lab=0}
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
plot db(v_out/v_in)
.endc
"
      }
C {lab_pin.sym} -190 -80 3 1 {name=p1 sig_type=std_logic lab=v_in}
C {title.sym} -500 180 0 0 {name=l4 author="Charlotte Benckert"}
C {res.sym} -130 -80 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -20 -80 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 130 -170 3 0 {name=C1
m=1
value=C
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 50 10 0 0 {name=C2
m=1
value=C
footprint=1206
device="ceramic capacitor"}
C {bindkeys_cheatsheet.sym} 830 -190 0 0 {}
C {vcvs.sym} 130 -60 0 0 {name=E2 value=1e6}
C {lab_pin.sym} 290 -90 0 1 {name=p2 sig_type=std_logic lab=v_out
}
C {vsource.sym} -190 20 0 0 {name=vin value=AC 1 savecurrent=false ac=1}
C {gnd.sym} 50 80 0 0 {name=l1 lab=0}
C {gnd.sym} 130 80 0 0 {name=l2 lab=0}
C {param.sym} -120 -210 0 0 {name=s1 value="C=7.23e-10"}
