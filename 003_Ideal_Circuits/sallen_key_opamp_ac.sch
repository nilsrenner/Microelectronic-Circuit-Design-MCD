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
N 10 -80 50 -80 {lab=#net2}
N 450 -110 520 -110 {lab=v_out}
N 50 -80 50 -20 {lab=#net2}
N 50 40 50 80 {lab=0}
N 390 -200 450 -200 {lab=v_out}
N -100 -80 -70 -80 {lab=#net1}
N -70 -200 330 -200 {lab=#net1}
N 360 -110 450 -110 {lab=v_out}
N 50 -80 150 -80 {lab=#net2}
N 150 -180 150 -140 {lab=v_out}
N 150 -180 360 -180 {lab=v_out}
N 360 -180 360 -110 {lab=v_out}
N 330 -110 360 -110 {lab=v_out}
N -70 -200 -70 -80 {lab=#net1}
N 450 -200 450 -110 {lab=v_out}
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
value=R_LP
footprint=1206
device=resistor
m=1}
C {res.sym} -20 -80 1 0 {name=R2
value=R_LP
footprint=1206
device=resistor
m=1}
C {capa.sym} 360 -200 3 0 {name=C1
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 50 10 0 0 {name=C2
m=1
value=C_LP
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 520 -110 0 1 {name=p2 sig_type=std_logic lab=v_out
}
C {vsource.sym} -190 20 0 0 {name=vin value=AC 1 savecurrent=false ac=1}
C {gnd.sym} 50 80 0 0 {name=l1 lab=0}
C {param.sym} -180 -290 0 0 {name=s1 value="C_LP=14.5e-9"}
C {/foss/designs/meiners/opamp1.sym} 230 -110 0 0 {name=x1}
C {param.sym} -180 -260 0 0 {name=s2 value="R_LP=10k"}
