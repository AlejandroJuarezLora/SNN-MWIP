v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -310 30 -280 {lab=avdd}
N 30 -310 330 -310 {lab=avdd}
N 330 -310 330 -270 {lab=avdd}
N 330 -210 330 -70 {lab=y}
N 30 -280 30 -270 {lab=avdd}
N 30 -210 30 -70 {lab=x}
N 330 80 330 120 {lab=#net1}
N 30 80 30 120 {lab=#net2}
N 180 120 180 160 {lab=p}
N 180 220 180 270 {lab=avss}
N 330 -310 530 -310 {lab=avdd}
N 620 -210 620 -170 {lab=#net3}
N 550 -140 580 -140 {lab=y}
N 550 -240 550 -140 {lab=y}
N 550 -240 580 -240 {lab=y}
N 30 -270 30 -240 {lab=avdd}
N 330 -270 330 -240 {lab=avdd}
N 620 -270 620 -240 {lab=avdd}
N 370 50 400 50 {lab=vin2}
N -50 50 -10 50 {lab=vin1}
N 250 50 330 50 {lab=avss}
N 30 50 250 50 {lab=avss}
N 290 120 330 120 {lab=#net1}
N 120 120 230 120 {lab=p}
N -200 -310 -200 -270 {lab=avdd}
N -200 -210 -200 -170 {lab=#net4}
N -160 -140 -130 -140 {lab=x}
N -130 -240 -130 -140 {lab=x}
N -160 -240 -130 -240 {lab=x}
N -200 -110 -200 -80 {lab=ineg1}
N -200 -270 -200 -240 {lab=avdd}
N -290 -140 -200 -140 {lab=avdd}
N -200 -310 -60 -310 {lab=avdd}
N 530 -310 610 -310 {lab=avdd}
N 620 -310 620 -270 {lab=avdd}
N 30 120 60 120 {lab=#net2}
N 30 -170 70 -170 {lab=x}
N 330 -70 330 20 {lab=y}
N 30 -70 30 20 {lab=x}
N 610 -310 710 -310 {lab=avdd}
N 70 -170 110 -170 {lab=x}
N 110 -240 110 -170 {lab=x}
N 70 -240 110 -240 {lab=x}
N -60 -310 30 -310 {lab=avdd}
N 150 250 180 250 {lab=avss}
N -200 -20 -200 10 {lab=ineg1}
N 620 -110 620 -90 {lab=ipos2}
N 620 -30 620 0 {lab=ipos2}
N 270 -240 290 -240 {lab=y}
N 270 -190 330 -190 {lab=y}
N 330 -190 550 -190 {lab=y}
N 270 -240 270 -190 {lab=y}
N 620 -140 660 -140 {lab=avdd}
N -130 -190 30 -190 {lab=x}
N -290 -310 -200 -310 {lab=avdd}
N -200 -80 -200 -20 {lab=ineg1}
N 620 -90 620 -30 {lab=ipos2}
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
C {lab_pin.sym} 30 -140 0 1 {name=p1 sig_type=std_logic lab=x}
C {lab_pin.sym} 330 -140 0 0 {name=p2 sig_type=std_logic lab=y}
C {lab_pin.sym} 180 120 1 0 {name=p3 sig_type=std_logic lab=p}
C {sky130_fd_pr/pfet_01v8.sym} -180 -240 0 1 {name=M7
L=0.5
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -180 -140 0 1 {name=M8
L=0.5
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
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
C {res.sym} 260 120 3 1 {name=R1
value=40k
footprint=1206
device=resistor
m=1
}
C {iopin.sym} 190 -310 3 0 {name=p6 lab=avdd}
C {iopin.sym} 180 270 0 0 {name=p7 lab=avss}
C {ipin.sym} -50 50 2 1 {name=p8 lab=vin1}
C {ipin.sym} 400 50 2 0 {name=p4 lab=vin2}
C {opin.sym} -200 10 2 1 {name=p5 lab=ineg1}
C {opin.sym} 620 0 2 1 {name=p9 lab=ipos1}
C {lab_pin.sym} 660 -140 0 1 {name=p11 sig_type=std_logic lab=avdd}
C {lab_pin.sym} -290 -140 0 0 {name=p13 sig_type=std_logic lab=avdd}
C {lab_pin.sym} 170 50 1 0 {name=p14 sig_type=std_logic lab=avss}
