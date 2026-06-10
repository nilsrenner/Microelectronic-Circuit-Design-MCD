#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 20 10:03:59 2026

@author: nils
"""

import numpy as np

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


#%% Dimentions of the HP Components

c1_hp = r1_tp * 1e-12
c2_hp = r2_tp * 1e-12

r1_hp = c1_tp * 1e12
r2_hp = c2_tp * 1e12