v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -310 30 -280 {lab=VDD}
N 30 -310 330 -310 {lab=VDD}
N 330 -310 330 -270 {lab=VDD}
N 330 -210 330 -70 {lab=y}
N 30 -280 30 -270 {lab=VDD}
N 30 -210 30 -70 {lab=x}
N 330 80 330 120 {lab=#net1}
N 30 80 30 120 {lab=#net2}
N 180 120 180 160 {lab=p}
N 180 220 180 270 {lab=GND}
N 330 -310 530 -310 {lab=VDD}
N 620 -210 620 -170 {lab=#net3}
N 550 -140 580 -140 {lab=y}
N 550 -240 550 -140 {lab=y}
N 550 -240 580 -240 {lab=y}
N 30 -270 30 -240 {lab=VDD}
N 330 -270 330 -240 {lab=VDD}
N 620 -270 620 -240 {lab=VDD}
N 620 -140 710 -140 {lab=VDD}
N 710 -310 710 -140 {lab=VDD}
N 370 50 400 50 {lab=vin2}
N -50 50 -10 50 {lab=vin1}
N 250 50 330 50 {lab=GND}
N 30 50 250 50 {lab=GND}
N -330 -190 -330 -150 {lab=GND}
N -330 -270 -330 -240 {lab=VDD}
N 290 120 330 120 {lab=#net1}
N 120 120 230 120 {lab=p}
N -110 -310 -110 -270 {lab=VDD}
N -110 -210 -110 -170 {lab=#net4}
N -70 -140 -40 -140 {lab=x}
N -40 -240 -40 -140 {lab=x}
N -70 -240 -40 -240 {lab=x}
N -110 -110 -110 -80 {lab=#net5}
N -110 -270 -110 -240 {lab=VDD}
N -200 -140 -110 -140 {lab=VDD}
N -200 -310 -200 -140 {lab=VDD}
N -200 -310 -110 -310 {lab=VDD}
N -110 -310 30 -310 {lab=VDD}
N 530 -310 610 -310 {lab=VDD}
N 430 -150 550 -150 {lab=y}
N 620 -310 620 -270 {lab=VDD}
N -40 -170 30 -170 {lab=x}
N 30 120 60 120 {lab=#net2}
N 30 -170 70 -170 {lab=x}
N 330 -70 330 20 {lab=y}
N 30 -70 30 20 {lab=x}
N 610 -310 710 -310 {lab=VDD}
N 330 -150 430 -150 {lab=y}
N -50 50 -50 60 {lab=vin1}
N 400 50 400 80 {lab=vin2}
N 70 -170 110 -170 {lab=x}
N 110 -240 110 -170 {lab=x}
N 70 -240 110 -240 {lab=x}
N 240 -240 290 -240 {lab=y}
N 240 -240 240 -150 {lab=y}
N 240 -150 340 -150 {lab=y}
C {sky130_fd_pr/nfet_01v8.sym} 10 50 0 0 {name=M2
L=0.5
W=0.5
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 350 50 0 1 {name=M1
L=0.5
W=0.5
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 50 -240 0 1 {name=M11
L=0.15
W=0.8
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 310 -240 0 0 {name=M3
L=0.15
W=0.8
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 600 -240 0 0 {name=M5
L=0.5
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 600 -140 0 0 {name=M6
L=0.5
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {ammeter.sym} 620 -80 0 0 {name=Vipos savecurrent=true spice_ignore=0}
C {gnd.sym} 180 270 0 0 {name=l1 lab=GND}
C {vdd.sym} 170 -310 0 0 {name=l2 lab=VDD}
C {vsource.sym} -50 90 0 0 {name=vin1 value="PWL(0 0 200n 1.8)" savecurrent=false}
C {gnd.sym} 400 140 0 1 {name=l5 lab=GND}
C {gnd.sym} -50 120 0 1 {name=l6 lab=GND}
C {gnd.sym} 620 -50 0 0 {name=l8 lab=GND}
C {code_shown.sym} 790 -550 0 0 {name=s1 only_toplevel=false value="
.options set skywaterpdk
.param wpmos = 1
.save all
.tran 0.1n 200n
.control
	set plotsrdeg = ' '	;strings para graficar cada salida
	foreach val1 0.8 0.9 1 
		reset
		alterparam wpmos = $val1
		run
		set plotsrdeg = ( $plotsrdeg \{$curplot\}.i(vineg) \{$curplot\}.i(vipos) )
		*set plotsrdeg = ( $plotsrdeg \{$curplot\}.i(vipos) )
	end
	set xbrushwidth = 2
	set wr_singlescale
	set wr_vecnames
	option numdgt = 3
	write otaVCCS.raw
	plot $plotsrdeg
	rusage
	
.endc
"
spice_ignore=true}
C {sky130_fd_pr/corner.sym} -380 -80 0 0 {name=CORNER only_toplevel=true corner=tt}
C {lab_pin.sym} 30 -140 0 1 {name=p1 sig_type=std_logic lab=x}
C {lab_pin.sym} 370 -150 3 0 {name=p2 sig_type=std_logic lab=y}
C {lab_pin.sym} 180 120 1 0 {name=p3 sig_type=std_logic lab=p}
C {lab_pin.sym} -40 50 3 1 {name=p4 sig_type=std_logic lab=vin1}
C {lab_pin.sym} 400 50 0 1 {name=p5 sig_type=std_logic lab=vin2}
C {vsource.sym} -330 -210 0 0 {name=vin3 value=1.8 savecurrent=false}
C {gnd.sym} -330 -150 0 0 {name=l4 lab=GND}
C {vdd.sym} -330 -270 0 0 {name=l7 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -90 -240 0 1 {name=M7
L=0.5
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -90 -140 0 1 {name=M8
L=0.5
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {ammeter.sym} -110 -50 0 1 {name=Vineg savecurrent=true spice_ignore=0}
C {gnd.sym} -110 -20 0 1 {name=l9 lab=GND}
C {res.sym} 180 190 0 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 90 120 1 0 {name=R6
value=40k
footprint=1206
device=resistor
m=1
}
C {gnd.sym} 210 50 2 0 {name=l3 lab=GND}
C {res.sym} 260 120 3 1 {name=R1
value=40k
footprint=1206
device=resistor
m=1
}
C {code_shown.sym} -130 -620 0 0 {name=s2 only_toplevel=false value="
.options set skywaterpdk
.save all
.tran 0.5n 200n
.control
	run
	set xbrushwidth = 2
	set wr_singlescale
	set wr_vecnames
	option numdgt = 3
	write otaVCCS.raw
	setplot tran1
	plot i(Vineg) i(Vipos)
.endc
"
}
C {vsource.sym} 400 110 0 0 {name=vin4 value="PWL(0 1.8 200n 0)" savecurrent=false}
