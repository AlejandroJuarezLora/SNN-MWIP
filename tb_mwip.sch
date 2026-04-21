v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 680 -15 700 -15 {lab=dth}
N 700 -15 700 40 {lab=dth}
N 680 -35 720 -35 {lab=th}
N 720 -35 720 145 {lab=th}
N 680 -55 730 -55 {lab=dx}
N 730 -55 730 230 {lab=dx}
N 745 -75 745 310 {lab=x}
N 680 -75 745 -75 {lab=x}
N 420 -40 500 -40 {lab=tau}
C {devices/code.sym} 857.5 -22.5 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
*MADE BY JORGE ALEJANDRO JUAREZ LORA IPN


.subckt mwip_v0 tau x th dx dth 
    N1 Tau x th dx dth mwip_v0_model 
.ends mwip_v0

.model mwip_v0_model mwip_dynamics

.control

    pre_osdi /foss/designs/SNN-MWIP/MWIP/mwip.osdi
.endc
"
spice_ignore=false}
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
.options saveall
.tran 1m 1 uic

"}
C {lab_pin.sym} 745 250 0 0 {name=p5 sig_type=std_logic lab=x}
C {lab_pin.sym} 730 170 0 0 {name=p6 sig_type=std_logic lab=dx}
C {lab_pin.sym} 720 115 0 0 {name=p7 sig_type=std_logic lab=th}
C {lab_pin.sym} 700 27.5 0 0 {name=p8 sig_type=std_logic lab=dth}
C {lab_pin.sym} 472.5 -40 3 0 {name=p13 sig_type=std_logic lab=tau}
C {vsource.sym} 420 -10 0 1 {name=V2 value="SINE(0 3 5)" savecurrent=false}
C {gnd.sym} 420 20 0 0 {name=l2 lab=GND}
C {/foss/designs/SNN-MWIP/MWIP/mwip.sym} 520 0 0 0 {name=X1
model=mwip_v0
spiceprefix=X
}
