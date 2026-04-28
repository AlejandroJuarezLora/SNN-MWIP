v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 430 -1590 430 -1570 {
lab=vileak}
N 500 -1540 520 -1540 {
lab=vileak}
N 430 -1590 500 -1590 {
lab=vileak}
N 500 -1590 500 -1540 {
lab=vileak}
N 430 -1540 430 -1510 {
lab=vss}
N 900 -2340 980 -2340 {
lab=vout[0]}
N 900 -1990 960 -1990 {
lab=vout[1]}
N 810 -1620 810 -1550 {
lab=vileak}
N 900 -1670 960 -1670 {
lab=vout[2]}
N 900 -1350 980 -1350 {
lab=vout[3]}
N 1470 -2340 1530 -2340 {
lab=vout[4]}
N 1380 -1970 1380 -1900 {
lab=vileak}
N 1470 -2020 1530 -2020 {
lab=vout[5]}
N 1470 -1680 1530 -1680 {
lab=vout[6]}
N 1470 -1360 1530 -1360 {
lab=vout[7]}
N 810 -1300 810 -1230 {
lab=vileak}
N 810 -1940 810 -1870 {
lab=vileak}
N 810 -2290 810 -2220 {
lab=vileak}
N 1380 -1310 1380 -1240 {
lab=vileak}
N 1380 -1630 1380 -1560 {
lab=vileak}
N 430 -1600 430 -1590 {
lab=vileak}
N 470 -1540 500 -1540 {
lab=vileak}
N 600 -2340 780 -2340 {lab=Iext[0]}
N 600 -2380 600 -2340 {lab=Iext[0]}
N 600 -1990 780 -1990 {lab=Iext[1]}
N 600 -2030 600 -1990 {lab=Iext[1]}
N 600 -1670 780 -1670 {lab=Iext[2]}
N 600 -1710 600 -1670 {lab=Iext[2]}
N 600 -1350 780 -1350 {lab=Iext[3]}
N 600 -1390 600 -1350 {lab=Iext[3]}
N 1170 -2340 1350 -2340 {lab=Iext[4]}
N 1170 -2380 1170 -2340 {lab=Iext[4]}
N 1170 -2020 1350 -2020 {lab=Iext[5]}
N 1170 -2060 1170 -2020 {lab=Iext[5]}
N 1170 -1680 1350 -1680 {lab=Iext[6]}
N 1170 -1720 1170 -1680 {lab=Iext[6]}
N 1170 -1360 1350 -1360 {lab=Iext[7]}
N 1170 -1400 1170 -1360 {lab=Iext[7]}
C {Neuron/ul_tun_final.sym} 840 -2340 0 0 {name=x6 
W_LEAK=1.15
CM=0.8p}
C {devices/iopin.sym} 300 -2040 0 0 {name=p1 lab=vdd}
C {devices/lab_pin.sym} 840 -2390 1 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 300 -2010 0 0 {name=p3 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 450 -1540 0 1 {name=M2
L=0.15
W=10
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
C {devices/isource.sym} 430 -1630 0 0 {name=I1 value=100nA

spice_ignore=false}
C {devices/lab_pin.sym} 430 -1660 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 430 -1510 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 840 -2280 3 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 520 -1540 1 0 {name=p12 sig_type=std_logic lab=vileak}
C {Neuron/ul_tun_final.sym} 840 -1990 0 0 {name=x1
W_LEAK=1.1
CM=0.8p}
C {devices/lab_pin.sym} 840 -2040 1 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -1930 3 0 {name=p19 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 170 -2030 0 0 {name=p37 lab=Iext[7:0]}
C {devices/lab_pin.sym} 980 -2340 0 1 {name=p39 sig_type=std_logic lab=vout[0]}
C {devices/lab_pin.sym} 960 -1990 1 0 {name=p40 sig_type=std_logic lab=vout[1]}
C {devices/lab_pin.sym} 600 -2375 3 1 {name=p22 sig_type=std_logic lab=Iext[0]}
C {devices/iopin.sym} 300 -1950 0 0 {name=p38 lab=vout[7:0]}
C {Neuron/ul_tun_final.sym} 840 -1670 0 0 {name=x2 
W_LEAK=1.05
CM=0.8p}
C {devices/lab_pin.sym} 840 -1720 1 0 {name=p36 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -1610 3 0 {name=p49 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 810 -1550 3 0 {name=p50 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 960 -1670 1 0 {name=p51 sig_type=std_logic lab=vout[2]}
C {Neuron/ul_tun_final.sym} 840 -1350 0 0 {name=x3
W_LEAK=1
CM=0.8p}
C {devices/lab_pin.sym} 840 -1400 1 0 {name=p23 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -1290 3 0 {name=p26 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1410 -2390 1 0 {name=p29 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1410 -2280 3 0 {name=p32 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1380 -2290 3 0 {name=p33 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 970 -1350 0 1 {name=p34 sig_type=std_logic lab=vout[3]}
C {devices/lab_pin.sym} 1530 -2340 1 0 {name=p35 sig_type=std_logic lab=vout[4]}
C {devices/lab_pin.sym} 1410 -2070 1 0 {name=p53 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1410 -1960 3 0 {name=p56 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1380 -1900 3 0 {name=p57 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 1530 -2020 1 0 {name=p58 sig_type=std_logic lab=vout[5]}
C {devices/lab_pin.sym} 1410 -1730 1 0 {name=p60 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1410 -1620 3 0 {name=p63 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1530 -1680 1 0 {name=p65 sig_type=std_logic lab=vout[6]}
C {devices/lab_pin.sym} 1410 -1410 1 0 {name=p67 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1410 -1300 3 0 {name=p70 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1530 -1360 1 0 {name=p72 sig_type=std_logic lab=vout[7]}
C {devices/lab_pin.sym} 810 -1230 3 0 {name=p48 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 810 -1870 3 0 {name=p25 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 810 -2220 3 0 {name=p18 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 1380 -1240 3 0 {name=p10 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 1380 -1560 3 0 {name=p13 sig_type=std_logic lab=vileak}
C {Neuron/ul_tun_final.sym} 1410 -1360 0 0 {name=x8
W_LEAK=1
CM=0.8p}
C {Neuron/ul_tun_final.sym} 1410 -2340 0 0 {name=x4
W_LEAK=1.15
CM=0.8p}
C {Neuron/ul_tun_final.sym} 1410 -2020 0 0 {name=x5
W_LEAK=1.1
CM=0.8p}
C {Neuron/ul_tun_final.sym} 1410 -1680 0 0 {name=x7
W_LEAK=1.05
CM=0.8p}
C {devices/lab_pin.sym} 600 -2025 3 1 {name=p14 sig_type=std_logic lab=Iext[1]}
C {devices/lab_pin.sym} 600 -1705 3 1 {name=p20 sig_type=std_logic lab=Iext[2]}
C {devices/lab_pin.sym} 600 -1385 3 1 {name=p27 sig_type=std_logic lab=Iext[3]}
C {devices/lab_pin.sym} 1170 -2375 3 1 {name=p31 sig_type=std_logic lab=Iext[4]}
C {devices/lab_pin.sym} 1170 -2055 3 1 {name=p43 sig_type=std_logic lab=Iext[5]}
C {devices/lab_pin.sym} 1170 -1715 3 1 {name=p46 sig_type=std_logic lab=Iext[6]}
C {devices/lab_pin.sym} 1170 -1395 3 1 {name=p54 sig_type=std_logic lab=Iext[7]}
C {code_shown.sym} 0 -2210 0 0 {name=s1 only_toplevel=false value=".save v(vout[0]) v(vout[1]) v(vout[2]) v(vout[3]) v(vout[4]) v(vout[5]) v(vout[6]) v(vout[7])"
spice_ignore=true}
C {devices/iopin.sym} 310 -1890 0 0 {name=p4 lab=nvout[7:0]}
C {devices/lab_pin.sym} 900 -2310 2 0 {name=p5 sig_type=std_logic lab=nvout[0]}
C {devices/lab_pin.sym} 900 -1960 2 0 {name=p6 sig_type=std_logic lab=nvout[1]}
C {devices/lab_pin.sym} 900 -1640 2 0 {name=p8 sig_type=std_logic lab=nvout[2]}
C {devices/lab_pin.sym} 900 -1320 2 0 {name=p15 sig_type=std_logic lab=nvout[3]}
C {devices/lab_pin.sym} 1470 -2310 2 0 {name=p17 sig_type=std_logic lab=nvout[4]}
C {devices/lab_pin.sym} 1470 -1990 2 0 {name=p21 sig_type=std_logic lab=nvout[5]}
C {devices/lab_pin.sym} 1470 -1650 2 0 {name=p24 sig_type=std_logic lab=nvout[6]}
C {devices/lab_pin.sym} 1470 -1330 2 0 {name=p28 sig_type=std_logic lab=nvout[7]}
