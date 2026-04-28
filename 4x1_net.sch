v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 0 20 0 {lab=x1}
N -20 360 30 360 {lab=x2}
N -20 750 30 750 {lab=x3}
N -20 1130 30 1130 {lab=x4}
N 200 280 200 430 {lab=#net1}
N 130 280 200 280 {lab=#net1}
N 130 300 190 300 {lab=#net2}
N 190 300 190 440 {lab=#net2}
N 190 440 200 440 {lab=#net2}
N 130 1070 180 1070 {lab=#net3}
N 130 670 180 670 {lab=#net4}
N 180 450 200 450 {lab=#net4}
N 130 690 190 690 {lab=#net5}
N 190 460 190 660 {lab=#net5}
N 190 460 200 460 {lab=#net5}
N 130 1050 200 1050 {lab=#net6}
N 200 470 200 1020 {lab=#net6}
N 200 470 230 470 {lab=#net6}
N 200 460 230 460 {lab=#net5}
N 200 450 230 450 {lab=#net4}
N 200 440 230 440 {lab=#net2}
N 200 430 230 430 {lab=#net1}
N 210 480 210 1040 {lab=#net3}
N 210 480 230 480 {lab=#net3}
N 120 -60 210 -60 {lab=#net7}
N 210 -60 210 420 {lab=#net7}
N 210 420 230 420 {lab=#net7}
N 120 -80 220 -80 {lab=#net8}
N 220 -80 220 410 {lab=#net8}
N 220 410 230 410 {lab=#net8}
N 190 660 190 690 {lab=#net5}
N 200 1020 200 1050 {lab=#net6}
N 180 1070 210 1070 {lab=#net3}
N 210 1040 210 1070 {lab=#net3}
N 170 570 230 570 {lab=#net9}
N 170 50 170 570 {lab=#net9}
N 120 50 170 50 {lab=#net9}
N 120 70 160 70 {lab=#net10}
N 160 70 160 580 {lab=#net10}
N 160 580 230 580 {lab=#net10}
N 150 590 230 590 {lab=#net11}
N 150 410 150 590 {lab=#net11}
N 130 410 150 410 {lab=#net11}
N 130 430 140 430 {lab=#net12}
N 140 430 140 600 {lab=#net12}
N 140 600 230 600 {lab=#net12}
N 140 610 230 610 {lab=#net13}
N 140 610 140 800 {lab=#net13}
N 130 800 140 800 {lab=#net13}
N 130 820 150 820 {lab=#net14}
N 150 620 150 820 {lab=#net14}
N 150 620 230 620 {lab=#net14}
N 160 630 230 630 {lab=#net15}
N 160 630 160 1180 {lab=#net15}
N 130 1180 160 1180 {lab=#net15}
N 130 1200 170 1200 {lab=#net16}
N 170 640 170 1200 {lab=#net16}
N 180 450 180 670 {lab=#net4}
N 170 640 230 640 {lab=#net16}
N 400 630 420 630 {lab=#net17}
N 420 560 420 630 {lab=#net17}
N 420 560 470 560 {lab=#net17}
N 430 570 470 570 {lab=#net18}
N 430 570 430 640 {lab=#net18}
N 400 640 430 640 {lab=#net18}
N 400 650 440 650 {lab=#net19}
N 440 580 440 650 {lab=#net19}
N 440 580 470 580 {lab=#net19}
N 400 660 450 660 {lab=#net20}
N 450 590 450 660 {lab=#net20}
N 450 590 470 590 {lab=#net20}
N 400 530 440 530 {lab=#net21}
N 440 520 440 530 {lab=#net21}
N 440 520 470 520 {lab=#net21}
N 430 510 470 510 {lab=#net22}
N 430 510 430 520 {lab=#net22}
N 400 520 430 520 {lab=#net22}
N 400 510 420 510 {lab=#net23}
N 420 500 420 510 {lab=#net23}
N 420 500 470 500 {lab=#net23}
N 410 490 470 490 {lab=#net24}
N 410 490 410 500 {lab=#net24}
N 400 500 410 500 {lab=#net24}
N 400 450 470 450 {lab=#net25}
N 400 440 470 440 {lab=#net26}
N 400 430 470 430 {lab=#net27}
N 400 420 470 420 {lab=#net28}
C {layer/layer_input.sym} 40 100 0 0 {name=x1}
C {devices/gnd.sym} 70 120 0 0 {name=l8 lab=avss}
C {devices/vdd.sym} 70 -120 0 0 {name=l9 lab=avdd}
C {Synapse/stdp_8x4.sym} 10 510 0 0 {name=x7}
C {devices/gnd.sym} 530 620 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 310 750 0 0 {name=l12 lab=GND}
C {ipin.sym} -30 0 0 0 {name=p10 lab=x1}
C {iopin.sym} -170 -50 0 0 {name=p11 lab=avdd}
C {iopin.sym} -170 -10 0 0 {name=p12 lab=avss}
C {devices/vdd.sym} 530 380 0 0 {name=l4 lab=avdd}
C {iopin.sym} 610 500 0 0 {name=p31 lab=y1}
C {iopin.sym} 610 400 0 0 {name=p32 lab=R1}
C {/foss/designs/SNN-MWIP/layer/layer_output_rew.sym} 490 600 0 0 {name=x8}
C {devices/vdd.sym} 320 330 0 0 {name=l7 lab=avdd}
C {layer/layer_input.sym} 50 460 0 0 {name=x2}
C {devices/gnd.sym} 80 480 0 0 {name=l5 lab=avss}
C {devices/vdd.sym} 80 240 0 0 {name=l10 lab=avdd}
C {ipin.sym} -20 360 0 0 {name=p1 lab=x2}
C {layer/layer_input.sym} 50 850 0 0 {name=x3}
C {devices/gnd.sym} 80 870 0 0 {name=l15 lab=avss}
C {devices/vdd.sym} 80 630 0 0 {name=l17 lab=avdd}
C {ipin.sym} -20 750 0 0 {name=p2 lab=x3}
C {layer/layer_input.sym} 50 1230 0 0 {name=x4}
C {devices/gnd.sym} 80 1250 0 0 {name=l13 lab=avss}
C {devices/vdd.sym} 80 1010 0 0 {name=l14 lab=avdd}
C {ipin.sym} -20 1130 0 0 {name=p8 lab=x4}
C {iopin.sym} 610 430 0 0 {name=p13 lab=R2}
