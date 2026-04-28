v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 830 -290 830 -280 {
lab=vm}
N 650 -290 650 -280 {
lab=vm}
N 740 -250 790 -250 {
lab=#net1}
N 830 -190 830 -160 {
lab=#net1}
N 740 -190 830 -190 {
lab=#net1}
N 740 -250 740 -190 {
lab=#net1}
N 750 -130 790 -130 {
lab=vout}
N 650 -180 650 -130 {
lab=vout}
N 380 -210 380 -180 {
lab=vout}
N 380 -180 380 -130 {
lab=vout}
N 830 -100 830 -70 {
lab=vss}
N 830 -130 850 -130 {
lab=vss}
N 900 -130 900 -70 {
lab=vss}
N 260 -290 380 -290 {
lab=vm}
N 260 -290 260 -220 {
lab=vm}
N 260 -160 260 -90 {
lab=vss}
N 330 -180 380 -180 {
lab=vout}
N 850 -70 850 -50 {
lab=vss}
N 750 -170 900 -170 {
lab=vout}
N 750 -170 750 -130 {
lab=vout}
N 510 -180 650 -180 {
lab=vout}
N 650 -290 830 -290 {
lab=vm}
N 330 -240 330 -180 {
lab=vout}
N 830 -220 830 -190 {
lab=#net1}
N 690 -250 740 -250 {
lab=#net1}
N 830 -70 850 -70 {
lab=vss}
N 510 -290 650 -290 {
lab=vm}
N 650 -130 750 -130 {
lab=vout}
N 650 -220 650 -180 {
lab=vout}
N 580 -250 650 -250 {
lab=vdd}
N 830 -250 890 -250 {
lab=vdd}
N 850 -50 850 -30 {
lab=vss}
N 850 -70 860 -70 {
lab=vss}
N 860 -70 870 -70 {
lab=vss}
N 240 -290 260 -290 {
lab=vm}
N 120 -290 130 -290 {lab=vm}
N 320 -100 320 -70 {lab=Vleak}
N 320 -100 340 -100 {lab=Vleak}
N 380 -70 380 -30 {lab=vss}
N 380 -100 380 -70 {lab=vss}
N 90 -290 90 -240 {lab=vdd}
N 0 -290 50 -290 {lab=Iext}
N 50 -290 60 -290 {lab=Iext}
N 90 -360 90 -330 {lab=vout}
N 450 -250 580 -250 {lab=vdd}
N 380 -290 510 -290 {lab=vm}
N 380 -180 510 -180 {lab=vout}
N 850 -130 900 -130 {lab=vss}
N 870 -70 900 -70 {lab=vss}
N 380 -290 380 -280 {lab=vm}
N 330 -250 330 -240 {lab=vout}
N 330 -250 340 -250 {lab=vout}
N 380 -250 450 -250 {lab=vdd}
N 380 -220 380 -210 {lab=vout}
N 900 -170 940 -170 {lab=vout}
N 130 -290 180 -290 {lab=vm}
N 180 -290 240 -290 {lab=vm}
N 120 -130 160 -130 {lab=vm}
N 160 -290 160 -130 {lab=vm}
N 30 -130 60 -130 {lab=Iext}
N 30 -290 30 -130 {lab=Iext}
N 90 -90 90 -50 {lab=nvout}
N 900 -70 1040 -70 {lab=vss}
N 1040 -100 1040 -70 {lab=vss}
N 1040 -130 1040 -100 {lab=vss}
N 1040 -220 1040 -160 {lab=nvout}
N 1040 -300 1040 -280 {lab=vdd}
N 1000 -250 1000 -130 {lab=vout}
N 940 -170 1000 -170 {lab=vout}
N 1040 -290 1040 -250 {lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 360 -250 0 0 {name=M1
L=10
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 670 -250 0 1 {name=M2
L=0.15
W=1.5
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 810 -250 0 0 {name=M3
L=0.15
W=15
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 810 -130 0 0 {name=M4
L=5
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} 260 -190 0 0 {name=C1
m=1
value=@CM
footprint=1206
device="ceramic capacitor"}
C {devices/iopin.sym} 0 -290 0 1 {name=p5 lab=Iext}
C {devices/iopin.sym} 940 -170 3 1 {name=p6 lab=vout}
C {devices/iopin.sym} 850 -30 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 320 -70 1 0 {name=p7 lab=Vleak }
C {devices/lab_pin.sym} 490 -250 3 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 890 -250 3 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 260 -90 3 0 {name=p10 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 90 -310 3 1 {name=M9
L=0.15
W=4
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
spice_ignore=false}
C {devices/lab_pin.sym} 90 -240 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 360 -100 0 0 {name=M11
L=0.15
W=@W_LEAK
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 380 -30 3 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 90 -352.5 0 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 322.5 -290 1 0 {name=p16 sig_type=std_logic lab=vm}
C {devices/iopin.sym} 300 -440 0 1 {name=p8 lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 90 -110 1 1 {name=M5
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 90 -130 1 0 {name=p3 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1020 -250 0 0 {name=M6
L=0.15
W=2
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1020 -130 0 0 {name=M7
L=0.15
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1040 -300 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 1040 -190 2 1 {name=p13 lab=nvout}
C {devices/lab_pin.sym} 90 -52.5 0 0 {name=p14 sig_type=std_logic lab=nvout}
