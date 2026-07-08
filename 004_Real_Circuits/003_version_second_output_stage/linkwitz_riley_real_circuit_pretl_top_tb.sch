v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 160 400 160 {lab=v_out_hp}
N 140 60 400 60 {lab=v_out_lp}
N -290 110 -160 110 {lab=v_in}
N -290 90 -290 110 {lab=v_in}
N -290 170 -290 180 {lab=0}
N -30 -50 -30 -20 {lab=#net1}
N -370 -100 -370 -80 {lab=0}
N -370 -180 -370 -160 {lab=V_DD}
N -30 -140 -30 -110 {lab=V_DD}
N -90 -140 -90 -20 {lab=V_DD}
N -280 -100 -280 -80 {lab=0}
N -280 -180 -280 -160 {lab=V_SS}
N -90 230 -90 260 {lab=V_SS}
N 140 110 400 110 {lab=v_out_cross}
C {isource.sym} -30 -80 0 0 {name=I0 value=120u}
C {vsource.sym} -370 -130 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} -290 140 0 0 {name=vin1 value="DC 0.8 AC 1" savecurrent=false }
C {simulator_commands_shown.sym} -730 -160 0 0 {
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
C {simulator_commands_shown.sym} -735 -590 0 0 {name=spice
only_toplevel=false 

value="
.include linkwitz_riley_real_circuit_pretl_top_tb.save
.temp 27
.ac dec 10 1 100k
.option sparse
.save all
.control

op
write linkwitz_riley_crossover_pretl_OTA.raw
set appendwrite


run 

plot db(v_out_lp) db(v_out_hp) db(v_out_cross) 

.endc
"
      }
C {lab_pin.sym} 400 60 2 0 {name=p3 sig_type=std_logic lab=v_out_lp}
C {lab_pin.sym} 400 160 2 0 {name=p5 sig_type=std_logic lab=v_out_hp
}
C {lab_pin.sym} -290 90 1 0 {name=p2 sig_type=std_logic lab=v_in}
C {gnd.sym} -370 -80 0 0 {name=l5 lab=0}
C {gnd.sym} -290 180 0 0 {name=l1 lab=0}
C {lab_pin.sym} -370 -180 0 0 {name=p1 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -30 -140 1 0 {name=p4 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} -90 -140 1 0 {name=p6 sig_type=std_logic lab=V_DD}
C {vsource.sym} -280 -130 2 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -280 -80 0 0 {name=l2 lab=0}
C {lab_pin.sym} -280 -180 0 0 {name=p7 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} -90 260 3 0 {name=p8 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 400 110 2 0 {name=p9 sig_type=std_logic lab=v_out_cross}
C {title.sym} -580 370 0 0 {name=l3 author="Daniel Albinger"}
C {004_Real_Circuits/003_version_second_output_stage/linkwtz_riley_crossover_pretl_OTA.sym} -10 110 0 0 {name=x1}
C {launcher.sym} -660 20 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {devices/launcher.sym} -660 60 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
