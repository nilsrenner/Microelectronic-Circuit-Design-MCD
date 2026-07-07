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
The lowpass and highpass filter operate as a frequency splitter, as shown in the upper plot. Both magnitude reponses cross each other at $f\_\mathrm{c}=150\\,\mathrm{Hz}$ at $-6\\,\mathrm{dB}$. With this setup of the filters is it possible to split the bass from rest in audio signal.
In Order to achieve the flat line cross, the output signal of the filters must be added together. This means the transferfunctions of both filters must be added togehter, but there is a problem. Like in the real LRC, both output signals are $180\\degree$ out of phase to each other. Therefore, one output signal has to be inverted or delayed by $180\\degree$ or the sum of both filter outputs would be a notch filter.




These two filters togehter will operate as a frequency splitter. It is used to split an audiosignal into indviduell bands, for example bass and mids. The two Butterworth filters are designed in a way, that the magnitude response of both filtrs cross each other at $-6\,\text{dB}$. This means, that their cut-off frequency $f_\mathrm{c}$ has to be the same.
The butterworth filters are designed that way, because when the two magnitude responses are added togehter, the corresponding magnitude response is at $0\,\text{dB}$, means a flat line. This flat line is wanted by the audio community, because this means, that the audio signal is not distorted in any way.




