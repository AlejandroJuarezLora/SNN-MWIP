v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 810 -2290 810 -2220 {
lab=Vrew1}
N 740 -2340 780 -2340 {
lab=Iext[0]}
N 900 -2340 960 -2340 {
lab=vout[0]}
N 810 -1940 810 -1870 {
lab=Vrew1}
N 740 -1990 780 -1990 {
lab=Iext[1]}
N 900 -1990 960 -1990 {
lab=vout[1]}
N 810 -1610 810 -1540 {
lab=Vrew2}
N 740 -1660 780 -1660 {
lab=Iext[2]}
N 900 -1660 960 -1660 {
lab=vout[2]}
N 810 -1270 810 -1200 {
lab=Vrew2}
N 740 -1320 780 -1320 {
lab=Iext[3]}
N 900 -1320 960 -1320 {
lab=vout[3]}
N 1100 -2010 1120 -2010 {
lab=#net1}
N 1120 -1960 1120 -1570 {
lab=#net1}
N 1100 -1570 1120 -1570 {
lab=#net1}
N 1100 -1870 1120 -1870 {
lab=#net1}
N 1100 -1740 1120 -1740 {
lab=#net1}
N 1040 -2010 1070 -2010 {
lab=GND}
N 1040 -1870 1070 -1870 {
lab=GND}
N 1040 -1740 1070 -1740 {
lab=GND}
N 1040 -1570 1070 -1570 {
lab=GND}
N 1290 -1770 1340 -1770 {
lab=hx}
N 960 -1780 960 -1660 {
lab=vout[2]}
N 960 -1780 1070 -1780 {
lab=vout[2]}
N 960 -1320 990 -1320 {
lab=vout[3]}
N 1120 -2010 1120 -1960 {
lab=#net1}
N 990 -1610 990 -1320 {
lab=vout[3]}
N 990 -1610 1070 -1610 {
lab=vout[3]}
N 960 -1910 1070 -1910 {
lab=vout[1]}
N 960 -1990 960 -1910 {
lab=vout[1]}
N 1070 -2080 1070 -2050 {
lab=vout[0]}
N 980 -2080 1070 -2080 {
lab=vout[0]}
N 980 -2340 980 -2080 {
lab=vout[0]}
N 960 -2340 980 -2340 {
lab=vout[0]}
N 740 -2340 740 -2320 {
lab=Iext[0]}
N 680 -2340 740 -2340 {
lab=Iext[0]}
N 710 -1990 710 -1940 {
lab=Iext[1]}
N 710 -1990 740 -1990 {
lab=Iext[1]}
N 670 -1990 710 -1990 {
lab=Iext[1]}
N 720 -1660 720 -1640 {
lab=Iext[2]}
N 720 -1660 740 -1660 {
lab=Iext[2]}
N 670 -1660 720 -1660 {
lab=Iext[2]}
N 700 -1320 700 -1280 {
lab=Iext[3]}
N 660 -1320 700 -1320 {
lab=Iext[3]}
N 700 -1320 740 -1320 {
lab=Iext[3]}
N 900 -2310 920 -2310 {lab=vout[0]}
C {Neuron/ul_tun_final.sym} 840 -2340 0 0 {name=x2
CM=0.8p}
C {devices/iopin.sym} 220 -2030 0 0 {name=p1 lab=vdd}
C {devices/lab_pin.sym} 840 -2390 1 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 220 -2000 0 0 {name=p3 lab=vss}
C {devices/lab_pin.sym} 840 -2280 3 0 {name=p11 sig_type=std_logic lab=vss}
C {Neuron/ul_tun_final.sym} 840 -1990 0 0 {name=x1 
W_LEAK=1.1
CM=0.8p}
C {devices/lab_pin.sym} 840 -2040 1 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -1930 3 0 {name=p19 sig_type=std_logic lab=vss}
C {Neuron/ul_tun_final.sym} 840 -1660 0 0 {name=x3
W_LEAK=1.05
CM=0.8p}
C {devices/lab_pin.sym} 840 -1710 1 0 {name=p23 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -1600 3 0 {name=p26 sig_type=std_logic lab=vss}
C {Neuron/ul_tun_final.sym} 840 -1320 0 0 {name=x4
W_LEAK=1.15 
CM=0.8p}
C {devices/lab_pin.sym} 840 -1370 1 0 {name=p30 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -1260 3 0 {name=p33 sig_type=std_logic lab=vss}
C {devices/ipin.sym} 190 -2020 0 0 {name=p37 lab=Iext[3:0]}
C {devices/lab_pin.sym} 980 -2240 2 0 {name=p39 sig_type=std_logic lab=vout[0]}
C {devices/lab_pin.sym} 960 -1990 1 0 {name=p40 sig_type=std_logic lab=vout[1]}
C {devices/lab_pin.sym} 960 -1720 0 0 {name=p41 sig_type=std_logic lab=vout[2]}
C {devices/iopin.sym} 220 -1820 0 0 {name=p43 lab=hx}
C {devices/lab_pin.sym} 740 -2320 1 1 {name=p22 sig_type=std_logic lab=Iext[0]}
C {devices/lab_pin.sym} 710 -1940 1 1 {name=p28 sig_type=std_logic lab=Iext[1]}
C {devices/lab_pin.sym} 720 -1640 1 1 {name=p29 sig_type=std_logic lab=Iext[2]}
C {devices/lab_pin.sym} 700 -1280 1 1 {name=p35 sig_type=std_logic lab=Iext[3]}
C {sky130_fd_pr/nfet_01v8.sym} 1070 -2030 1 0 {name=M7
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 1070 -1890 1 0 {name=M8
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 1070 -1760 1 0 {name=M9
L=0.15
W=5
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
C {sky130_fd_pr/nfet_01v8.sym} 1070 -1590 1 0 {name=M10
L=0.15
W=5
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
C {devices/gnd.sym} 1040 -2010 1 0 {name=l32 lab=GND}
C {devices/vdd.sym} 1210 -1830 0 0 {name=l33 lab=VDD}
C {devices/gnd.sym} 1210 -1710 0 0 {name=l34 lab=GND}
C {devices/gnd.sym} 1040 -1870 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1040 -1740 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1040 -1570 1 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1340 -1770 0 1 {name=p36 sig_type=std_logic lab=hx}
C {devices/iopin.sym} 220 -1940 0 0 {name=p38 lab=vout[3:0]}
C {devices/iopin.sym} 220 -1790 0 0 {name=p7 lab=Vrew1}
C {devices/lab_pin.sym} 810 -1200 0 0 {name=p13 sig_type=std_logic lab=Vrew2}
C {devices/lab_pin.sym} 810 -2220 0 0 {name=p12 sig_type=std_logic lab=Vrew1}
C {/foss/designs/SNN-MWIP/layer/integrator.sym} 1140 -1770 0 0 {name=x5}
C {devices/iopin.sym} 220 -1745 0 0 {name=p4 lab=Vrew2}
C {devices/lab_pin.sym} 810 -1870 0 0 {name=p5 sig_type=std_logic lab=Vrew1}
C {devices/lab_pin.sym} 810 -1555 0 0 {name=p6 sig_type=std_logic lab=Vrew2}
C {devices/lab_pin.sym} 990 -1390 0 0 {name=p14 sig_type=std_logic lab=vout[3]}
C {devices/iopin.sym} 220 -1880 0 0 {name=p8 lab=nvout[3:0]}
