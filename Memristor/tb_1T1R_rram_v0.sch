v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1120 -500 1920 -100 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="6 4 7"
node="\\"BL [V];bl\\"
\\"WL [V]; wl\\"
\\"SL [V]; SL\\""
linewidth_mult=4}
B 2 1120 -90 1920 310 {flags=graph
y1=-800000
y2=-760
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Memristance Value [Ohms];te be - i(Vread) / \\""
linewidth_mult=4}
B 2 1120 -930 1920 -530 {flags=graph
y1=-0.0028
y2=0.00049
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0




color=6
node="\\"Current Memristor[A]; i(vread)\\""
linewidth_mult=4}
B 2 2630 -480 3430 -80 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="6 4 7"
node="\\"BL [V];bl1\\"
\\"WL [V]; wl1\\"
\\"SL [V]; SL1\\""
linewidth_mult=4}
B 2 2630 -70 3430 330 {flags=graph
y1=-3400000
y2=-810
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Memristance Value [Ohms];te1 be1 - i(Vread1) / \\""
linewidth_mult=4}
B 2 2630 -910 3430 -510 {flags=graph
y1=-0.0027
y2=1.1e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0




color=6
node="\\"Current Memristor[A]; i(vread1)\\""
linewidth_mult=4}
B 2 2620 -1340 3420 -940 {flags=graph
y1=1e-05
y2=3.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=6
node=n.xr4.n1#ngap}
B 2 1110 -1340 1910 -940 {flags=graph
y1=0.08
y2=3.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5625e-11
x2=5e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=6
node=n.xr2.n1#ngap}
N 250 -530 250 -490 {
lab=GND}
N 250 -490 560 -490 {
lab=GND}
N 560 -530 560 -490 {
lab=GND}
N 370 -530 370 -490 {
lab=GND}
N 560 -630 560 -590 {
lab=SL}
N 560 -660 640 -660 {
lab=GND}
N 370 -660 520 -660 {
lab=WL}
N 370 -660 370 -590 {
lab=WL}
N 560 -710 560 -690 {
lab=te}
N 560 -820 560 -770 {
lab=te}
N 640 -660 640 -610 {
lab=GND}
N 640 -610 640 -490 {
lab=GND}
N 560 -490 640 -490 {
lab=GND}
N 560 -770 560 -710 {
lab=te}
N 250 -880 360 -880 {
lab=BL}
N 420 -880 560 -880 {
lab=be}
N 250 -700 250 -530 {
lab=GND}
N 250 -880 250 -760 {
lab=BL}
N 2110 -560 2110 -520 {
lab=GND}
N 2110 -520 2420 -520 {
lab=GND}
N 2420 -560 2420 -520 {
lab=GND}
N 2230 -560 2230 -520 {
lab=GND}
N 2420 -660 2420 -620 {
lab=SL1}
N 2420 -690 2500 -690 {
lab=GND}
N 2230 -690 2380 -690 {
lab=WL1}
N 2230 -690 2230 -620 {
lab=WL1}
N 2420 -740 2420 -720 {
lab=te1}
N 2420 -850 2420 -800 {
lab=te1}
N 2500 -690 2500 -640 {
lab=GND}
N 2500 -640 2500 -520 {
lab=GND}
N 2420 -520 2500 -520 {
lab=GND}
N 2420 -800 2420 -740 {
lab=te1}
N 2110 -910 2220 -910 {
lab=BL1}
N 2280 -910 2420 -910 {
lab=be1}
N 2110 -730 2110 -560 {
lab=GND}
N 2110 -910 2110 -790 {
lab=BL1}
C {devices/code_shown.sym} 200 -320 0 0 {name=NGSPICE
only_toplevel=true
value="
.options num_threads=8
.control
  save all
  tran 100n 50u uic
  write tb_1T1R_rram_v0.raw
.endc

" }
C {sky130_fd_pr/corner.sym} 690 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {sky130_fd_pr/nfet_01v8.sym} 540 -660 0 0 {name=M1
L=0.15
W=7
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
C {devices/vsource.sym} 370 -560 0 0 {name=Vwl value="PWL(0 1.7 24u 1.7 25u 3)"

}
C {devices/vsource.sym} 250 -730 0 0 {name=Vbl value="PWL(0 0 10u 0 15u 3 20u 0)"}
C {devices/gnd.sym} 440 -490 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 860 -510 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_1T1R_rram_v0.raw tran"
}
C {devices/lab_pin.sym} 420 -660 1 0 {name=wl sig_type=std_logic lab=WL}
C {devices/lab_pin.sym} 460 -880 3 0 {name=be sig_type=std_logic lab=be}
C {devices/lab_pin.sym} 250 -860 0 0 {name=p1 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 560 -610 2 0 {name=wl1 sig_type=std_logic lab=SL}
C {devices/vsource.sym} 390 -880 1 0 {name=Vread value=1e-5}
C {devices/vsource.sym} 560 -560 0 0 {name=Vsl value="PWL(0n 0 30u 0 35u 3 40u 0)"}
C {devices/lab_pin.sym} 560 -750 0 0 {name=be1 sig_type=std_logic lab=te}
C {rram_v0.sym} 560 -850 2 0 {name=R2
model=rram_v0
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2400 -690 0 0 {name=M2
L=0.15
W=7
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
C {devices/vsource.sym} 2230 -590 0 0 {name=Vwl1 value="PWL(0 1.7 24u 1.7 25u 3)"

}
C {devices/vsource.sym} 2110 -760 0 0 {name=Vbl1 value="PWL(0 0 10u 0 15u 3 20u 0)"}
C {devices/gnd.sym} 2300 -520 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 2280 -690 1 0 {name=wl2 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 2330 -910 3 0 {name=be2 sig_type=std_logic lab=be1}
C {devices/lab_pin.sym} 2110 -890 0 0 {name=p2 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 2420 -640 2 0 {name=wl3 sig_type=std_logic lab=SL1}
C {devices/vsource.sym} 2250 -910 1 0 {name=Vread1 value=1e-5}
C {devices/vsource.sym} 2420 -590 0 0 {name=Vsl1 value="PWL(0n 0 30u 0 35u 3 40u 0)"}
C {devices/lab_pin.sym} 2420 -830 0 0 {name=be3 sig_type=std_logic lab=te1}
C {sky.sym} 2420 -880 2 0 {name=R4
model=sky_reram
spiceprefix=X
}
C {devices/code_shown.sym} 192.5 -92.5 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
*MADE BY JORGE ALEJANDRO JUAREZ LORA IPN

.subckt rram_v0 TE BE
*N1 TE BE rram_v0_model gap_initial=unif(0.9,0.8)
N1 TE BE rram_v0_model
.ends rram_v0



.subckt sky_reram TE BE
N1 TE BE sky_reram_model Tfilament_0=3.3e-9
.ends sky_reram

.model rram_v0_model rram_v0_va
.model sky_reram_model sky130_fd_pr_reram__reram_cell

.control
pre_osdi /foss/designs/SNN-MWIP/Memristor/rram_v0.osdi
pre_osdi /foss/designs/SNN-MWIP/Memristor/sky.osdi
.endc
"
spice_ignore=false}
