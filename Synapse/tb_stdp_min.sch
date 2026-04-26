v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 650 -180 1450 220 {flags=graph
y1=-179897.62
y2=1953007.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Memristance [Ohms]; xstdp1.be xstdp1.te - i(v.xstdp1.vmr) / \\""
linewidth_mult=4}
B 2 640 660 1440 1060 {flags=graph
y1=0.75
y2=2.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=6
node=n.xstdp1.xr2.n1#ngap}
B 2 660 -600 1460 -200 {flags=graph
y1=-2e-09
y2=1.7e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=8
node=i(v_iext)}
B 2 650 230 1450 630 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="V1
V2"
linewidth_mult=4}
B 2 2280 -170 3080 230 {flags=graph
y1=1100000
y2=3400000
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Memristance [Ohms]; xstdp2.be xstdp2.te - i(v.xstdp2.vmr) / \\""
linewidth_mult=4}
B 2 2270 670 3070 1070 {flags=graph
y1=-0.095
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=6
node=n.xstdp2.xr1.n1#ngap}
B 2 2290 -590 3090 -190 {flags=graph
y1=-2.3e-09
y2=2.2e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=8
node=i(v_iext1)}
B 2 2280 240 3080 640 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="V1
V2"
linewidth_mult=4}
B 5 147.5 17.5 152.5 22.5 {name=vdd dir=inout}
B 5 -2.5 57.5 2.5 62.5 {name=vout_pre dir=inout}
B 5 297.5 67.5 302.5 72.5 {name=vout_post dir=inout}
B 5 297.5 97.5 302.5 102.5 {name=I_post dir=inout}
B 5 1817.5 -2.5 1822.5 2.5 {name=vdd dir=inout}
N -110 60 -110 100 {lab=V1}
N -110 60 0 60 {lab=V1}
N -110 160 -110 200 {lab=GND}
N -110 200 150 200 {lab=GND}
N 410 70 410 110 {lab=V2}
N 300 70 410 70 {lab=V2}
N 300 100 330 100 {lab=#net1}
N 330 100 330 120 {lab=#net1}
N 330 180 330 200 {lab=GND}
N 150 200 330 200 {lab=GND}
N 410 170 410 200 {lab=GND}
N 330 200 410 200 {lab=GND}
N 150 200 150 220 {lab=GND}
N 150 -10 150 20 {lab=VDD}
N -170 70 -170 110 {lab=nV1}
N -170 70 -0 70 {lab=nV1}
N 550 -20 550 80 {lab=nV2}
N 300 80 550 80 {lab=nV2}
N 150 140 150 170 {lab=GND}
N 150 170 150 200 {lab=GND}
N 1820 180 1820 200 {lab=GND}
N 1820 -30 1820 0 {lab=VDD}
N 1820 120 1820 150 {lab=GND}
N 1820 150 1820 180 {lab=GND}
N 2080 50 2080 90 {lab=V2}
N 1970 50 2080 50 {lab=V2}
N 2220 -40 2220 60 {lab=nV2}
N 1970 60 2220 60 {lab=nV2}
N 1670 0 1670 40 {lab=V1}
N 1610 10 1610 50 {lab=nV1}
N 1610 50 1670 50 {lab=nV1}
C {ammeter.sym} 330 150 0 0 {name=V_iext savecurrent=true spice_ignore=0}
C {gnd.sym} 150 220 0 0 {name=l1 lab=GND}
C {vdd.sym} 150 -10 0 0 {name=l2 lab=VDD}
C {vsource.sym} -100 -50 0 1 {name=V3 value=1.8 savecurrent=false}
C {vdd.sym} -100 -80 0 0 {name=l3 lab=VDD}
C {gnd.sym} -100 -20 0 0 {name=l4 lab=GND}
C {stdp_min.sym} 150 60 0 0 {name=xstdp1}
C {devices/vsource.sym} 410 140 0 0 {name=V1 value="PULSE(0 1.8 0 5n 5n 1000n 2000n 25)"}
C {devices/vsource.sym} -110 130 0 0 {name=V2 value="PULSE(0 1.8 50u 5n 5n 1000n 2000n 25)"}
C {devices/code_shown.sym} 300 330 0 1 {name=NGSPICE
only_toplevel=true
value="

.control
  pre_osdi /foss/designs/SNN-MWIP/Memristor/rram_v0.osdi
  save all
  tran 1n 100u
  write tb_stdp_min.raw

.endc

" }
C {sky130_fd_pr/corner.sym} 50 -370 0 0 {name=CORNER only_toplevel=true corner=tt}
C {lab_pin.sym} -110 60 0 0 {name=p1 sig_type=std_logic lab=V1}
C {lab_pin.sym} 410 70 0 1 {name=p2 sig_type=std_logic lab=V2}
C {launcher.sym} 250 -140 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tb_stdp_min.raw tran"
}
C {devices/code_shown.sym} -277.5 557.5 0 0 {name=MODELS1
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
C {/foss/designs/SNN-MWIP/not.sym} -270 140 0 0 {name=x1}
C {lab_pin.sym} -290 110 0 0 {name=p3 sig_type=std_logic lab=V1}
C {/foss/designs/SNN-MWIP/not.sym} 450 10 0 0 {name=x2}
C {lab_pin.sym} 430 -20 0 0 {name=p4 sig_type=std_logic lab=V2}
C {vdd.sym} 450 -70 0 0 {name=l5 lab=VDD}
C {gnd.sym} 450 30 0 0 {name=l6 lab=GND}
C {gnd.sym} -270 160 0 0 {name=l7 lab=GND}
C {vdd.sym} -270 60 0 0 {name=l8 lab=VDD}
C {lab_pin.sym} -170 80 0 0 {name=p5 sig_type=std_logic lab=nV1}
C {lab_pin.sym} 550 70 0 1 {name=p6 sig_type=std_logic lab=nV2}
C {gnd.sym} 1820 200 0 0 {name=l9 lab=GND}
C {vdd.sym} 1820 -30 0 0 {name=l10 lab=VDD}
C {stdp_min_sky.sym} 1820 40 0 0 {name=xstdp2}
C {lab_pin.sym} 2080 50 0 1 {name=p7 sig_type=std_logic lab=V2}
C {lab_pin.sym} 2220 50 0 1 {name=p8 sig_type=std_logic lab=nV2}
C {ammeter.sym} 1970 110 0 0 {name=V_iext1 savecurrent=true spice_ignore=0}
C {gnd.sym} 1970 140 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1670 0 0 0 {name=p9 sig_type=std_logic lab=V1}
C {lab_pin.sym} 1610 20 0 0 {name=p10 sig_type=std_logic lab=nV1}
