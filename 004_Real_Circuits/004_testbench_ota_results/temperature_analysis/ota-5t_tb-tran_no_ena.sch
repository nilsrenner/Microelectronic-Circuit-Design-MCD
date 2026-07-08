v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 520 -300 520 -280 {
lab=GND}
N 600 -300 600 -280 {
lab=GND}
N 600 -380 600 -360 {
lab=v_ss}
N 1050 -830 1090 -830 {
lab=v_dd}
N 1050 -550 1050 -380 {
lab=v_ss}
N 1300 -530 1300 -380 {
lab=v_ss}
N 1300 -630 1300 -590 {
lab=v_out}
N 1220 -630 1300 -630 {
lab=v_out}
N 1220 -630 1220 -510 {
lab=v_out}
N 1150 -630 1220 -630 {
lab=v_out}
N 900 -510 1220 -510 {
lab=v_out}
N 900 -600 900 -510 {
lab=v_out}
N 900 -600 970 -600 {
lab=v_out}
N 700 -510 700 -380 {
lab=v_ss}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -660 700 -570 {
lab=v_in}
N 700 -660 970 -660 {
lab=v_in}
N 1090 -830 1090 -810 {
lab=v_dd}
N 1090 -750 1090 -710 {
lab=#net1}
N 1050 -760 1050 -710 {
lab=v_dd}
N 520 -760 1050 -760 {
lab=v_dd}
N 520 -760 520 -360 {
lab=v_dd}
N 1050 -830 1050 -760 {
lab=v_dd}
N 1050 -380 1300 -380 {
lab=v_ss}
N 700 -380 1050 -380 {
lab=v_ss}
C {devices/code_shown.sym} 0 -100 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 0 -740 0 0 {name=NGSPICE only_toplevel=true 
value="
.ic v(v_out)=0
.option method=gear

.control

*foreach ti -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140
foreach ti -40 -20 0 20 40 60 80 100 120 140    
option temp = $ti
    tran 0.005u 5u uic
    wrdata out_$\{ti\}.txt v_in v_out
end


plot v_in tran1.v_out tran2.v_out tran3.v_out tran4.v_out tran5.v_out tran6.v_out tran7.v_out tran8.v_out tran9.v_out tran10.v_out
.endc

"}
C {devices/vsource.sym} 520 -330 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 520 -280 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="(c) 2024-2025 Harald Pretl, Apache-2.0 license"}
C {devices/launcher.sym} 500 -170 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 600 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 600 -280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 1300 -560 0 0 {name=C1
value=50f}
C {devices/lab_wire.sym} 1300 -630 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 700 -540 0 0 {name=Vin value="PULSE(0. 0.8 2000n 0.1n 0.1n 3u 6u)"}
C {devices/lab_wire.sym} 760 -660 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1090 -780 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u 30u)"}
C {devices/spice_probe.sym} 820 -660 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1180 -630 0 0 {name=p6 attrs=""}
C {003_version_second_output_stage/ota-5t_no_ena_copy.sym} 1060 -630 0 0 {name=x1}
