# Real circuits
This folder contains all attemps to convert the ideal linkwitz riley crossover into a real circuit design. There multiple different versions of the crossover circuit in this folder. Each one is based on a slightly different OTA. All testbenches are in a hierarchical schematic.
## Contents
| Folder  | Content |  Description   |
|-------|-----|-------|
| 000_ota_sizing_scripts | Sizing scripts  | Sizing scripts from Prof. Pretl. They are used to properly size the OTA |
| 001_version_basic_ota_pretl | Basic OTA | Contains a linkwitz-riley crossover based on the basic OTA from Prof. Pretl |
| 002_version_no_enable | OTA without enable circuit | Contains a linkwitz-riley crossover with a modified basic OTA from Prof. Pretl. The enable circuit of the OTA was removed for the sake of simplicity.  |
| 003_version_second_output_stage | OTA with extra Amplifier| Contains a linkwitz riley crossover based on the basic OTA without the enable circuit. There is an extra output amplifier added to it in order to achive more gain |

## Technologie
All MOSFETs in this repository are based on the SG13G2 Technology from IHP Microelectronics. The SG13G2 technology is a 130nm BiCMOS Technologie. [IHP Microelectronic](https://github.com/IHP-GmbH/IHP-Open-PDK/blob/main/ihp-sg13g2/libs.doc/doc/SG13G2_os_process_spec.pdf)


## linkwitz-riley crossover with the basic OTA from Prof. Pretl
This version of the Linkwitz-riley crossover is based on a unmodified version of the basic OTA from Prof. Pretl. This version is the starting piont of the design for real circuit. This version is the first attempt to design a Linkwitz-Riley crossover based on a real OTA.

### Schematic and sizing of the used OTA
<div align="center">

![xxx](./pictures/basic_ota_pretl/basic_ota_pretl.png)

Schematic of the basic OTA desgin from Prof. Pretl.

</div>

The schematic above shows the basic OTA design from Prof. Pretls analog circuit design repository. [Analog-circuit-design Repository](https://github.com/iic-jku/analog-circuit-design)

This is one of the simplist design an OTA can have. Besides the MOSFETs for the OTA there are also multiple MOSFETs (M7 to M13) for an enable circuit. With this enable circuit it is possible to turn on and off the OTA, without shutting down $V_\mathrm{dd}$ or $V_\mathrm{ss}$. The OTA only needs the MOSFETs M1 to M6 in order to function. The PMOS M3 and M4 together are in a current mirror configuration, where the current trough M3 drives also M4. These two PMOS are used as a sort of drain Resistor for the upcoming differential input pair.
The diffrenital input pair consists of the NMOS M1 and M2. These two MOSFETs create the differential signal, based on the voltage differenz between the inputs $V_\mathrm{in,n}$ and $V_\mathrm{in,p}. The differential signal is created with the current flowing trough the current mirror M6 and M5. The current trough M6 is driving the current trough M5. This current is the biasing current and is $I_\mathrm{bias}=20\\,\mathrm{\mu A}$. This current is used to bias the differential input pair M1 and M2. Depending on which input voltage is higher, this NMOS becomes more conductive and therefore a larger current can flow through it. This creates the differential signal. The MOSFET M1 is the postive input terminal, where M2 is the inverting input terminal.

In order to size each MOSFET properly, the sizing script from Prof. Pretl is used. The sizing parameters for the enable circuit MOSFETS (M7 to M13) are not changed.
| MOSFET  | $gm/I_\mathrm{d}$| Length $L$| Width $W$| Comment   |
|-------|-----|-------|-------|-------|
| M1 | 12| $5\\,\mathrm{\mu m}$| $2\\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M2 | 12| $5\\,\mathrm{\mu m}$| $2\\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M1 and M2 have to be sized with the same $gm/I_\mathrm{d}$|
| M3 | 8| $5\\,\mathrm{\mu m}$| $3.5\\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M4 | 8| $5\\,\mathrm{\mu m}$| $3.5\\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M3 and M4 have to be sized with the same $gm/I_\mathrm{d}$|
| M5 | 8| $5\\,\mathrm{\mu m}$| $1.5\\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|
| M6 | 8| $5\\,\mathrm{\mu m}$| $10\\,\mathrm{\mu m}$| In order to create a symmetrical OTA, M5 and M6 have to be sized with the same $gm/I_\mathrm{d}$|

A smaller length than $L=5\\,\mathrm{\mu m}$ is possible due to the 130nm technology, but the design is oriented on the design from Prof. Pretl, in which a length of $L=5\\,\mathrm{\mu m}$ is used

### AC Analysis

### Transient Analysis

### Loop Gain and Phase Margin

### Testbench for Linkwitz-Riley Crossover


## linkwitz-riley crossover with the modified OTA

### Schematic and sizing of the used OTA


<div align="center">

![xxx](./pictures/no_enable_ota/no_enable_ota.png)

Schematic of the modified OTA. The enable circuit got removed.

</div>






### AC Analysis

### Transient Analysis

### Loop Gain and Phase Margin

### Testbench for Linkwitz-Riley Crossover


## linkwitz-riley crossover with an added amplifier at its output

### Schematic and sizing of the used OTA

### AC Analysis

### Transient Analysis

### Loop Gain and Phase Margin

### Testbench for Linkwitz-Riley Crossover



