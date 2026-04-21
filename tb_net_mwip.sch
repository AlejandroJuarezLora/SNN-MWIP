v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -40 360 -40 {lab=tau_nom}
N -60 90 -60 110 {lab=GND}
N 680 -15 700 -15 {lab=dth}
N 120 40 700 40 {lab=dth}
N 700 -15 700 40 {lab=dth}
N -60 -40 -30 -40 {lab=dth_nom}
N 680 -35 720 -35 {lab=th}
N 15 145 720 145 {lab=th}
N 720 -35 720 145 {lab=th}
N -165 -60 -30 -60 {lab=th_nom}
N -165 -60 -165 -55 {lab=th_nom}
N 680 -55 730 -55 {lab=dx}
N -95 230 730 230 {lab=dx}
N 730 -55 730 230 {lab=dx}
N -275 -80 -30 -80 {lab=dx_nom}
N -195 310 745 310 {lab=x}
N 745 -75 745 310 {lab=x}
N 680 -75 745 -75 {lab=x}
N -375 -100 -30 -100 {lab=x_nom}
N -60 20 -60 30 {lab=#net1}
N -165 -55 -165 -40 {lab=th_nom}
N -165 20 -165 135 {lab=#net2}
N -275 -80 -275 -45 {lab=dx_nom}
N -275 15 -275 220 {lab=#net3}
N -375 -100 -375 -45 {lab=x_nom}
N -375 15 -375 305 {lab=#net4}
N 410 -300 410 -285 {lab=e_th}
N 315 -300 410 -300 {lab=e_th}
N 315 -225 315 -85 {lab=e_th}
N 270 -80 315 -80 {lab=e_th}
N 315 -85 315 -80 {lab=e_th}
N 410 -405 410 -390 {lab=#net5}
N 290 -330 290 -105 {lab=e_x}
N 270 -100 290 -100 {lab=e_x}
N 290 -105 290 -100 {lab=e_x}
N 700 -200 700 -35 {lab=th}
N 450 -200 560 -200 {lab=th}
N 450 -380 585 -380 {lab=x}
N 745 -305 745 -75 {lab=x}
N 290 -465 410 -465 {lab=e_x}
N 290 -390 290 -330 {lab=e_x}
N 410 -225 410 -210 {lab=#net6}
N 315 -300 315 -225 {lab=e_th}
N 290 -465 290 -390 {lab=e_x}
N 745 -380 745 -305 {lab=x}
N 585 -380 605 -380 {lab=x}
N -20 40 120 40 {lab=dth}
N -125 145 15 145 {lab=th}
N -235 230 -95 230 {lab=dx}
N -335 310 -195 310 {lab=x}
N 560 -200 700 -200 {lab=th}
N 605 -380 745 -380 {lab=x}
N 415 -40 500 -40 {lab=tau}
N 360 -30 375 -30 {lab=tau_nom}
N 360 -40 360 -30 {lab=tau_nom}
N 450 -340 480 -340 {lab=x_ref}
N 450 -160 525 -160 {lab=th_ref}
C {4x1_net.sym} 120 -70 0 0 {name=x1}
C {/foss/designs/SNN-MWIP/MWIP/mwip.sym} 520 0 0 0 {name=M1
model=mwip_v0
spiceprefix=X}
C {vsource.sym} -440 -130 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -440 -160 0 0 {name=l1 lab=VDD}
C {vdd.sym} 120 -130 0 0 {name=l2 lab=VDD}
C {gnd.sym} -440 -100 0 0 {name=l3 lab=GND}
C {devices/code.sym} 987.5 207.5 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
*MADE BY JORGE ALEJANDRO JUAREZ LORA IPN

.subckt rram_v0 TE BE
    *N1 TE BE rram_v0_model gap_initial=unif(0.9,0.79)
    N1 TE BE rram_v0_model
.ends rram_v0

.subckt mwip_v0 tau x th dx dth 
    N1 Tau x th dx dth mwip_v0_model 
.ends mwip_v0

.model mwip_v0_model mwip_dynamics
.model rram_v0_model rram_v0_va

.control
    pre_osdi /foss/designs/SNN-MWIP/Memristor/rram_v0.osdi
    pre_osdi /foss/designs/SNN-MWIP/MWIP/mwip.osdi
.endc
"
spice_ignore=false}
C {sky130_fd_pr/corner.sym} 850 195 0 0 {name=CORNER only_toplevel=true corner=tt}
C {gnd.sym} 120 -10 0 0 {name=l4 lab=GND}
C {vcvs_limit.sym} -60 60 0 1 {name=alimit1 gain='0.9/5' lower_limit=0 upper_limit=0.9}
C {gnd.sym} -60 110 0 0 {name=l5 lab=GND}
C {gnd.sym} -20 80 0 0 {name=l6 lab=GND}
C {vcvs_limit.sym} -165 165 0 1 {name=alimit2 gain='0.9/0.4148' lower_limit=0 upper_limit=0.9}
C {gnd.sym} -125 185 0 0 {name=l7 lab=GND}
C {gnd.sym} -165 195 0 0 {name=l8 lab=GND}
C {vcvs_limit.sym} -275 250 0 1 {name=alimit3 gain='0.9/5' lower_limit=0 upper_limit=0.9}
C {gnd.sym} -235 270 0 0 {name=l9 lab=GND}
C {gnd.sym} -275 280 0 0 {name=l10 lab=GND}
C {vcvs_limit.sym} -375 330 0 1 {name=alimit4 gain='0.9/4.8' lower_limit=0 upper_limit=0.9}
C {gnd.sym} -335 350 0 0 {name=l11 lab=GND}
C {gnd.sym} -375 360 0 0 {name=l12 lab=GND}
C {vsource.sym} -60 -10 0 0 {name=V2 value=0.9 savecurrent=false}
C {vsource.sym} -165 -10 0 0 {name=V3 value=0.9 savecurrent=false}
C {vsource.sym} -275 -15 0 0 {name=V4 value=0.9 savecurrent=false}
C {vsource.sym} -375 -15 0 0 {name=V5 value=0.9 savecurrent=false}
C {vcvs_limit.sym} 410 -360 0 1 {name=alimit5 gain='1.8/5' lower_limit=-0.9 upper_limit=0.9}
C {vcvs_limit.sym} 410 -180 0 1 {name=alimit6 gain='1.8/5' lower_limit=-0.9 upper_limit=0.9}
C {gnd.sym} 410 -150 0 0 {name=l13 lab=GND}
C {gnd.sym} 410 -330 0 0 {name=l14 lab=GND}
C {vsource.sym} 510 -340 3 0 {name=V6 value=2.5 savecurrent=false}
C {gnd.sym} 540 -340 0 0 {name=l15 lab=GND}
C {vsource.sym} 410 -435 0 0 {name=V7 value=0.9 savecurrent=false}
C {vsource.sym} 410 -255 0 0 {name=V8 value=0.9 savecurrent=false}
C {vsource.sym} 555 -160 3 0 {name=V9 value=0 savecurrent=false}
C {gnd.sym} 585 -160 0 0 {name=l16 lab=GND}
C {vcvs_limit.sym} 415 -10 0 0 {name=alimit7 gain=100 lower_limit=-1 upper_limit=1}
C {gnd.sym} 415 20 0 0 {name=l17 lab=GND}
C {gnd.sym} 375 10 0 0 {name=l18 lab=GND}
C {code_shown.sym} 850 -330 0 0 {name=s1 only_toplevel=false value="
.options method gear
.options KLU
.options noinit
.options set num_threads=8
.options set ng_nomodcheck
.options set skywaterpdk
.options set wr_vecnames
.options set wr_singlescale
.options numdgt = 2
.save all
.tran 100n 1
.control
	run
	write /foss/designs/SNN-MWIP/data.raw
.endc

"}
C {lab_pin.sym} 462.5 -160 3 0 {name=p1 sig_type=std_logic lab=th_ref}
C {lab_pin.sym} 467.5 -340 3 0 {name=p2 sig_type=std_logic lab=x_ref}
C {lab_pin.sym} 290 -465 0 0 {name=p3 sig_type=std_logic lab=e_x}
C {lab_pin.sym} 315 -275 0 1 {name=p4 sig_type=std_logic lab=e_th}
C {lab_pin.sym} 745 250 0 0 {name=p5 sig_type=std_logic lab=x}
C {lab_pin.sym} 730 170 0 0 {name=p6 sig_type=std_logic lab=dx}
C {lab_pin.sym} 720 115 0 0 {name=p7 sig_type=std_logic lab=th}
C {lab_pin.sym} 692.5 40 3 0 {name=p8 sig_type=std_logic lab=dth}
C {lab_pin.sym} -375 -85 0 1 {name=p9 sig_type=std_logic lab=x_nom}
C {lab_pin.sym} -275 -70 0 1 {name=p10 sig_type=std_logic lab=dx_nom}
C {lab_pin.sym} -165 -52.5 0 1 {name=p11 sig_type=std_logic lab=th_nom}
C {lab_pin.sym} -45 -40 0 1 {name=p12 sig_type=std_logic lab=dth_nom}
C {lab_pin.sym} 482.5 -40 3 0 {name=p13 sig_type=std_logic lab=tau}
C {lab_pin.sym} 295 -40 3 0 {name=p14 sig_type=std_logic lab=tau_nom}
