v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -40 360 -40 {lab=tau_nom}
N 680 -15 700 -15 {lab=dth}
N 700 -15 700 40 {lab=dth}
N 680 -35 720 -35 {lab=th}
N 720 -35 720 145 {lab=th}
N 680 -55 730 -55 {lab=dx}
N 730 -55 730 230 {lab=dx}
N 745 -75 745 310 {lab=x}
N 680 -75 745 -75 {lab=x}
N 415 -40 500 -40 {lab=tau}
N 360 -30 375 -30 {lab=tau_nom}
N 360 -40 360 -30 {lab=tau_nom}
N 190 -40 270 -40 {lab=tau_nom}
C {/foss/designs/SNN-MWIP/MWIP/mwip.sym} 520 0 0 0 {name=M1
model=mwip_v0
spiceprefix=X}
C {devices/code.sym} 987.5 207.5 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
*MADE BY JORGE ALEJANDRO JUAREZ LORA IPN


.subckt mwip_v0 Tau X Th vx vTh 
    N1 Tau X Th vx vTh  mwip_v0_model init_x=0 init_theta=0.1 
.ends mwip_v0

.model mwip_v0_model mwip_dynamics

.control
    pre_osdi /foss/designs/SNN-MWIP/Memristor/rram_v0.osdi
    pre_osdi /foss/designs/SNN-MWIP/MWIP/mwip.osdi
.endc
"
spice_ignore=false}
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
.save x dx th dth x_nom dx_nom th_nom dth_nom
+x_ref th_ref e_x e_th tau tau_nom
.tran 50u 1

"}
C {lab_pin.sym} 745 250 0 0 {name=p5 sig_type=std_logic lab=x}
C {lab_pin.sym} 730 170 0 0 {name=p6 sig_type=std_logic lab=dx}
C {lab_pin.sym} 720 115 0 0 {name=p7 sig_type=std_logic lab=th}
C {lab_pin.sym} 700 27.5 0 0 {name=p8 sig_type=std_logic lab=dth}
C {lab_pin.sym} 482.5 -40 3 0 {name=p13 sig_type=std_logic lab=tau}
C {lab_pin.sym} 295 -40 3 0 {name=p14 sig_type=std_logic lab=tau_nom}
C {vsource.sym} 190 -10 0 0 {name=V2 value="SINE(0 1 1000)" savecurrent=false}
C {gnd.sym} 190 20 0 0 {name=l2 lab=GND}
