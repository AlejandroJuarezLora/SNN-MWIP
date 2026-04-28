v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 0 20 0 {lab=x1}
N -20 360 30 360 {lab=x2}
N -20 720 30 720 {lab=x3}
N 470 440 510 440 {lab=hL1}
N 470 370 470 440 {lab=hL1}
N 460 370 470 370 {lab=hL1}
N -20 1100 30 1100 {lab=x4}
N 460 490 460 550 {lab=#net1}
N 460 550 510 550 {lab=#net1}
N 490 490 510 490 {lab=#net2}
N 490 460 490 490 {lab=#net2}
N 460 460 490 460 {lab=#net2}
N 460 430 460 460 {lab=#net2}
C {layer/layer_input.sym} 40 100 0 0 {name=x1}
C {devices/gnd.sym} 70 120 0 0 {name=l8 lab=avss}
C {devices/vdd.sym} 70 -120 0 0 {name=l9 lab=avdd}
C {Synapse/stdp_8x4.sym} 70 430 0 0 {name=x7}
C {devices/gnd.sym} 570 610 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 370 670 0 0 {name=l12 lab=GND}
C {ipin.sym} -30 0 0 0 {name=p10 lab=x1}
C {iopin.sym} -170 -50 0 0 {name=p11 lab=avdd}
C {iopin.sym} -170 -10 0 0 {name=p12 lab=avss}
C {devices/vdd.sym} 570 370 0 0 {name=l4 lab=avdd}
C {iopin.sym} 650 490 0 0 {name=p31 lab=y1}
C {iopin.sym} 650 390 0 0 {name=p32 lab=R1}
C {/foss/designs/SNN-MWIP/layer/layer_output_rew.sym} 530 590 0 0 {name=x8}
C {devices/vdd.sym} 380 250 0 0 {name=l7 lab=avdd}
C {layer/layer_input.sym} 50 460 0 0 {name=x2}
C {devices/gnd.sym} 80 480 0 0 {name=l5 lab=avss}
C {devices/vdd.sym} 80 240 0 0 {name=l10 lab=avdd}
C {ipin.sym} -20 360 0 0 {name=p1 lab=x2}
C {layer/layer_input.sym} 50 820 0 0 {name=x3}
C {devices/gnd.sym} 80 840 0 0 {name=l15 lab=avss}
C {devices/vdd.sym} 80 600 0 0 {name=l17 lab=avdd}
C {ipin.sym} -20 720 0 0 {name=p2 lab=x3}
C {lab_pin.sym} 470 410 0 1 {name=p7 sig_type=std_logic lab=hL1}
C {layer/layer_input.sym} 50 1200 0 0 {name=x4}
C {devices/gnd.sym} 80 1220 0 0 {name=l13 lab=avss}
C {devices/vdd.sym} 80 980 0 0 {name=l14 lab=avdd}
C {ipin.sym} -20 1100 0 0 {name=p8 lab=x4}
C {iopin.sym} 650 420 0 0 {name=p13 lab=R2}
