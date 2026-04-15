v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 20 -110 20 {lab=GND}
N -130 20 -130 60 {lab=GND}
N -130 60 -70 60 {lab=GND}
N -70 30 -70 60 {lab=GND}
N -230 -20 -230 -10 {lab=vin}
N -230 -20 -110 -20 {lab=vin}
N -70 -70 -70 -30 {lab=vout}
N -150 230 -110 230 {lab=vin}
N -70 190 -70 220 {lab=#net1}
N -70 100 -70 130 {lab=vout2}
C {vcvs_limit.sym} -70 0 0 0 {name=alimit1 gain=3 lower_limit=-5.0 upper_limit=5.0}
C {vsource.sym} -230 20 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -70 60 0 0 {name=l1 lab=GND}
C {gnd.sym} -230 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -70 -70 0 0 {name=p1 sig_type=std_logic lab=vout}
C {code_shown.sym} 40 -60 0 0 {name=s1 only_toplevel=false value="
.dc V1 -1 1 0.2
.control
	run
	plot V(vin) V(vout) V(vout2)
.endc
"}
C {lab_pin.sym} -180 -20 1 0 {name=p2 sig_type=std_logic lab=vin}
C {vcvs.sym} -70 250 0 0 {name=E1 value=2}
C {gnd.sym} -70 280 0 0 {name=l3 lab=GND}
C {gnd.sym} -110 270 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -150 230 1 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} -70 100 0 0 {name=p4 sig_type=std_logic lab=vout2}
C {vsource.sym} -70 160 0 0 {name=V2 value=1 savecurrent=false}
