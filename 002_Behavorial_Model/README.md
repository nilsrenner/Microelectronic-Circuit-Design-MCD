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

![xxxx](./pictures/Butterworth Sallen key implementation.png)


These two filters togehter will operate as a frequency splitter. It is used to split an audiosignal into indviduell bands, for example bass and mids. The two Butterworth filters are designed in a way, that the magnitude response of both filtrs cross each other at $-6\,\text{dB}$. This means, that their cut-off frequency $f_\mathrm{c}$ has to be the same.
The butterworth filters are designed that way, because when the two magnitude responses are added togehter, the corresponding magnitude response is at $0\,\text{dB}$, means a flat line. This flat line is wanted by the audio community, because this means, that the audio signal is not distorted in any way.




