# Real circuits
This subfolder of the repository contains the designs of a linkwitz-riley-crossover (LRC) based on real OTA. The objective in this folder is to convert the LRC, based on ideal opamps, into a LRC which is based on a real OTA design. There three different variants of the OTA design. 

## Contents
| Folder  | Content |  Description   |
|-------|-----|-------|
| 000_ota_sizing_scripts | Sizing scripts  | This subfolder contains the sizing scripts, which are used to size the MOSFETs inside each OTA design. The sizing scripts are from Prof. Pretl. For the OTA designs in this folder, only the sizing script for the basic OTA is used. It is slightly modified, in order to size all MOSFETs in the OTA designs.|
| 001_version_basic_ota_pretl | Basic OTA | This folder contains a LRC design, which is based on the basic OTA design from Prof. Pretl|
| 002_version_no_enable | OTA without enable circuit | This folder contains a LRC design based on a OTA desing, which has the enable circuit removed. This OTA design is the simpliest design for an OTA. |
| 003_version_second_output_stage | OTA with extra Amplifier| This LRC design is based on the OTA design without the enable cirucit, but with an extra amplifier stage at the output of the differential input pair. |

## Technologie
The MOSFETs used for the OTA designs are based on the SG13G2 technology from IHP Microelectronics. This technologie is BiCMOs technology and is a 130nm process.[IHP Microelectronic](https://github.com/IHP-GmbH/IHP-Open-PDK/blob/main/ihp-sg13g2/libs.doc/doc/SG13G2_os_process_spec.pdf)


## linkwitz-riley crossover with the basic OTA from Prof. Pretl
This version of the Linkwitz-riley crossover is based on a unmodified version of the basic OTA from Prof. Pretl. This version is the starting piont of the design for real circuit and the first attempt to design a Linkwitz-Riley crossover based on a real OTA.

### Schematic and sizing of the used OTA
<div align="center">

![xxx](./pictures/basic_ota_pretl/basic_ota_pretl.png)

Schematic of the basic OTA desgin from Prof. Pretl.

</div>

The schematic in the figure above show the circuit of the basic OTA from Prof. Pretl. This designs is provided in his analog circuit design repository.[Analog-circuit-design Repository](https://github.com/iic-jku/analog-circuit-design)\
This OTA is a very simple design. Besides the MOSFETs M7 to M13, which are needed for the enable circuit of this OTA design, the core OTA design consist only out of six MOSFETs. This is the bare minmum amount of MOSFETs needed for a functional OTA design.\
The MOSFET M1 to M6 together form the core OTA circuit. Each MOSFET pair has a particular function in the OTA.
* The PMOS M3 and M4 form a current Mirror. These two MOSFETs are used as a form of drain resistor for the upcoming differential input pair.
* The NMOS M1 and M2 form the differential input pair of the OTA. These two MOSFETs form the differential signal, based on the voltage differenz between the input voltages $V_\mathrm{in,n}$ and $V_\mathrm{in,p}$ at the input terminals of the OTA.
* The two NMOS M6 and M5 create together the bias network for the differential input pair. The bias current is needed to bias the differential input pair M1 and M2 and to create the differential signal. This OTA needs a bias current of $I_\mathrm{bias}=20\,\mathrm{\mu A}$.

The MOSFETs M7 to M13 together create the enable circuit. This circuit allows the user to shutoff the OTA, without turning off the voltages $V_\mathrm{dd}$ or $V_\mathrm{ss}$.


In order to size each MOSFET properly, the sizing script from Prof. Pretl is used. The sizing parameters for the enable circuit MOSFETS (M7 to M13) have not been changed.
| MOSFET  | $gm/I_\mathrm{d}$| Length $L$| Width $W$| Comment   |
|-------|-----|-------|-------|-------|
| M1 | 12| $5\,\mathrm{\mu m}$| $2\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M2 | 12| $5\,\mathrm{\mu m}$| $2\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M3 | 8| $5\,\mathrm{\mu m}$| $3.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M4 | 8| $5\,\mathrm{\mu m}$| $3.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M5 | 8| $5\,\mathrm{\mu m}$| $1.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|
| M6 | 8| $5\,\mathrm{\mu m}$| $10\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|

Due to the $130\,\mathrm{nm}$ a smaller length than $L=5\,\mathrm{\mu m}$ would have been possible. However the decision was made to orientate this design at the design from Prof. Pretl. In his OTA designs, a length $L=5\,\mathrm{\mu m}$ is used for all MOSFETs.

## Analysis of OTA

The designed OTA is analysed in frequency domain, time domain as well as an loopgain analysis. These three analysis are repeated with a temperature sweep.

### Transient analysis

The transient analysis shows, that the OTA needs approxiemtly 1.3 microseconds before entering the work mode. If an input is added before that time, the OTA does not respond as expected. This can be seen in the following figure.

![Response of OTA with input at 200 ns](pictures/second_output_stage/real_circuit_tran_analysis_200n.png)

If the input is added after the 1.3 microseconds the OTA responds as expected as can be seen in the following figure.

![Response of OTA with input at 2000 ns](pictures/second_output_stage/real_circuit_tran_analysis_2000n.png)

The OTA is on the slower side, as the slope in the second picture shows. After v_in is set to 0.8 V the output voltage rises until it hits 0.8 V. There are no oscillations happening.

### Temperature analysis

The analysis where repeated with a temperature sweep. Temperatures from -40 to 140 degrees Celsius where tested. 

#### AC analysis

The AC response shows a sensitivity to temperature. The colder the temperatures get, the higher the frequency cutoff is. The overoscillation of the curve gets smaller as well. 

![AC Response of OTA](pictures/temperature_analysis/real_circuit_ac_analysis_temp.png)

#### Loopgain Analysis

The loopgain analysis shows only a small sensitivity to temperature. Around 1 to 10 MHz some variations can be seen. These do not affect the calculated gain margin and phase margin enough to matter much.

![Phase and Gain Response of OTA](pictures/temperature_analysis/real_circuit_loopgain_analysis_db_temp.png)

#### Transient analysis

The transient analysis shows a sensitivity to temperature that lessens after the OTA enters work mode.
Then only variatons can be seen at the differenting speed in which the OTA reaches 0 V.

![Response of OTA with input at 2000 ns](pictures/temperature_analysis/real_circuit_tran_analysis_2000n_temp.png)

This is true also for repeating pulses as can be seen in the following figure.
Here another small difference can be seen, the surges after the input pulse is over are higher the colder the temperatures get.

![Response of OTA with input at 2000 ns](pictures/temperature_analysis/real_circuit_tran_analysis_2000n_temp_two_cycles.png)

## linkwitz-riley crossover with the modified OTA




<div align="center">

![xxx](./pictures/no_enable_ota/no_enable_ota.png)

Schematic of the modified OTA. The enable circuit got removed.

</div>

The OTA in the schematic above marks the second OTA design. This OTA design is based on the design of the basic OTA from Prof. Pretl, but has some changes to it. In comparison to the design from Prof. Pretl, the enable circuit got removed. Only the MOSFETs, which are necessesary for OTA to function, are left in this OTA design.
The objectiv behind this design is to create an OTA, which is easy to overlock and doesn't have any unnecessesary/complicated circuits in it.
The functionality of each MOSFET is same as before.

Because the design is a simplier version of the basic OTA design from Prof. Pretl, his sizing script can be used again. 

| MOSFET  | $gm/I_\mathrm{d}$| Length $L$| Width $W$| Comment   |
|-------|-----|-------|-------|-------|
| M1 | 12| $5\,\mathrm{\mu m}$| $2\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M2 | 12| $5\,\mathrm{\mu m}$| $2\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M3 | 8| $5\,\mathrm{\mu m}$| $3.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M4 | 8| $5\,\mathrm{\mu m}$| $3.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M5 | 8| $5\,\mathrm{\mu m}$| $1.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|
| M6 | 8| $5\,\mathrm{\mu m}$| $10\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|

Because there were no changes made to the requierments of the OTA, the sizing of each MOSFET stays the same as before.



## linkwitz-riley crossover with an added amplifier at its output
This Version of the linkwitz-riley-crossover is based on the final OTA design.

<div align="center">

![xxx](./pictures/second_output_stage/second_outpur_stage_ota.png)

Schematic of the OTA with a second common source amplifier at the output of the differenital input pair.

</div>
The figure above shows the final design of the OTA. The desgn is similiar to the OTA design with the enable circuit removed. The core design of the OTA stays the same.

* M3/M4 are PMOS, which create the upper current mirror.
* M1/M2 are NMOS and create the differential input pair.
* M5/M6 are NMOS and create the bias network for the differential inputpair.

New in comparison to the old design are the MOSFETs M7 and M8 and furthermore the resistor R1 and the capacitor C2.\
The MOSFETs together create the second output stage. The PMOS M7 is the amplifier and the NMOS M8 is used to bias the amplifier. The amplifier stage needs only half of the bias current as needed for the differential pair. This due to fact, that only one, instead of two, common source amplifier is used in the second stage. That is also the reason for the fact, that only $I_\mathrm{bias,output}=\frac{I_\mathrm{bias,diff}}{2}=10\,\mathrm{\mu A}$ is needed to bias the output amplifier stage. The overall bias current needed for this OTA design therefore increase to $I_\mathrm{bias}=30\,\mathrm{\mu A}$.\
The reistor $R_\mathrm{1}$ and the capacitor $C_\mathrm{2}$ are there to stabilze the OTA. Because of the multiple stage amplifier design, multiple poles are present. These poles cause ripples in the magnitude response of the OTA and significantly the phase margin of the OTA. In order to improve the magnitude response and the phase margin of the OTA, a feedback capacitor can be added between the output of the differential input pair and the outpur of the second amplifier. This is knwon as miller compensation. The feedback capacitor will create a dominant pole in the lower frequency domain and will push the other poles into the higher frequency domain, out of the operation are of this OTA. This method is called pole splitting and is one of the more common methods, in order to stabilize the OTA. These method has two major side effects:
* It reduces the bandwith and therefore also the gain-bandwidth-producht (GBW)
* The feedback capacitor introduces a zero, which provides gain instead of attenuation.
 
This zero will create a spike in the magnitude response of the OTA, which can lead to a potential unstable system again. The zero is located inside the right side of the s-plane. With the help of a resistor in series to the feedback capacitor, the location of the zero can be altered. The zero can be even pushed into the left side of the s-plane. This will dampend the spike and stabilize the OTA again.\
In order to size the OTA, the sizing script form Prof. Pretl has to be modified. The calculation capability for the output amplifier has to be added. With this calculation added, the OTA can be sized.
  
| MOSFET  | $gm/I_\mathrm{d}$| Length $L$| Width $W$| Comment   |
|-------|-----|-------|-------|-------|
| M1 | 12| $5\,\mathrm{\mu m}$| $2\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M2 | 12| $5\,\mathrm{\mu m}$| $2\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M3 | 8| $5\,\mathrm{\mu m}$| $3.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M4 | 8| $5\,\mathrm{\mu m}$| $3.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M5 | 8| $5\,\mathrm{\mu m}$| $1.5\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|
| M6 | 8| $5\,\mathrm{\mu m}$| $10\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|
| M7 | 12| $5\,\mathrm{\mu m}$| $8.5\,\mathrm{\mu m}$| The PMOS of the output amplifier is sized with the $gm/I_\mathrm{d}$, as for the diffrenital input pair M1 and M2.
| M8 | 8| $5\,\mathrm{\mu m}$| $0.75\,\mathrm{\mu m}$| This MOSFET needs to be half the width of M5, because only half of the bias current is needed to bias the output amplifier M7|