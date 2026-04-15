v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -50 0 -40 {lab=vout}
N -40 -80 -40 -10 {lab=vin}
N -0 -80 80 -80 {lab=avdd}
N 80 -120 80 -80 {lab=avdd}
N 0 -120 80 -120 {lab=avdd}
N -0 -120 0 -110 {lab=avdd}
N -0 -130 0 -120 {lab=avdd}
N -0 -10 80 -10 {lab=avss}
N 80 -10 80 20 {lab=avss}
N 0 20 80 20 {lab=avss}
N 0 20 -0 40 {lab=avss}
N -80 -40 -40 -40 {lab=vin}
N -0 -40 40 -40 {lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} -20 -10 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -80 0 0 {name=M2
W=1
L=0.15
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -80 -40 0 0 {name=p1 lab=vin}
C {opin.sym} 40 -40 0 0 {name=p2 lab=vout}
C {iopin.sym} 0 -130 0 0 {name=p3 lab=avdd}
C {iopin.sym} 0 40 0 0 {name=p4 lab=avss}
