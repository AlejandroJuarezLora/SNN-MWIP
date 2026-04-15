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
N 650 410 680 410 {lab=hK1}
N 680 520 760 520 {lab=hK1}
N 680 410 680 520 {lab=hK1}
N 930 580 980 580 {lab=#net1}
N 940 530 980 530 {lab=hL1}
N 940 460 940 530 {lab=hL1}
N 930 460 940 460 {lab=hL1}
N 120 0 150 0 {lab=hJ1}
N 130 360 190 360 {lab=hJ2}
N 130 720 170 720 {lab=hJ3}
N 410 550 480 550 {lab=#net2}
N 680 250 680 410 {lab=hK1}
N 440 250 680 250 {lab=hK1}
N -20 1100 30 1100 {lab=x4}
N 130 1100 170 1100 {lab=hJ4}
N 410 440 440 440 {lab=hK1}
N 440 250 440 440 {lab=hK1}
N 240 0 240 440 {lab=hJ1}
N 150 0 240 0 {lab=hJ1}
N 190 360 190 520 {lab=hJ2}
N 190 520 240 520 {lab=hJ2}
N 190 590 240 590 {lab=hJ3}
N 190 590 190 720 {lab=hJ3}
N 170 720 190 720 {lab=hJ3}
N 240 690 240 1100 {lab=hJ4}
N 170 1100 240 1100 {lab=hJ4}
C {layer/layer_input.sym} 40 100 0 0 {name=x1}
C {devices/gnd.sym} 70 120 0 0 {name=l8 lab=avss}
C {devices/vdd.sym} 70 -120 0 0 {name=l9 lab=avdd}
C {layer/layer_hidden.sym} 310 550 0 0 {name=x4}
C {Synapse/stdp_8x4.sym} 540 520 0 0 {name=x6}
C {devices/gnd.sym} 1040 700 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 840 760 0 0 {name=l12 lab=GND}
C {ipin.sym} -30 0 0 0 {name=p10 lab=x1}
C {iopin.sym} -170 -50 0 0 {name=p11 lab=avdd}
C {iopin.sym} -170 -10 0 0 {name=p12 lab=avss}
C {devices/vdd.sym} 300 380 0 0 {name=l1 lab=avdd}
C {devices/vdd.sym} 560 350 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 1040 460 0 0 {name=l4 lab=avdd}
C {devices/gnd.sym} 560 770 0 0 {name=l6 lab=avss}
C {iopin.sym} 1120 580 0 0 {name=p31 lab=y1}
C {iopin.sym} 1120 480 0 0 {name=p32 lab=R1}
C {/foss/designs/SNN-MWIP/layer/layer_output_rew.sym} 1000 680 0 0 {name=x2}
C {devices/vdd.sym} 850 340 0 0 {name=l7 lab=avdd}
C {layer/layer_input.sym} 50 460 0 0 {name=x3}
C {devices/gnd.sym} 80 480 0 0 {name=l5 lab=avss}
C {devices/vdd.sym} 80 240 0 0 {name=l10 lab=avdd}
C {ipin.sym} -20 360 0 0 {name=p1 lab=x2}
C {layer/layer_input.sym} 50 820 0 0 {name=x8}
C {devices/gnd.sym} 80 840 0 0 {name=l15 lab=avss}
C {devices/vdd.sym} 80 600 0 0 {name=l17 lab=avdd}
C {ipin.sym} -20 720 0 0 {name=p2 lab=x3}
C {devices/gnd.sym} 290 790 0 0 {name=l2 lab=avss}
C {lab_pin.sym} 150 0 3 1 {name=p3 sig_type=std_logic lab=hJ1}
C {lab_pin.sym} 150 360 3 1 {name=p4 sig_type=std_logic lab=hJ2}
C {lab_pin.sym} 150 720 1 1 {name=p5 sig_type=std_logic lab=hJ3}
C {lab_pin.sym} 680 460 0 1 {name=p6 sig_type=std_logic lab=hK1}
C {lab_pin.sym} 940 500 0 1 {name=p7 sig_type=std_logic lab=hL1}
C {layer/layer_input.sym} 50 1200 0 0 {name=x7}
C {devices/gnd.sym} 80 1220 0 0 {name=l13 lab=avss}
C {devices/vdd.sym} 80 980 0 0 {name=l14 lab=avdd}
C {ipin.sym} -20 1100 0 0 {name=p8 lab=x4}
C {/foss/designs/SNN-MWIP/Synapse/no_stdp_4x4x8.sym} 260 590 0 0 {name=x9}
C {lab_pin.sym} 190 1100 1 1 {name=p9 sig_type=std_logic lab=hJ4}
C {iopin.sym} 1120 510 0 0 {name=p13 lab=R2}
C {code_shown.sym} 647.5 72.5 0 0 {name=s1 only_toplevel=false value="
.save hJ1 hJ2 hJ3 hJ4
"}
