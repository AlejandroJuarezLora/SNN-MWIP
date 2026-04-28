v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -1570 350 -1540 {
lab=vileak}
N 390 -1510 440 -1510 {
lab=vileak}
N 350 -1560 420 -1560 {
lab=vileak}
N 420 -1560 420 -1510 {
lab=vileak}
N 350 -1510 350 -1480 {
lab=vss}
N 810 -2050 810 -1980 {
lab=vileak}
N 740 -2100 780 -2100 {
lab=#net1}
N 930 -1860 930 -1790 {
lab=vileak}
N 860 -1910 900 -1910 {
lab=#net2}
N 290 -1890 340 -1890 {lab=vin}
N 290 -1790 340 -1790 {lab=#net3}
N 640 -1870 680 -1870 {lab=#net1}
N 680 -2100 680 -1870 {lab=#net1}
N 680 -2100 740 -2100 {lab=#net1}
N 740 -1910 860 -1910 {lab=#net2}
N 740 -1910 740 -1850 {lab=#net2}
N 640 -1810 740 -1810 {lab=#net2}
N 90 -1770 130 -1770 {lab=vin}
N 170 -1850 170 -1800 {lab=#net3}
N 170 -1910 170 -1880 {lab=vdd}
N 170 -1950 170 -1910 {lab=vdd}
N 130 -1880 130 -1830 {lab=#net3}
N 130 -1830 170 -1830 {lab=#net3}
N 170 -1830 290 -1830 {lab=#net3}
N 290 -1830 290 -1790 {lab=#net3}
N 170 -1770 170 -1740 {lab=vss}
N 170 -1740 170 -1720 {lab=vss}
N 100 -1940 100 -1770 {lab=vin}
N 100 -1940 290 -1940 {lab=vin}
N 290 -1940 290 -1890 {lab=vin}
N 740 -1850 740 -1810 {lab=#net2}
C {Neuron/ul_tun_final.sym} 960 -1910 0 0 {name=x2
spiceprefix=X
W_LEAK=0.8
CM=0.8p}
C {devices/iopin.sym} 235 -2185 0 0 {name=p1 lab=vdd}
C {devices/lab_pin.sym} 840 -2150 1 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 235 -2155 0 0 {name=p3 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 370 -1510 0 1 {name=M2
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
C {devices/isource.sym} 350 -1600 0 0 {name=I1 value=100nA

spice_ignore=false}
C {devices/lab_pin.sym} 350 -1630 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 350 -1480 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 840 -2040 3 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 440 -1510 1 0 {name=p12 sig_type=std_logic lab=vileak}
C {devices/lab_pin.sym} 810 -1980 0 0 {name=p13 sig_type=std_logic lab=vileak}
C {Neuron/ul_tun_final.sym} 840 -2100 0 0 {name=x1 
W_LEAK=0.9
CM=0.8p}
C {devices/lab_pin.sym} 960 -1960 1 0 {name=p16 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 960 -1850 3 0 {name=p19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 930 -1790 2 1 {name=p20 sig_type=std_logic lab=vileak}
C {/foss/designs/SNN-MWIP/VCCS/otavccs4.sym} 490 -1840 0 0 {name=x5}
C {devices/ipin.sym} 90 -1770 0 0 {name=p4 lab=vin}
C {devices/lab_pin.sym} 490 -1920 1 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 490 -1760 3 0 {name=p6 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 150 -1770 0 0 {name=M1
W=5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 150 -1880 0 0 {name=M3
W=5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 170 -1950 1 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 170 -1720 3 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 900 -2100 0 0 {name=p15 lab=vout1}
C {devices/iopin.sym} 1020 -1910 0 0 {name=p17 lab=vout2}
C {devices/iopin.sym} 900 -2070 0 0 {name=p14 lab=nvout1}
C {devices/iopin.sym} 1020 -1880 0 0 {name=p18 lab=nvout2}
