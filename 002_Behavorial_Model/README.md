# Behavorial Model of the Linkwitz-riley crossover
This Folder contains a mathematical representation, also called behaivoral model, of the Linkwitz-riley crossover (LRC). The behavorial model is implemented via python using jupyter notebook. The behaivoral model should give an idea about how the LRC works and which results can expected.

## Parameters of the behavorial model
The objective of this behavorial model is to represent a second order LRC. The LRC should have its cross at $f_\mathrm{c}=150 \\, \text{Hz}$. This frequency marks the border between the bass and the mids in a audio signal. This means that the cut-off frequency of the butterworth lowpass and the butterworth highpass also have to be $f_\mathrm{c}=150\\, \text{Hz}$. Both filters should be implemented using the Sallen-Key topologie, means both filters are second order filters and should have an expected attenuation of $40\\,\text{dB}$ per decade.


## Linkwitz-riley crossover
The behaivoral model is based on the transfer function the second order LRC. A second order LRC consits of a high- and lowpass Butterworth filter in parallel, which are implemented using a Sallen-Key topologie. This means, that two individuell transferfunction, one for the lowpass and one for the highpass, have to be implemented first.
The second order butterworth lowpass can be described as following:

$$
H(s) = \\frac{\\omega\_0^2}{s^2 + \\frac{\\omega\_\mathrm{0}^2}{Q\_\mathrm{0}} s + \\omega\_\mathrm{0}^2}
$$
And the second order butterworth Highpass:
$$
H(s) = \frac{s^2}{s^2 + \frac{\omega_\mathrm{0}^2}{Q_\mathrm{0}} s + \omega_\mathrm{0}^2}
$$
<div align="center">

![xxx](./pictures/Butterworth_Sallen_key_implementation.png)

Magnitude reponse of the second order Butterworth lowpass (blue) and the second order Butterworth highpass (orange). The magnitude reponse of both filters cross each other at their cut-off frequency $f\_\mathrm{c}=150\\,\mathrm{Hz}$ at $-6\\,\mathrm{dB}$.

</div>

The lowpass and highpass filter togehter operate as a frequency splitter, as shown in the upper plot. Both magnitude reponses cross each other at $f_\mathrm{c}=150\\,\mathrm{Hz}$ at $-6\\,\mathrm{dB}$. With this setup of the filters is it possible to split the bass from rest in an audio signal. The butterworth filters are designed in a way, when the two magnitude responses are added togehter, the corresponding magnitude response is at $0\,\text{dB}$, means a flat line. This flat line is wanted by the audio community, because this means, that the audio signal is not distorted in any way. In Order to achive the flat line, one transferfunction needs to be inverted, before they are added togehter. In this case the highpass transferfunction is inverted.

<div align="center">

![xxx](./pictures/cross_with_and_without_invertation.png)

Magnitude reponse of the cross. The blue line represents the cross without an invertation of the highpass transferfunction and the orange line with an invertation of the highpass transferfucntion. 

</div>
The plot above shows the magnitude response of the cross. When the highpass transferfunction is not inverted (blue), the corresponding magnitude response is similar to a notch filter. This is caused by the fact, that the ouput signals of low- and highpass are 180° out of phase to each other. This is the reason, why the highpass transferfunction is inverted or delayed by 180° before the two transferfunctions are added togehter. 









