v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 30 -40 30 {lab=vin}
N 0 -50 0 0 {lab=vout}
N 0 -110 0 -80 {lab=VDD}
N 0 -150 0 -110 {lab=VDD}
N -40 -80 -40 -30 {lab=vout}
N -40 -30 0 -30 {lab=vout}
N 0 -30 120 -30 {lab=vout}
N 0 30 0 60 {lab=GND}
N 0 60 0 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -20 30 0 0 {name=M1
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -80 0 0 {name=M3
W=\{wpmos\}
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
C {gnd.sym} 0 80 0 0 {name=l1 lab=GND}
C {vdd.sym} 0 -150 0 0 {name=l2 lab=VDD}
C {vsource.sym} -80 60 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} -80 90 0 0 {name=l3 lab=GND}
C {vsource.sym} -180 -60 0 0 {name=V2 value=1.8 savecurrent=false}
C {vdd.sym} -180 -90 0 0 {name=l4 lab=VDD}
C {gnd.sym} -180 -30 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 120 -30 0 1 {name=p1 sig_type=std_logic lab=vout}
C {lab_pin.sym} -70 30 3 1 {name=p2 sig_type=std_logic lab=vin}
C {sky130_fd_pr/corner.sym} 290 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 220 -20 0 0 {name=s2 only_toplevel=false value="
.options set skywaterpdk
.param wpmos = 1
.save all
.dc V1 0 1.8 0.001
.control
	set plotsrdeg = ' '	;strings para graficar cada salida
	foreach val1 1 3 5 7 9 11 
		reset
		alterparam wpmos = $val1
		run
		set plotsrdeg = ( $plotsrdeg \{$curplot\}.vout )
	end
	set xbrushwidth = 2
	set wr_singlescale
	set wr_vecnames
	option numdgt = 3
	write tb_cs_diode.raw
	plot $plotsrdeg
	rusage
	
.endc
"
}
