#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 20 10:03:59 2026

@author: nils
"""

import numpy as np
import math


def format_3step(zahl, precision=3):
    if zahl == 0:
        return "0"
    exp = 3 * (math.floor(math.log10(abs(zahl)) / 3))
    skaliert = zahl / (10 ** exp)
    return f"{skaliert:.{precision}f}e{exp:+d}"

#Sizing the Lowpass

Q = 1/2
R = 50000
f0 = 150

w0 = 2 * np.pi * f0
m = 1
C = 1/(w0*R)
n = ((m**2+1)* Q)/m

r1_tp = m * R
r2_tp = R/m
c1_tp = C * n
c2_tp = C/n




#Sizing HP

c1_hp = r1_tp * 1e-12
c2_hp = r2_tp * 1e-12

r1_hp = c1_tp * 1e12
r2_hp = c2_tp * 1e12

print('R1_HP = ', format_3step(r1_hp))
if m != 1:
    print('R2_HP = ', format_3step(r2_hp),'\n')
    

print('C1_HP = ', format_3step(c1_hp))
if n != 1:
    print('C2_HP = ', format_3step(c2_hp))
    
print('\n')


print('R1_TP = ', format_3step(r1_tp))
if m != 1:
    print('R2_TP = ', format_3step(r2_tp),'\n')

print('C1_TP = ', format_3step(c1_tp),)
if n != 1:
    print('C2_TP = ', format_3step(c2_tp))