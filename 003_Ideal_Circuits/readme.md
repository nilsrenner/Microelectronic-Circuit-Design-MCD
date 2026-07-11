# Ideal circuit

The ideal circuit uses voltage controlled voltage sources (VCVS) as ideal operational amplifiers.
The following picture shows the setup.

![vcvs vs opamp](pictures/opamp_vs_vcvs.png)

The resulting schematic is shown in the next picture. As can be seen, the lowpass and highpass as well as the inverter and adder use a vcvs as their op-amp.

![Resulting schematic](pictures/linkwitz_riley_cross_vsvc.png)

The resulting waveforms can be seen in the following figure.

![Resulting waveforms of ideal circuit](pictures/resulting_waveforms.png)

The picture shows the lowpass in red, the highpass in blue and the overall output in orange. As expected the cross of high- and lowpass is at -6 dB and the output has a flat response.